
local followchars = true
local modchart = true
local xx = 920
local yy = 660
local xx2 = 950
local yy2 = 660
local xx3 = 1060
local yy3 = 660
local ofs = 30
local del = 0
local del2 = 0

function onCreate()
	makeAnimatedLuaSprite('fx', 'bg/vintage', 0, 0)
	addAnimationByPrefix('fx', 'idle', 'idle', 16, true)
	scaleObject('fx', 3, 3)
	setObjectCamera('fx', 'camOther')
	objectPlayAnimation('fx', 'idle', true)
	setProperty('fx.alpha', 0)

	makeAnimatedLuaSprite('fx2', 'bg/vintage2', 0, 0)
	addAnimationByPrefix('fx2', 'idle', 'idle', 16, true)
	scaleObject('fx2', 3, 3)
	setObjectCamera('fx2', 'camOther')
	objectPlayAnimation('fx2', 'idle', true)
	setProperty('fx2.alpha', 0)

	setObjectOrder('dadGroup', getObjectOrder('boyfriendGroup')+1)
	setPropertyFromClass("ClientPrefs", "middleScroll", false)

	makeLuaSprite('sonic', 'bg/sonic', 0, 0)
	addLuaSprite('sonic', false)
	setProperty('sonic.alpha',1)

	makeLuaSprite('sonic2', 'bg/sonic', 100, 0)
	addLuaSprite('sonic2', false)
	setProperty('sonic2.alpha',0)

	makeAnimatedLuaSprite('fleet', 'bg/fleet', 70, 0);
	addAnimationByPrefix('fleet', 'omgfleetway', 'fleetwaybglmao', 24, false);
	objectPlayAnimation('fleet', 'omgfleetway');
	addLuaSprite('fleet', false)
	setProperty('fleet.alpha',0)

	makeAnimatedLuaSprite('redload','black',-100,-140)
	addAnimationByPrefix('redload','redpog','red appear',24,true)
	scaleObject('redload', 1.2, 1.2);
	setObjectCamera('redload','camOther')
	addLuaSprite('redload', true);
	setProperty('redload.alpha',1)

	makeAnimatedLuaSprite('redload2','red',-100,-140)
	addAnimationByPrefix('redload2','redpog','red appear',24,true)
	scaleObject('redload2', 1.2, 1.2);
	setObjectCamera('redload2','camOther')
	addLuaSprite('redload2', true);
	setProperty('redload2.alpha',0)

	addCharacterToList('fleetway', 'boyfriend')
	precacheSound('stat')

	setPropertyFromClass('GameOverSubstate', 'characterName', 'sonic')
end

function onSongStart()
	addLuaSprite('fx', true)
	addLuaSprite('fx2', true)
end

function onBeatHit()
	objectPlayAnimation('redload','redpog',false)
end

function onUpdate(elapsed)
	objectPlayAnimation('fleet', 'omgfleetway');
	if modchart == true then
		for i = 0,3 do
			setPropertyFromGroup('strumLineNotes', i, 'alpha', 0.1)
		end
	end
	if curStep <= 384 then
		if followchars == true then
			if mustHitSection == false then
				if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx-ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx+ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
					triggerEvent('Camera Follow Pos',xx-ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
					triggerEvent('Camera Follow Pos',xx+ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
					triggerEvent('Camera Follow Pos',xx,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				else
				if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
					triggerEvent('Camera Follow Pos',xx2,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx2,yy2)
				end
			end
		else
			triggerEvent('Camera Follow Pos','','')
		end
	end
	if curStep >= 384 then
		if followchars == true then
			if mustHitSection == false then
				if getProperty('dad.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx-ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx+ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
					triggerEvent('Camera Follow Pos',xx-ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
					triggerEvent('Camera Follow Pos',xx+ofs,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
					triggerEvent('Camera Follow Pos',xx,yy-ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'singDOWN-alt' then
					triggerEvent('Camera Follow Pos',xx,yy+ofs)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle-alt' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				if getProperty('dad.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx,yy)
				end
				else
				if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
					triggerEvent('Camera Follow Pos',xx3-ofs,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
					triggerEvent('Camera Follow Pos',xx3+ofs,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
					triggerEvent('Camera Follow Pos',xx3,yy2-ofs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
					triggerEvent('Camera Follow Pos',xx3,yy2+ofs)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle-alt' then
					triggerEvent('Camera Follow Pos',xx3,yy2)
				end
				if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
					triggerEvent('Camera Follow Pos',xx3,yy2)
				end
			end
		else
			triggerEvent('Camera Follow Pos','','')
		end
	end
end


function onStartCountdown()
	setProperty('gf.alpha', 0)
	setProperty('dad.alpha', 0)
	setProperty('iconP2.alpha', 0)

	return Function_Continue
end

function onStepHit()
	if curStep == 10 then
		modchart = false
	end
	if curStep == 384 or curStep == 768 or curStep == 1151 or curStep == 1172 or curStep == 1276 or curStep == 1282 or curStep == 1304 or curStep == 1536 or curStep == 1922 or curStep == 1937 or curStep == 1943 or curStep == 1956 then
		fleetON()
	end
	if curStep == 640 or curStep == 1024 or curStep == 1154 or curStep == 1176 or curStep == 1279 or curStep == 1300 or curStep == 1408 or curStep == 1792 or curStep == 1926 or curStep == 1940 or curStep == 1946 or curStep == 1960 then
		fleetOFF()
	end
end

function fleetON()
	setProperty('fx2.alpha', 0.8)
	doTweenAlpha('fleetON2', 'fx2', 0.1, 1, 'linear')
	playSound('stat', 0.3)
	triggerEvent('Change Character', 0, 'fleetway')
	triggerEvent('Change Character', 1, 'sonicdad')
	setObjectOrder('dadGroup', getObjectOrder('boyfriendGroup')-1)
	setProperty('fleet.alpha',1)
	setProperty('sonic.alpha',0)
	setProperty('redload.alpha',0)
	setProperty('redload2.alpha',1)
	addVCREffect('camGame',0.1)
end

function fleetOFF()
	setProperty('fx2.alpha', 0)
	setProperty('fx.alpha', 0.8)
	doTweenAlpha('fleetON', 'fx', 0, 1, 'linear')
	playSound('stat', 0.3)
	triggerEvent('Change Character', 0, 'sonic')
	triggerEvent('Change Character', 1, 'fleetway2')
	setObjectOrder('dadGroup', getObjectOrder('boyfriendGroup')+1)
	setProperty('fleet.alpha',0)
	setProperty('sonic2.alpha',1)
	setProperty('redload.alpha',1)
	setProperty('redload2.alpha',0)
	clearEffects('camGame')
end

function onGameOver()
	modchart = false
	return Function_Continue;
end