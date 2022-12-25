function onCreate()
	-- the stage lmao
	makeAnimatedLuaSprite('guide', 'animatedwall', -2000, -800);
	addAnimationByPrefix('guide', 'idle', 'idle', 24, true)
 	setLuaSpriteScrollFactor('guide', 0.9, 0.9)
	scaleObject('guide', 1.8, 1.8);

	makeLuaSprite('hedgehog', 'hotelfloor', -850, 600);
	setScrollFactor('hedgehog', 0.9, 0.9);
	scaleObject('hedgehog', 1.1, 1.1);

	makeLuaSprite('wasd', 'wp', -500, 100);
	setScrollFactor('wasd', 0.9, 0.9);
	scaleObject('wasd', 1, 1);


	addLuaSprite('guide', false);
	addLuaSprite('hedgehog', false);
	addLuaSprite('wasd', false);
	
	close(true);
end