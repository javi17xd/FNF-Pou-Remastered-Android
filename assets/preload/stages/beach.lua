function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.60)
	makeLuaSprite('volley', 'volley', -650, -200);
	setScrollFactor('volley', 1, 1);

	makeLuaSprite('mar', 'mar', -670, -185);
	setScrollFactor('mar', 1.3, 1.1);
	
	makeLuaSprite('playacielo', 'playacielo', -650, -600);
	setScrollFactor('playacielo', 1.2, 1);
	scaleObject('playacielo', 2.0, 2.0);

	makeAnimatedLuaSprite('pendejos','pendejos',-250,-200)
	addAnimationByPrefix('pendejos','pendejos','pendejos',18,true)
    objectPlayAnimation('pendejos','pendejos',false)
    setScrollFactor('pendejos', 1, 1);
	
	addLuaSprite('playacielo', false);	
	addLuaSprite('mar', false);		
	addLuaSprite('volley', false);
	addLuaSprite('pendejos', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end