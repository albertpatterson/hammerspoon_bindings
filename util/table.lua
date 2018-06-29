--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/24/18
-- Time: 7:29 PM
-- To change this template use File | Settings | File Templates.
--

local module = {};

function module.containedIn(table, key)
    local n=0
    for k,v in pairs(table) do
        n=n+1
        if k==key then
            return true
        end
    end
    return false
end

function module.forEachDo(table, fcn)
    local n=0
    for k,v in pairs(table) do
        n=n+1
        fcn(k, v)
    end
end

function module.lengthOf(table)
    local length = 0
    for _ in pairs(table) do
        length = length + 1
    end
    return length
end

function module.copy(t)
    if type(t)=="table" then
        local n = {}
        for k,v in pairs(t) do
            n[k]=module.copy(v);
        end
        return n
    else
        return t
    end
end

return module