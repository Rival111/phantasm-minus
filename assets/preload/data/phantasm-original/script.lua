durationX = 0.25
tweenStyle = linear

function onStepHit()
	if curStep == 2046 then
		doTweenAlpha('byebozo', 'dad', 0, 3, 'linear')
	end
	if curStep == 640 or curStep == 1024 or curStep == 1300 or curStep == 1408 or curStep == 1792 then

		noteTweenX('bfTween1', 4, 90, durationX, tweenStyle);
		noteTweenX('bfTween2', 5, 205, durationX, tweenStyle);
		noteTweenX('bfTween3', 6, 315, durationX, tweenStyle);
		noteTweenX('bfTween4', 7, 425, durationX, tweenStyle);
		noteTweenX('dadTween1', 0, 730, durationX, tweenStyle);
		noteTweenX('dadTween2', 1, 845, durationX, tweenStyle);
		noteTweenX('dadTween3', 2, 955, durationX, tweenStyle);
		noteTweenX('dadTween4', 3, 1065, durationX, tweenStyle);
	end
	if curStep == 384 or curStep == 768 or curStep == 1281 or curStep == 1303 or curStep == 1536 then

		noteTweenX('dadTween1', 0, 90, durationX, tweenStyle);
		noteTweenX('dadTween2', 1, 205, durationX, tweenStyle);
		noteTweenX('dadTween3', 2, 315, durationX, tweenStyle);
		noteTweenX('dadTween4', 3, 425, durationX, tweenStyle);
		noteTweenX('bfTween1', 4, 730, durationX, tweenStyle);
		noteTweenX('bfTween2', 5, 845, durationX, tweenStyle);
		noteTweenX('bfTween3', 6, 955, durationX, tweenStyle);
		noteTweenX('bfTween4', 7, 1065, durationX, tweenStyle);
	end
	if curStep == 384 then
		setProperty('dad.alpha', 0.1)
	end
end

function onCreatePost()
	for i = 0,7 do
		xValue = getPropertyFromGroup('strumLineNotes', i, 'x')
		if i < 3.5 then
			setPropertyFromGroup('strumLineNotes', i, 'x', xValue+640)
		else
			setPropertyFromGroup('strumLineNotes', i, 'x', xValue-640)
		end
	end
end
