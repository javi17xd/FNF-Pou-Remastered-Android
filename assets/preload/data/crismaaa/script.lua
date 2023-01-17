function onCreate()
	-- CHARACTER
	setPropertyFromClass('GameOverSubstate', 'characterName', 'bfpixel');
	
	--SOUNDS
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'crismamuerto'); --file goes inside sounds/ folder
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'crismaover'); --file goes inside music/ folder
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'crismaend'); --file goes inside music/ folder
end