function onCreate()
	-- the stage lmao
	makeLuaSprite('bluewall', 'bluewall', -1000, -300);
	setScrollFactor('bluewall', 0.9, 0.9);
	scaleObject('bluewall', 1.8, 1.8);

	makeLuaSprite('lights', 'lightspowered', -500, -50);
	setScrollFactor('lights', 1, 1);
	scaleObject('lights', 1, 1);
	
	makeLuaSprite('lightfloor', 'lightfloor', -850, 600);
	setScrollFactor('lightfloor', 0.9, 0.9);
	scaleObject('lightfloor', 1.1, 1.1);

	makeLuaSprite('darkness', 'darkness', -1000, -1000);
	setScrollFactor('darkness', 0.9, 0.9);
	scaleObject('darkness', 5, 5);

	addLuaSprite('bluewall', false);
	addLuaSprite('lightfloor', false);
	addLuaSprite('lights', false);
	addLuaSprite('darkness', true);
	
	close(true);
end