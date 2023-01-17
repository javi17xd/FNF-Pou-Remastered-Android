function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.52)

	makeLuaSprite('cielokk', 'cielokk', -670, -400);
	setScrollFactor('cielokk', 0, 0);

	makeAnimatedLuaSprite('humos','humos',-900,-500)
	addAnimationByPrefix('humos','humos','humos',24,true)
    objectPlayAnimation('humos','humos',false)
    setScrollFactor('humos', 0, 0);

	makeAnimatedLuaSprite('avioncitos','avioncitos',-170,-900)
	addAnimationByPrefix('avioncitos','avioncitos','avioncitos',24,true)
    objectPlayAnimation('avioncitos','avioncitos',false)
    setScrollFactor('avioncitos', 0, 0);
	
	makeLuaSprite('fondoguerra', 'fondoguerra', -670, -300);
	setScrollFactor('fondoguerra', 0, 0);

	makeAnimatedLuaSprite('fuegos','fuegos',274, -150)
	addAnimationByPrefix('fuegos','fuegos','fuegos',24,true)
    objectPlayAnimation('fuegos','fuegos',false)
    setScrollFactor('fuegos', 0, 0);
	scaleObject('fuegos', 2.0, 2.0);
	
	makeAnimatedLuaSprite('barrita','barrita',300,-400)
	addAnimationByPrefix('barrita','barrita','barrita',24,true)
    objectPlayAnimation('barrita','barrita',false)
    setScrollFactor('barrita', 0, 0);

	makeAnimatedLuaSprite('particulasfuego','particulasfuego',-1100,-375)
	addAnimationByPrefix('particulasfuego','particulasfuego','particulasfuego',24,true)
    objectPlayAnimation('particulasfuego','particulasfuego',false)
    setScrollFactor('particulasfuego', 0, 0);
	scaleObject('particulasfuego', 4.0, 4.0);
		
	addLuaSprite('cielokk', false);
	addLuaSprite('humos', false);
	addLuaSprite('avioncitos', false);
	addLuaSprite('fondoguerra', false);
	addLuaSprite('fuegos', false);
	addLuaSprite('barrita', false);
	addLuaSprite('particulasfuego', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end