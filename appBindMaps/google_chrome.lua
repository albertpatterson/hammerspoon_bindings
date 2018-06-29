--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/28/18
-- Time: 7:44 PM
-- To change this template use File | Settings | File Templates.
--

local keyStroke = hs.eventtap.keyStroke

function toggleDevTools()
    keyStroke({"cmd", "alt"}, "I")
end

function newTab()
    keyStroke({"cmd"}, "T")
end

function restoreTab()
    keyStroke({"cmd", "shift"}, "T")
end

function newIncognitoWindow()
    keyStroke({"cmd", "alt"}, "I")
end

function pressReturn()
    keyStroke({}, "return")
end

function pressShiftReturn()
    keyStroke({"shift"}, "return")
end


function zoomIn()
    keyStroke({"cmd"}, "+")
end

function zoomOut()
    keyStroke({"cmd"}, "-")
end

function pressDelete()
    keyStroke({}, "delete")
end

return {
    ["pad1"]=toggleDevTools,
    ["pad2"]=nil,
    ["pad3"]=nil,
    ["pad4"]=nil,
    ["pad5"]=nil,
    ["pad6"]=nil,
    ["pad7"]=nil,
    ["pad8"]=nil,
    ["pad9"]=nil,
    ["pad0"]=nil,
    ["pad="]=nil,
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
    ["ctrl_pad0"]=nil,
    ["ctrl_pad="]=nil,
    ["ctrl_pad-"]=nil,
    ["ctrl_pad+"]=nil
}

