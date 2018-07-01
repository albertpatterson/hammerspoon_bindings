--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 7/1/18
-- Time: 11:26 AM
-- To change this template use File | Settings | File Templates.
--

local tableUtil = require("../util/table")

local module = {};

print("map factory")

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

function module.createWithExhaustiveCombinations(keys, modifiers, callback, includeUnmodified)

    local modifierCombsMap = {};
    forAllCombsDo(modifiers, {}, function(comb)
        if includeUnmodified or tableUtil.lengthOf(comb) > 0 then
            modifierCombsMap[comb] = callback
        end
    end)

    local map = {}
    tableUtil.forEachDo(keys, function(_, key)
        map[key]=modifierCombsMap
    end)

    return map
end

function module.createWithSequentialCombinations(keys, modifierSets, callback)

    local modifierSetMap = {};
    tableUtil.forEachDo(modifierSets, function(_, modifierSet)
        modifierSetMap[modifierSet]=callback
    end)

    local map = {};
    tableUtil.forEachDo(keys, function(idx, key)
        map[key]=modifierSetMap;
    end)

    return map
end

function module.createWithPairwiseCombinations( keys, modifierSets, callback)
    if not (tableUtil.lengthOf(keys) == tableUtil.lengthOf(modifierSets)) then
        error("key and modifier set length mismatch")
    end

    local map = {}

    tableUtil.forEachDo(keys, function(index, key)
        if map[key] == nil then
            map[key]={}
        end

        map[key][modifierSets[index]]=callback
    end)

    return map
end

return module