function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.85)
	makeLuaSprite('cocina', 'cocina', -350, 0);
	setScrollFactor('cocina', 0.9, 0.9);

	makeLuaSprite('cocinafondo', 'cocinafondo', -300, 50);
	setScrollFactor('cocinafondo', 1, 1);
	
	addLuaSprite('cocinafondo', false);	
	addLuaSprite('cocina', false);		

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end