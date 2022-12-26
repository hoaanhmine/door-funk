function onCreate()
	-- the stage lmao
	makeLuaSprite('baller', 'baller/ballerStage', -2000, -1800);
	setScrollFactor('baller', 0.9, 0.9);
	scaleObject('baller', 1.8, 1.8);

	makeLuaSprite('light', 'BallerLight', -2000, -1800);
	setScrollFactor('light', 0.9, 0.9);

	addLuaSprite('baller', false);
	addLuaSprite('light', true);
	
	close(true);
end
