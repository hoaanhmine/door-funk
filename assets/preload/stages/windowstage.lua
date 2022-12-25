function onCreate()
	-- the stage lmao
	makeLuaSprite('windowstage', 'windowstage', -600, -400);
	setScrollFactor('windowstage', 0.9, 0.9);
	scaleObject('windowstage', 1.0, 1.0);

	addLuaSprite('windowstage', false);
	
	close(true);
end