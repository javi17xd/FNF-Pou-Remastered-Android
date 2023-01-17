function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.90)

	makeAnimatedLuaSprite('autos','autos',200,220)
	addAnimationByPrefix('autos','autos','autos',24,true)
    objectPlayAnimation('autos','autos',false)
    setScrollFactor('autos', 0.9, 0.9);

	makeAnimatedLuaSprite('suelo','suelo',-2000,115)
	addAnimationByPrefix('suelo','suelo','suelo',24,true)
    objectPlayAnimation('suelo','suelo',false)
    setScrollFactor('suelo', 0.9, 0.9);

	makeAnimatedLuaSprite('colina','colina',-2000,-150)
	addAnimationByPrefix('colina','colina','colina',24,true)
    objectPlayAnimation('colina','colina',false)
    setScrollFactor('colina', 0.9, 0.9);
	
	makeAnimatedLuaSprite('fondo','fondo',-2000,-100)
	addAnimationByPrefix('fondo','fondo','fondo',24,true)
    objectPlayAnimation('fondo','fondo',false)
    setScrollFactor('fondo', 0.9, 0.9);

	makeAnimatedLuaSprite('nubes','nubes',-2000,-500)
	addAnimationByPrefix('nubes','nubes','nubes',24,true)
    objectPlayAnimation('nubes','nubes',false)
    setScrollFactor('nubes', 0.9, 0.9);
	
	addLuaSprite('nubes', false);	
	addLuaSprite('fondo', false);		
	addLuaSprite('colina', false);
	addLuaSprite('suelo', false);
	addLuaSprite('autos', true);	

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end