function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.55)
	makeLuaSprite('chroma', 'chroma', -350, -200);
	setScrollFactor('chroma', 1, 1);
	
	addLuaSprite('chroma', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end