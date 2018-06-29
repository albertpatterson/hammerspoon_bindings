--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/28/18
-- Time: 7:44 PM
-- To change this template use File | Settings | File Templates.
--

local keyStroke = hs.eventtap.keyStroke

function toggleLineComment()
    keyStroke({"cmd"}, "/")
end

function toggleHideWindows()
    keyStroke({"cmd", "shift"}, "f12")
end

function classSummary()
    keyStroke({"cmd"}, "f12")
end

function intentActions()
    keyStroke({"alt"}, "return")
end

function surroundWith()
    keyStroke({"cmd", "alt"}, "T")
end

function nextError()
    keyStroke({}, "f2")
end

function prevError()
    keyStroke({"shift"}, "f2")
end

function nextChange()
    keyStroke({"ctrl", "alt", "shift"}, "down")
end

function prevChange()
    keyStroke({"ctrl", "alt", "shift"}, "up")
end

function rename()
    keyStroke({"shift"}, "f6")
end

return {
    ["pad1"]=toggleLineComment,
    ["pad2"]=nil,
    ["pad3"]=intentActions,
    ["pad4"]=classSummary,
    ["pad5"]=nil,
    ["pad6"]=toggleHideWindows,
    ["pad7"]=surroundWith,
    ["pad8"]=nil,
    ["pad9"]=nextError,
    ["pad0"]=nextChange,
    ["pad-"]=nil,
    ["pad+"]=rename,
    ["ctrl_pad1"]=nil,
    ["ctrl_pad2"]=nil,
    ["ctrl_pad3"]=nil,
    ["ctrl_pad4"]=nil,
    ["ctrl_pad5"]=nil,
    ["ctrl_pad6"]=nil,
    ["ctrl_pad7"]=nil,
    ["ctrl_pad8"]=nil,
    ["ctrl_pad9"]=prevError,
    ["ctrl_pad0"]=prevChange,
    ["ctrl_pad-"]=nil,
    ["ctrl_pad+"]=nil
}

