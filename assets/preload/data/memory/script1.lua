local angleshit = 2;
local anglevar = 2;
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if difficulty == 2 then
		if curBeat < 1 then
			if curBeat > 240 then
				cameraShake('cam', '0.035', '0.1')
			end
		end
	end
end

function onBeatHit()
    if curBeat > 1 then
        if curBeat % 2 == 0 then
            angleshit = anglevar;
        else
            angleshit = -anglevar;
        end
        setProperty('camHUD.angle',angleshit*3)
        setProperty('camGame.angle',angleshit*3)
        doTweenAngle('turn', 'camHUD', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('tuin', 'camHUD', -angleshit*8, crochet*0.001, 'linear')
        doTweenAngle('tt', 'camGame', angleshit, stepCrochet*0.002, 'circOut')
        doTweenX('ttrn', 'camGame', -angleshit*8, crochet*0.001, 'linear')
    end
end

function start (song) -- do nothing

end

function update (elapsed)
if curStep >= 320 and curStep < 450 then
local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 50 * math.sin((currentBeat + i*50) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 25 * math.cos((currentBeat + i*1) * math.pi), i)
	end
	end

if curStep >= 830 and curStep < 1402 then
local currentBeat = (songPos / 1000)*(bpm/60)
		for i=0,7 do
		setActorY(_G['defaultStrum'..i..'Y'] + 200 * math.cos((currentBeat + i*10) * math.pi), i)
	end	
	end
	end
function beatHit(beat) -- arguments, the current beat of the song

end
function stepHit (step) -- do nothing

end

function onCreatePost()
   setProperty('debugKeysChart', null); -- prevents key from doing anything

    makeLuaSprite('sonicBoo','umm',100,0)
    addAnimationByPrefix('sonicBoo','boo','sonicSPOOK',24,false)
    setProperty('sonicBoo.alpha',0.001)
    setObjectCamera('sonicBoo','other')
    addLuaSprite('sonicBoo',true)
end

function onUpdatePost()
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
