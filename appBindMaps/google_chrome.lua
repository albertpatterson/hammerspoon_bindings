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
    keyStroke({"cmd", "shift"}, "N")
end

function zoomIn()
    keyStroke({"cmd", "shift"}, "=")
end

function zoomOut()
    keyStroke({"cmd"}, "-")
end

return {
    ["pad1"]=toggleDevTools,
    ["pad2"]=nil,
    ["pad3"]=newTab,
    ["pad4"]=restoreTab,
    ["pad5"]=nil,
    ["pad6"]=newIncognitoWindow,
    ["pad7"]=zoomIn,
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
    ["ctrl_pad7"]=zoomOut,
    ["ctrl_pad8"]=nil,
    ["ctrl_pad9"]=nil,
    ["ctrl_pad0"]=nil,
    ["ctrl_pad-"]=nil,
    ["ctrl_pad+"]=nil
}

