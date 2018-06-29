--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/28/18
-- Time: 7:44 PM
-- To change this template use File | Settings | File Templates.
--

local module = {}

module["ctrl_pad1"] = function()
    print("intellij crlas pad1")
end


function toggleLineComment()
    hs.eventtap.keyStroke({"cmd"}, "/")
end

return {
    ["pad1"]=toggleLineComment,
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

