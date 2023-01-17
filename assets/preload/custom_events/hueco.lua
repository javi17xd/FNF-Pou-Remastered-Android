function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('hueco');
    precacheSound('advertencia');
	precacheSound('roca');
end

function onEvent(name, value1, value2)
    if name == "hueco" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
	makeAnimatedLuaSprite('hueco', 'hueco', 300, 50);
    luaSpriteAddAnimationByPrefix('hueco', 'hueco', 'hueco', 24, true);
	luaSpritePlayAnimation('hueco', 'hueco');
	setObjectCamera('hueco', 'other');
	scaleLuaSprite('hueco', 0.50, 0.50); 
    scaleObject('hueco', 0.8, 0.8);
    addLuaSprite('hueco', true); 
	
	--Set values so you can dodge
    playSound('advertencia', 100);
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('space') then
   
   Dodged = true;
   playSound('roca', 100);
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('hueco');
   canDodge = false
   
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   
   end
end