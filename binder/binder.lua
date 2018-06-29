--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/24/18
-- Time: 7:27 PM
-- To change this template use File | Settings | File Templates.
--

local tableUtil = require("../util/table")

local module = {};

print("binder")

function forAllCombsDo(up, p, f)
    if tableUtil.lengthOf(up)==0 then
        f(tableUtil.copy(p))
    else
        local popped = table.remove(up)
        forAllCombsDo(up, p, f)
        table.insert(p, popped)
        forAllCombsDo(up, p, f)
        popped = table.remove(p)
        table.insert(up, popped)
    end
end

function module.bindAllCombs(modifiers, keys, includeEmptyModifierSet, f)
    forAllCombsDo(modifiers, {}, function(modifiers)
        if not(includeEmptyModifierSet) and tableUtil.lengthOf(modifiers)==0 then
            return
        end

        tableUtil.forEachDo(keys, function(_, key)
            hs.hotkey.bind(modifiers, key, function()
                f(modifiers, key)
            end)
        end)
    end)
end

return module