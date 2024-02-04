local api = vim.api

local extmark = require('bqf.preview.extmark')
local FloatWin = require('bqf.preview.floatwin')

--- Singleton
---@class BqfPreviewScrollBar : BqfPreviewFloatWin
---@field winid number
---@field bufnr number
---@field bufferName string
local ScrollBar = setmetatable({}, {__index = FloatWin})

function ScrollBar:build()
    local config = FloatWin.getConfig()
    assert(config, 'Need build floating window component first!')
    local row, col, height = config.row, config.col, config.height
    local anchor, zindex = config.anchor, config.zindex
    if anchor == 'SW' then
        -- below
        row = (self:borderHasBottomLine() and row - 1 or row) - height
    else
        row = self:borderHasUpLine() and row + 1 or row
    end
    if anchor == 'NE' then
        -- right
        col = -2
    else
        col = col + config.width
        col = self:borderHasLeftLine() and col + 1 or col
    end
    return vim.tbl_extend('force', config, {
        anchor = 'NW',
        width = 1,
        row = row,
        col = col,
        style = 'minimal',
        noautocmd = true,
        focusable = false,
        border = 'none',
        zindex = zindex + 2
    })
end

function ScrollBar:update()
    if not self.showScrollBar then
        self.winid = nil
        return
    end
    local barSize = math.ceil(self.height * self.height / self.lineCount)
    local barPos = math.ceil(self.height * self.topline / self.lineCount)
    if barSize == self.height and barSize < self.lineCount then
        barSize = self.height - 1
    end
    if barPos == 1 and self.topline > 1 then
        barPos = barPos + 1
    end
    local size = barPos + barSize - 1
    if size == self.height then
        if self.topline + self.height - 1 < self.lineCount then
            barPos = barPos - 1
        end
    elseif size > self.height then
        barPos = self.height - barSize + 1
    end
    if self:borderHasRightLine() then
        local wopts = self:build()
        wopts.height = math.max(1, barSize)
        wopts.row = wopts.row + barPos - 1
        wopts.noautocmd = nil
        api.nvim_win_set_config(self.winid, wopts)
        vim.wo[self.winid].winhl = 'Normal:BqfPreviewThumb'
    else
        api.nvim_buf_clear_namespace(self.bufnr, self.ns, 0, -1)
        for i = 1, self.height do
            if i >= barPos and i < barPos + barSize then
                extmark.setHighlight(self.bufnr, self.ns, i - 1, 0, i - 1, 1, 'BqfPreviewThumb')
            end
        end
    end
end

function ScrollBar:display()
    if not self.showScrollBar then
        self:close()
        return
    end
    local wopts = self:build()
    if self:validate() then
        wopts.noautocmd = nil
        api.nvim_win_set_config(self.winid, wopts)
    else
        self:open(wopts)
        local wo = vim.wo[self.winid]
        wo.winhl = 'Normal:BqfPreviewSbar'
        wo.winblend = self.winblend
    end
    local lines = {}
    for _ = 1, self.height do
        table.insert(lines, ' ')
    end
    vim.bo[self.bufnr].modifiable = true
    api.nvim_buf_set_lines(self.bufnr, 0, -1, true, lines)
    vim.bo[self.bufnr].modifiable = false
    self:update()
    return self.winid
end

function ScrollBar:initialize()
    self.bufferName = 'BqfPreviewScrollBar'
    self:getBufnr()
    return self
end

return ScrollBar
