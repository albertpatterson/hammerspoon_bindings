--
-- Created by IntelliJ IDEA.
-- User: apatterson
-- Date: 6/24/18
-- Time: 7:30 PM
-- To change this template use File | Settings | File Templates.
--

tableUtil = require("util/table")

local testMap = {ten=10, twenty=20, thirty=30}

function assertTrue(message, fcn)
    if fcn()==false then
        error(message)
    end
end

function assertFalse(message, fcn)
    if fcn()==true then
        error(message)
    end
end

function runTest(description, fcn)
    print(description..": start")
    fcn()
    print(description..": done")
end

runTest("test containedIn", function()
    assertTrue("contained in returns true for a value in the map", function()
        return tableUtil.containedIn(testMap, "ten");
    end)

    assertFalse("contained in returns false for a value not the map", function()
        return  tableUtil.containedIn(testMap, "fourty");
    end)
end)

runTest("test forEachDo", function()
    local executed = {}

    tableUtil.forEachDo(testMap, function(key, value)
        assertTrue("forEachDo executes with the correct value for each key in the table", function()
            return testMap[key]==value;
        end)
        executed[key]=true;
    end)

    for k,v in pairs(testMap) do
        assertTrue("forEachDo executes for every key in the table: "..k, function()
            return executed[k]==true;
        end)
    end

    for k,v in pairs(executed) do
        assertFalse("forEachDo executes only for keys in the table: "..k, function()
            return testMap[k]==nil;
        end)
    end
end)


runTest("test lengthOf", function()
    assertTrue("lengthOf should return the number of elements in the table", function()
        return tableUtil.lengthOf(testMap) == 3;
    end)
end)