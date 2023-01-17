function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.75)
	
	makeAnimatedLuaSprite('fondopixel','fondopixel',-600,-400)
	addAnimationByPrefix('fondopixel','fondopixel','fondopixel',24,true)
    objectPlayAnimation('fondopixel','fondopixel',false)
    setScrollFactor('fondopixel', 0.9, 0.9);
	scaleObject('fondopixel', 10.0, 10.0);
	setProperty('fondopixel.antialiasing', false);
	

	makeAnimatedLuaSprite('arbol','arbol',800,300)
	addAnimationByPrefix('arbol','arbol','arbol',24,true)
    objectPlayAnimation('arbol','arbol',false)
    setScrollFactor('arbol', 0.9, 0.9);

	addLuaSprite('fondopixel', false);	
	addLuaSprite('arbol', false);	

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end