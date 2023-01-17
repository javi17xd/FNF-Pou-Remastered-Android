function onCreate()
	-- background shit
	setProperty('defaultCamZoom',0.85)
	makeLuaSprite('afueracesped', 'afueracesped', -350, -200);
	setScrollFactor('afueracesped', 1, 1);

	makeLuaSprite('afuerapinos', 'afuerapinos', -350, -185);
	setScrollFactor('afuerapinos', 1.2, 1.1);
	
	makeLuaSprite('afueracielo', 'afueracielo', -350, -200);
	setScrollFactor('afueracielo', 1.2, 1);

	makeAnimatedLuaSprite('kellyelie','kellyelie',420, 250)
	addAnimationByPrefix('kellyelie','kellyelie','kellyelie',20,true)
    objectPlayAnimation('kellyelie','kellyelie',false)
    setScrollFactor('kellyelie', 1, 1);
	
	addLuaSprite('afueracielo', false);	
	addLuaSprite('afuerapinos', false);		
	addLuaSprite('afueracesped', false);
	addLuaSprite('kellyelie', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end