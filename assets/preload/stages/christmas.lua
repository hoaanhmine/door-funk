function onCreate()
	-- the stage lmao
	makeLuaSprite('christmasroom', 'christmasroom', -1400, -500);
	setScrollFactor('christmasroom', 0.9, 0.9);
	scaleObject('christmasroom', 1.4, 1.4);

	makeLuaSprite('lights', 'attachment', -650, -50);
	setScrollFactor('lights', 1, 1);
	scaleObject('lights', 1, 1);
	
	makeLuaSprite('tree', 'tree', -500, -150);
	setScrollFactor('tree', 0.9, 0.9);
	scaleObject('tree', 1.1, 1.1);

	makeLuaSprite('light', 'fire', -300, -400);
	setScrollFactor('light', 1, 1);
	scaleObject('light', 1, 1);
	setBlendMode('light','add')

	addLuaSprite('christmasroom', false);
	addLuaSprite('tree', false);
	addLuaSprite('lights', false);
	addLuaSprite('light', true);
	
	close(true);
end