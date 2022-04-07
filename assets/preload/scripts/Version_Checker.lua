
--[[
    ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
    SCRIPT BY: LUNARCLEINT

    CHANGE THE NEEDED VERSION TO THE VERSION NEEDED FOR YOUR MOD

    THANKS FOR USING!
    ⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️⚠️
]]

VersionNeeded = '0.5.2h'

local CurrentVersion = ''

local outdated = false;

function onCreate()
    CurrentVersion = getPropertyFromClass('MainMenuState', 'psychEngineVersion')
end

function onStartCountdown()
    if formatVersion(CurrentVersion) < formatVersion(VersionNeeded) then

        makeLuaSprite('bozo', 'stupididiot', 0, 0)
        addLuaSprite('bozo', true)
        setObjectCamera("bozo", "camOther")
        --screenCenter("bozo", "xy")
        setPropertyFromClass("openfl.Lib", "application.window.title", "outdated psych engine bozo!!")
        scaleObject('bozo', screenWidth * 0.002, screenHeight * 0.002)
        setProperty('bozo.alpha',1)
        setProperty('health', 2)

        playMusic('outdatedidiot', 1, true)
   
        debugPrint("VERSION NEEDED: " .. tostring(VersionNeeded) .. " CURRENT VERSION: " .. tostring(CurrentVersion))
        debugPrint("YOUR ARE ON A OUTDATED VERSION OF PSYCH ENGINE")

        outdated = true
        return Function_Stop;
    end
end

function onUpdatePost()
    if outdated then
        setProperty('health', 2)
    end
end

function formatVersion(ver)
    local str = ""

    string.gsub(ver,"%d+",function(e)
        str = str .. e
    end)

    return tonumber(str)
end