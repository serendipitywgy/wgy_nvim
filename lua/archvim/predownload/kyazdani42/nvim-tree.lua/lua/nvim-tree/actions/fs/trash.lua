local lib = require "nvim-tree.lib"
local notify = require "nvim-tree.notify"

local M = {
  config = {},
}

local utils = require "nvim-tree.utils"
local events = require "nvim-tree.events"

local function clear_buffer(absolute_path)
  local bufs = vim.fn.getbufinfo { bufloaded = 1, buflisted = 1 }
  for _, buf in pairs(bufs) do
    if buf.name == absolute_path then
      if buf.hidden == 0 and #bufs > 1 then
        local winnr = vim.api.nvim_get_current_win()
        vim.api.nvim_set_current_win(buf.windows[1])
        vim.cmd ":bn"
        vim.api.nvim_set_current_win(winnr)
      end
      vim.api.nvim_buf_delete(buf.bufnr, {})
      return
    end
  end
end

function M.fn(node)
  if node.name == ".." then
    return
  end

  -- configs
  if utils.is_unix or utils.is_windows then
    if M.config.trash.cmd == nil then
      M.config.trash.cmd = "trash"
    end
    if M.config.ui.confirm.trash == nil then
      M.config.ui.confirm.trash = true
    end
  else
    notify.warn "Trash is currently a UNIX only feature!"
    return
  end

  local binary = M.config.trash.cmd:gsub(" .*$", "")
  if vim.fn.executable(binary) == 0 then
    notify.warn(binary .. " is not executable.")
    return
  end

  local err_msg = ""
  local function on_stderr(_, data)
    err_msg = err_msg .. (data and table.concat(data, " "))
  end

  -- trashes a path (file or folder)
  local function trash_path(on_exit)
    local need_sync_wait = utils.is_windows
    local job = vim.fn.jobstart(M.config.trash.cmd .. ' "' .. node.absolute_path .. '"', {
      detach = not need_sync_wait,
      on_exit = on_exit,
      on_stderr = on_stderr,
    })
    if need_sync_wait then
      vim.fn.jobwait { job }
    end
  end

  local function do_trash()
    if node.nodes ~= nil and not node.link_to then
      trash_path(function(_, rc)
        if rc ~= 0 then
          notify.warn("trash failed: " .. err_msg .. "; please see :help nvim-tree.trash")
          return
        end
        events._dispatch_folder_removed(node.absolute_path)
        if not M.config.filesystem_watchers.enable then
          require("nvim-tree.actions.reloaders.reloaders").reload_explorer()
        end
      end)
    else
      events._dispatch_will_remove_file(node.absolute_path)
      trash_path(function(_, rc)
        if rc ~= 0 then
          notify.warn("trash failed: " .. err_msg .. "; please see :help nvim-tree.trash")
          return
        end
        events._dispatch_file_removed(node.absolute_path)
        clear_buffer(node.absolute_path)
        if not M.config.filesystem_watchers.enable then
          require("nvim-tree.actions.reloaders.reloaders").reload_explorer()
        end
      end)
    end
  end

  if M.config.ui.confirm.trash then
    local prompt_select = "Trash " .. node.name .. " ?"
    local prompt_input = prompt_select .. " y/n: "
    lib.prompt(prompt_input, prompt_select, { "y", "n" }, { "Yes", "No" }, function(item_short)
      utils.clear_prompt()
      if item_short == "y" then
        do_trash()
      end
    end)
  else
    do_trash()
  end
end

function M.setup(opts)
  M.config.ui = opts.ui
  M.config.trash = opts.trash
  M.config.filesystem_watchers = opts.filesystem_watchers
end

return M
