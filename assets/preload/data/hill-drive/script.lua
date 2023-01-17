function onCreatePost()
   setProperty('debugKeysChart', null); -- prevents key from doing anything

    makeLuaSprite('sonicBoo','umm',100,0)
    addAnimationByPrefix('sonicBoo','boo','sonicSPOOK',24,false)
    setProperty('sonicBoo.alpha',0.001)
    setObjectCamera('sonicBoo','other')
    addLuaSprite('sonicBoo',true)
end

function onUpdate()
 if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then

      setProperty('sonicBoo.alpha',1)
      playSound('umm')
      objectPlayAnimation('sonicBoo','boo',true)

	runTimer('jumpscareWait', 1, 1)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'jumpscareWait' then
	setProperty('health', getProperty('health')-2.0);
end
end

state = true;
shouldAdd = true;

function onUpdatePost(elapsed)
	if (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1280) and (getMouseY('camHUD') > 450 and getMouseY('camHUD') < 580 and mousePressed('left')) or keyPressed('space') then
		objectPlayAnimation('dodge', 'Pressed', false);
	else
		objectPlayAnimation('dodge', 'nonPress', false);
	end
end

function onCreate()  --random shit lol
	makeAnimatedLuaSprite('dodge', 'dodge', 1150, 450);
	addAnimationByPrefix('dodge', 'nonPress', 'nonPress', 24, false);
	addAnimationByPrefix('dodge', 'Pressed', 'Pressed', 12, false);
	addLuaSprite('dodge', false);
	setObjectCamera('dodge', 'other');
end
