function onCreate()
	-- the stage lmao
	makeLuaSprite('eyeswall', 'eyeswall', -1000, -1000);
	setScrollFactor('eyeswall', 0.9, 0.9);
	scaleObject('eyeswall', 1.8, 1.8);
	
	makeLuaSprite('eyesfloor', 'eyesfloor', -650, 600);
	setScrollFactor('eyesfloor', 0.9, 0.9);
	scaleObject('eyesfloor', 1.1, 1.1);

	makeLuaSprite('shadow', 'shadows', -500, 100);
	setScrollFactor('shadow', 1, 1);
	scaleObject('shadow', 1, 1);

	makeLuaSprite('darkness', 'darkness', -1000, -1000);
	setScrollFactor('darkness', 0.9, 0.9);
	scaleObject('darkness', 5, 5);

	addLuaSprite('eyeswall', false);
	addLuaSprite('eyesfloor', false);
	addLuaSprite('shadow', false);
	addLuaSprite('darkness', true);
	
	close(true);
end