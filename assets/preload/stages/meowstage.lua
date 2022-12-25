function onCreate()
	-- the stage lmao
	makeLuaSprite('fortnite', 'meowskulls/fortnite', -1000, -800);
	setScrollFactor('fortnite', 0.9, 0.9);
	scaleObject('fortnite', 1.8, 1.8);

	makeLuaSprite('light', 'BallerLight', -2000, -1800);
	setScrollFactor('light', 0.9, 0.9);

	addLuaSprite('fortnite', false);
	addLuaSprite('light', true);
	
	close(true);
end