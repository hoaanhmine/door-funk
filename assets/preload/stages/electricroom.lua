function onCreate()
	-- the stage lmao
	makeLuaSprite('wall', 'blackwall', -1000, -300);
	setScrollFactor('wall', 0.3, 0.3);
	scaleObject('wall', 1.8, 1.8);

	makeLuaSprite('lever', 'exit', 500, -150);
	setScrollFactor('lever', 1, 1);
	scaleObject('lever', 1.5, 1.5);

	makeLuaSprite('crate', 'crates', -200, 300);
	setScrollFactor('crate', 1, 1);
	scaleObject('crate', 1.5, 1.5);

	makeLuaSprite('front', 'frontwardrobes', -500, 600);
	setScrollFactor('front', 1, 1);
	scaleObject('front', 1.5, 1.5);

	makeLuaSprite('floor', 'metalfloor', -500, 650);
	setScrollFactor('floor', 1, 1);
	scaleObject('floor', 2, 2);

	makeLuaSprite('light', 'light', -1400, -2700);
	setScrollFactor('light', 0.9, 0.9);
	scaleObject('light', 4, 4);
	
	addLuaSprite('wall', false);
	addLuaSprite('floor', false);
	addLuaSprite('lever', false);
	addLuaSprite('crate', false);
	addLuaSprite('front', true);
	addLuaSprite('light', true);
	
	close(true);
end