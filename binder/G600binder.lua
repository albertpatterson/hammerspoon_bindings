--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/28/18
-- Time: 7:25 PM
-- To change this template use File | Settings | File Templates.
--

local binder = require("../binder/binder")
local tableUtil = require("../util/table")
local module = tableUtil.copy(binder);

local modifiers = {"ctrl" }
local keys = {"pad1","pad2","pad3","pad4","pad5","pad6","pad7","pad8","pad9","pad1","pad1","pad1","pad1","pad0", "pad-", "pad+"};
local includeEmptyModifierSet = true

function module.bindAllCombs(f)
    binder.bindAllCombs(modifiers, keys, includeEmptyModifierSet, f)
end

print(hs.inspect.inspect(module))

return module

