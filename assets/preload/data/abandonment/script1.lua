function onCreatePost()
   setProperty('debugKeysChart', null); -- prevents key from doing anything

    makeLuaSprite('sonicBoo','cheaterr',100,0)
    addAnimationByPrefix('sonicBoo','boo','sonicSPOOK',24,false)
    setProperty('sonicBoo.alpha',0.001)
    setObjectCamera('sonicBoo','other')
    addLuaSprite('sonicBoo',true)
end

function onUpdate()
 if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then

      setProperty('sonicBoo.alpha',1)
      playSound('nopapu')
      objectPlayAnimation('sonicBoo','boo',true)

	runTimer('jumpscareWait', 1, 1)
end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'jumpscareWait' then
	os.exit();
end
end

function onCreate()
     setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
     precacheImage('error_popups')
end

local Spawn = false
local PopUpbool = true
local num = 1
function onBeatHit()
     if getRandomBool(13) then
          onGeneratePopUp(PopUpbool, RanX, RanY)
          num = num + 1
     end
end

function onUpdatePost(elapsed)
     RanX = getRandomInt(-68, 775)
     RanY = getRandomInt(-90, 423)
     Limit = 20

     if mouseClicked('left') then -- when pressed
          objectPlayAnimation('popUp'..num, 'glitch')
     elseif mouseReleased('left') then -- when released
          removeLuaSprite('popUp'..num, false)     
          num = num - 1
     end

     if num <= 0 then -- if below 0
          num = 1
     end

     if num >= Limit then
          PopUpbool = false
          num = Limit
     else
          PopUpbool = true
     end
end

function onGeneratePopUp(bool, x, y)
     Spawn = bool
     if Spawn then
          onCreatePopUp('popUp'..num, 1.9, 1.8, x, y)
          Spawn = false
     end
end

function onCreatePopUp(tag, scaleX, scaleY, x, y)
     makeAnimatedLuaSprite(tag, 'error_popups', x, y)
     objectPlayAnimation(tag, 'glitch')
     addAnimationByPrefix(tag, 'glitch', 'idle', 24, false)
     setObjectCamera(tag, 'camOther')
     setProperty(tag..'.antialiasing', false)
     scaleLuaSprite(tag, scaleX, scaleY)
     addLuaSprite(tag, true)
end
