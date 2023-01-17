function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.60)
	makeLuaSprite('myoldself', 'myoldself', -1125, -340);
	setScrollFactor('myoldself', 1, 1);
	scaleObject('myoldself', 1.2, 1.2);
	
	addLuaSprite('myoldself', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end