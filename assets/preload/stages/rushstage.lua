function onCreate()
	-- the stage lmao
	makeLuaSprite('greenwall', 'greenwall', -600, -900);
	setScrollFactor('greenwall', 0.9, 0.9);
	scaleObject('greenwall', 1.8, 1.8);
	
	makeLuaSprite('woodfloor', 'woodfloor', -650, 500);
	setScrollFactor('woodfloor', 0.9, 0.9);
	scaleObject('woodfloor', 1.1, 1.1);

	makeLuaSprite('wasd', 'wp', -500, 100);
	setScrollFactor('wasd', 0.9, 0.9);
	scaleObject('wasd', 0.9, 0.9);

	makeLuaSprite('darkness', 'darkness', -1000, -1000);
	setScrollFactor('darkness', 0.9, 0.9);
	scaleObject('darkness', 5, 5);

	addLuaSprite('greenwall', false);
	addLuaSprite('woodfloor', false);
	addLuaSprite('wasd', false);
	addLuaSprite('darkness', true);
	
	close(true);
end