function onCreate()
	-- the stage lmao
	makeLuaSprite('collision', 'meowskulls/ruins', -1000, -800);
	setScrollFactor('collision', 0.9, 0.9);
	scaleObject('collision', 1.2, 1.2);

	makeLuaSprite('walls', 'meowskulls/walls', -100, 100);
	setScrollFactor('walls', 0.9, 0.9);

	makeAnimatedLuaSprite('fire', 'meowskulls/fire', -2500, -1200);
	addAnimationByPrefix('fire', 'idle', 'idle', 24, true)
	setScrollFactor('fire', 0.9, 0.9);
	scaleObject('fire', 1.8, 1.8);

	makeAnimatedLuaSprite('fire2', 'meowskulls/fire', -1000, -1200);
	addAnimationByPrefix('fire2', 'idle', 'idle', 24, true)
	setScrollFactor('fire2', 0.9, 0.9);
	scaleObject('fire2', 1.8, 1.8);

	makeAnimatedLuaSprite('shoot', 'meowskulls/pewpew', -2500, -1200);
	addAnimationByPrefix('shoot', 'idle', 'idle', 24, true)
	setScrollFactor('shoot', 0.9, 0.9);
	scaleObject('shoot', 1.8, 1.8);

	addLuaSprite('collision', false);
	addLuaSprite('walls', false);
	addLuaSprite('fire', false);
	addLuaSprite('fire2', false);
	addLuaSprite('shoot', false);
	
	close(true);
end