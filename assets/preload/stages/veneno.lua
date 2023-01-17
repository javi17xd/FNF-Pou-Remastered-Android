function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.85)
	makeLuaSprite('veneno', 'veneno', -340, 0);
	setScrollFactor('veneno', 0.9, 0.9);

	makeLuaSprite('venenofrente', 'venenofrente', -340, 0);
	setScrollFactor('venenofrente', 0.9, 0.9);

	addLuaSprite('veneno', false);		
	addLuaSprite('venenofrente', true);	

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end