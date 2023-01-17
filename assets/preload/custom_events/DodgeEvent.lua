function onCreate()
    --variables
	Dodged = false;
    canDodge = false;
    DodgeTime = 0;
    precacheImage('spacebar');
	precacheSound('Dodged')
    precacheImage('space');
	makeAnimatedLuaSprite('BotonDodge', 'botonDodge', 1150, 588);
	addAnimationByPrefix('BotonDodge', 'boton1', 'Estatico', 24, false);
	addAnimationByPrefix('BotonDodge', 'boton2', 'Presionado', 24, false);
	objectPlayAnimation('BotonDodge','boton1',false);
	addLuaSprite('BotonDodge', true);
	setObjectCamera('BotonDodge', 'other')
end

function onEvent(name, value1, value2)
    if name == "DodgeEvent" then
    --Get Dodge time
    DodgeTime = (value1);
	
    --Make Dodge Sprite
	makeAnimatedLuaSprite('spacebar', 'spacebar', 400, 200);
    luaSpriteAddAnimationByPrefix('spacebar', 'spacebar', 'spacebar', 25, true);
	luaSpritePlayAnimation('spacebar', 'spacebar');
	setObjectCamera('spacebar', 'other');
	scaleLuaSprite('spacebar', 0.50, 0.50); 
    addLuaSprite('spacebar', true); 
	canDodge = true;
	runTimer('Died', DodgeTime);
	end
end

function onUpdate()--Nickobelit Aqui ayudando a el Pana Lexed
   if canDodge == true and keyJustPressed('space') or canDodge == true and (getMouseX('camHUD') > 1150 and getMouseX('camHUD') < 1250) and (getMouseY('camHUD') > 588 and getMouseY('camHUD') < 720 and mouseClicked('left')) then 
      objectPlayAnimation('BotonDodge','boton2',false)
   Dodged = true;
   canDodge = false;
playSound('Dodged', 0.7);
   characterPlayAnim('boyfriend', 'dodge', true);
   setProperty('boyfriend.specialAnim', true);
   removeLuaSprite('spacebar');
   end
end

function onTimerCompleted(tag, loops, loopsLeft)
   if tag == 'Died' and Dodged == false then
   setProperty('health', 0);
   
   elseif tag == 'Died' and Dodged == true then
   Dodged = false
   
   end
end