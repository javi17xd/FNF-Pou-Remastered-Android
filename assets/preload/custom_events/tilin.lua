function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
	
    precacheImage('tilin');
    precacheSound('advertencia');
	precacheSound('esquivadopelota');
end

function onEvent(name, value1, value2)
    if name == "tilin" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
	makeAnimatedLuaSprite('tilin', 'tilin', 350, 50);
    luaSpriteAddAnimationByPrefix('tilin', 'tilin', 'tilin', 24, true);
	luaSpritePlayAnimation('tilin', 'tilin');
	setObjectCamera('tilin', 'other');
	scaleLuaSprite('tilin', 0.50, 0.50); 
    scaleObject('tilin', 0.8, 0.8);
    addLuaSprite('tilin', true); 
	
	--Set values so you can dodge
    playSound('advertencia', 100);
	canDodge = true;
	runTimer('Died', DodgeTime);
	
	end
end

function onUpdate()
   if canDodge == true and keyJustPressed('space') then
   
   Dodged = true;
   playSound('esquivadopelota', 100);
   characterPlayAnim('boyfriend', 'attack', true);
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('tilin');
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