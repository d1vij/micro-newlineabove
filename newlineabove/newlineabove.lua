local micro = import("micro")
local config = import("micro/config")
local buffer = import("micro/buffer")

function newlineAbove(bp)
    local cursor = bp.Cursor
    local line = cursor.Y

    bp.Buf:Insert(buffer.Loc(0, line), "\n")

    cursor.Y = line + 1
end

function init()
    config.TryBindKey("CtrlP", "lua:newlineabove.newlineAbove", false)
end
