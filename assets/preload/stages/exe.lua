function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.60)
	makeLuaSprite('sueloexe', 'sueloexe', -650, -200);
	setScrollFactor('sueloexe', 0, 0);

	makeLuaSprite('fondoexe', 'fondoexe', -670, -250);
	setScrollFactor('fondoexe', 1.2, 0);
	
	makeLuaSprite('pouendemoniadosjajaja', 'pouendemoniadosjajaja', -650, -600);
	setScrollFactor('pouendemoniadosjajaja', 1.2, 1);
	scaleObject('pouendemoniadosjajaja', 2.0, 2.0);

	makeLuaSprite('playacielo', 'playacielo', -650, -600);
	setScrollFactor('playacielo', 1.2, 1);
	scaleObject('playacielo', 2.0, 2.0);


	
	addLuaSprite('playacielo', false);	
	addLuaSprite('fondoexe', false);		
	addLuaSprite('sueloexe', false);
	addLuaSprite('pouendemoniadosjajaja', true);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end