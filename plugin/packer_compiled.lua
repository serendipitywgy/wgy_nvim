-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/aoi/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/aoi/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/aoi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/aoi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/aoi/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["bufdelete.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/bufdelete.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/famiu/bufdelete.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30archvim/config/bufferline\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/bufferline.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/akinsho/bufferline.nvim"
  },
  ["cmake-tools.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31archvim/config/cmake-tools\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/cmake-tools.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/Civitasv/cmake-tools.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/cmp-calc",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/hrsh7th/cmp-path"
  },
  ["cmp-spell"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/cmp-spell",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/f3fora/cmp-spell"
  },
  ["cmp-under-comparator"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/cmp-under-comparator",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/lukas-reineke/cmp-under-comparator"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/diffview.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/sindrets/diffview.nvim"
  },
  fzf = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/fzf",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/junegunn/fzf"
  },
  ["fzf-lua"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/fzf-lua",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/ibhagwan/fzf-lua"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28archvim/config/gitsigns\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/lewis6991/gitsigns.nvim"
  },
  ["gruvbox.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/gruvbox.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/ellisonleao/gruvbox.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23archvim/config/hop\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/phaazon/hop.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27archvim/config/lspsaga\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/tami5/lspsaga.nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/lualine-lsp-progress",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/archibate/lualine-lsp-progress"
  },
  ["lualine-time"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/lualine-time",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/archibate/lualine-time"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27archvim/config/lualine\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-lualine/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/rktjmp/lush.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0-let g:mkdp_browser = '/usr/bin/chromium'\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/iamcco/markdown-preview.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/williamboman/mason-lspconfig.nvim"
  },
  ["mason-registry"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/mason-registry",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/mason-org/mason-registry"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25archvim/config/mason\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/williamboman/mason.nvim"
  },
  ["mathjax-support-for-mkdp"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/mathjax-support-for-mkdp",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/iamcco/mathjax-support-for-mkdp"
  },
  ["md-img-paste.vim"] = {
    config = { "\27LJ\2\n“\1\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0≤\1let g:mdip_imgdir = 'img' \" save image in ./img\nlet g:mdip_imgname = 'image'\nautocmd FileType markdown nnoremap <silent> gsp :call mdip#MarkdownClipboardImage()<CR>\n        \bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/opt/md-img-paste.vim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/ferrine/md-img-paste.vim"
  },
  neoformat = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29archvim/config/neoformat\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/neoformat",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/sbdchd/neoformat"
  },
  neogit = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vneogit\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/neogit",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/NeogitOrg/neogit"
  },
  ["neovim-session-manager"] = {
    config = { "\27LJ\2\nE\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0*archvim/config/neovim-session-manager\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/neovim-session-manager",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/Shatur/neovim-session-manager"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/shaunsingh/nord.nvim"
  },
  ["nui.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nui.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/MunifTanjim/nui.nvim"
  },
  ["nvim-bqf"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bbqf\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/opt/nvim-bqf",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/kevinhwang91/nvim-bqf"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28archvim/config/nvim-cmp\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/hrsh7th/nvim-cmp"
  },
  ["nvim-comment"] = {
    config = { "\27LJ\2\n;\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0 archvim/config/nvim-comment\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-comment",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/terrortylor/nvim-comment"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28archvim/config/nvim-dap\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-dap-virtual-text",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lastplace"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/ethanholz/nvim-lastplace"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29archvim/config/lspconfig\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26archvim/config/notify\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/rcarriga/nvim-notify"
  },
  ["nvim-spectre"] = {
    config = { "\27LJ\2\n;\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0 archvim/config/nvim-spectre\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-spectre",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-pack/nvim-spectre"
  },
  ["nvim-surround"] = {
    config = { "\27LJ\2\n<\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0!archvim/config/nvim-surround\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-surround",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/kylechui/nvim-surround"
  },
  ["nvim-tree.lua"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29archvim/config/nvim-tree\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treehopper"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-treehopper",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/mfussenegger/nvim-treehopper"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n>\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0#archvim/config/nvim-treesitter\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-treesitter/nvim-treesitter-context"
  },
  ["nvim-treesitter-cpp-tools"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-treesitter-cpp-tools",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/Badhi/nvim-treesitter-cpp-tools"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-ts-autotag"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/windwp/nvim-ts-autotag"
  },
  ["nvim-ts-context-commentstring"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-ts-context-commentstring",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/JoosepAlviste/nvim-ts-context-commentstring"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-tree/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-lua/popup.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/BurntSushi/ripgrep"
  },
  ["sqlite.lua"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/sqlite.lua",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/tami5/sqlite.lua"
  },
  tabular = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/tabular",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/godlygeek/tabular"
  },
  ["telescope-changes.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/telescope-changes.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/LinArcX/telescope-changes.nvim"
  },
  ["telescope-frecency.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/telescope-frecency.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-telescope/telescope-frecency.nvim"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-github.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/telescope-github.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-telescope/telescope-github.nvim"
  },
  ["telescope-ui-select.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/telescope-ui-select.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-telescope/telescope-ui-select.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29archvim/config/telescope\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/todo-comments.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/folke/todo-comments.nvim"
  },
  ["toggleterm.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30archvim/config/toggleterm\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/toggleterm.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/akinsho/toggleterm.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/folke/trouble.nvim"
  },
  ["twilight.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28archvim/config/twilight\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/twilight.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/folke/twilight.nvim"
  },
  ["vim-glsl"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/vim-glsl",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/tikhomirov/vim-glsl"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0 let g:vim_markdown_math = 1\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/opt/vim-markdown",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/plasticboy/vim-markdown"
  },
  ["vim-markdown-toc"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/vim-markdown-toc",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/mzlogin/vim-markdown-toc"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/vim-matchup",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/andymass/vim-matchup"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29archvim/config/which-key\frequire\0" },
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/folke/which-key.nvim"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/folke/zen-mode.nvim"
  },
  ["zephyr-nvim"] = {
    loaded = true,
    path = "/home/aoi/.local/share/nvim/site/pack/packer/start/zephyr-nvim",
    url = "/home/aoi/.config/nvim/lua/archvim/predownload/glepnir/zephyr-nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Setup for: markdown-preview.nvim
time([[Setup for markdown-preview.nvim]], true)
try_loadstring("\27LJ\2\n=\0\0\2\0\4\0\0056\0\0\0009\0\1\0005\1\3\0=\1\2\0K\0\1\0\1\2\0\0\rmarkdown\19mkdp_filetypes\6g\bvim\0", "setup", "markdown-preview.nvim")
time([[Setup for markdown-preview.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29archvim/config/telescope\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29archvim/config/lspconfig\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: toggleterm.nvim
time([[Config for toggleterm.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30archvim/config/toggleterm\frequire\0", "config", "toggleterm.nvim")
time([[Config for toggleterm.nvim]], false)
-- Config for: nvim-spectre
time([[Config for nvim-spectre]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0 archvim/config/nvim-spectre\frequire\0", "config", "nvim-spectre")
time([[Config for nvim-spectre]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-lastplace
time([[Config for nvim-lastplace]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-lastplace\frequire\0", "config", "nvim-lastplace")
time([[Config for nvim-lastplace]], false)
-- Config for: neovim-session-manager
time([[Config for neovim-session-manager]], true)
try_loadstring("\27LJ\2\nE\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0*archvim/config/neovim-session-manager\frequire\0", "config", "neovim-session-manager")
time([[Config for neovim-session-manager]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29archvim/config/nvim-tree\frequire\0", "config", "nvim-tree.lua")
time([[Config for nvim-tree.lua]], false)
-- Config for: twilight.nvim
time([[Config for twilight.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28archvim/config/twilight\frequire\0", "config", "twilight.nvim")
time([[Config for twilight.nvim]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27archvim/config/lspsaga\frequire\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27archvim/config/lualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n>\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0#archvim/config/nvim-treesitter\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: bufferline.nvim
time([[Config for bufferline.nvim]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30archvim/config/bufferline\frequire\0", "config", "bufferline.nvim")
time([[Config for bufferline.nvim]], false)
-- Config for: neogit
time([[Config for neogit]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vneogit\frequire\0", "config", "neogit")
time([[Config for neogit]], false)
-- Config for: neoformat
time([[Config for neoformat]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29archvim/config/neoformat\frequire\0", "config", "neoformat")
time([[Config for neoformat]], false)
-- Config for: nvim-comment
time([[Config for nvim-comment]], true)
try_loadstring("\27LJ\2\n;\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0 archvim/config/nvim-comment\frequire\0", "config", "nvim-comment")
time([[Config for nvim-comment]], false)
-- Config for: nvim-surround
time([[Config for nvim-surround]], true)
try_loadstring("\27LJ\2\n<\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0!archvim/config/nvim-surround\frequire\0", "config", "nvim-surround")
time([[Config for nvim-surround]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28archvim/config/gitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: cmake-tools.nvim
time([[Config for cmake-tools.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31archvim/config/cmake-tools\frequire\0", "config", "cmake-tools.nvim")
time([[Config for cmake-tools.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n5\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\26archvim/config/notify\frequire\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: nvim-dap-ui
time([[Config for nvim-dap-ui]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28archvim/config/nvim-dap\frequire\0", "config", "nvim-dap-ui")
time([[Config for nvim-dap-ui]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\28archvim/config/nvim-cmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29archvim/config/which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23archvim/config/hop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n4\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\25archvim/config/mason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown', 'md-img-paste.vim', 'markdown-preview.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType qf ++once lua require("packer.load")({'nvim-bqf'}, { ft = "qf" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /home/aoi/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /home/aoi/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /home/aoi/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
