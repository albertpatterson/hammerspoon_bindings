--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/28/18
-- Time: 7:44 PM
-- To change this template use File | Settings | File Templates.
--

local keyStroke = hs.eventtap.keyStroke

function logDefault()
    print('default')
end

function pressReturn()
    keyStroke({}, "return")
end

function pressShiftReturn()
    keyStroke({"shift"}, "return")
end

function fullScreen()
    keyStroke({"alt", "cmd"}, "f")
end

function rightScreen()
    keyStroke({"alt", "cmd"}, "right")
end

function leftScreen()
    keyStroke({"alt", "cmd"}, "left")
end

return {
    ["pad1"]=nil,
    ["pad2"]=nil,
    ["pad3"]=nil,
    ["pad4"]=nil,
    ["pad5"]=nil,
    ["pad6"]=nil,
    ["pad7"]=nil,
    ["pad8"]=nil,
    ["pad9"]=nil,
    ["pad0"]=nil,
    ["pad-"]=nil,
    ["pad+"]=nil,
    ["ctrl_pad1"]=nil,
    ["ctrl_pad2"]=nil,
    ["ctrl_pad3"]=nil,
    ["ctrl_pad4"]=nil,
    ["ctrl_pad5"]=nil,
    ["ctrl_pad6"]=nil,
    ["ctrl_pad7"]=nil,
    ["ctrl_pad8"]=nil,
    ["ctrl_pad9"]=nil,
    ["ctrl_pad0"]=leftScreen,
    ["ctrl_pad-"]=rightScreen,
    ["ctrl_pad+"]=fullScreen
}

