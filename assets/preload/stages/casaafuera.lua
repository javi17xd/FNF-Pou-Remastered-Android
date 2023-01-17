function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.70)
	makeLuaSprite('casa', 'casa', -500, -280);
	setScrollFactor('casa', 1, 1);
	scaleObject('casa', 1.1, 1.1);

	makeLuaSprite('casapinos', 'casapinos', -150, -100);
	setScrollFactor('casapinos', 1.1, 1.1);
	scaleObject('casapino', 1.1, 1.1);
	
	makeLuaSprite('afueracielo', 'afueracielo', -300, -350);
	setScrollFactor('afueracielo', 1.2, 1);
	scaleObject('afueracielo', 1.1, 1.1);

	
	makeAnimatedLuaSprite('chicas','chicas',600, 100)
	addAnimationByPrefix('chicas','chicas','chicas',24,true)
    objectPlayAnimation('chicas','chicas',false)
    setScrollFactor('chicas', 0.9, 0.9);

	
	addLuaSprite('afueracielo', false);	
	addLuaSprite('casapinos', false);		
	addLuaSprite('casa', false);
	addLuaSprite('chicas', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end