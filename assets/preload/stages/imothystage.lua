function onCreate()
	-- the stage lmao
	makeAnimatedLuaSprite('wallanim', 'animatedwallb', -2000, -1000);
	addAnimationByPrefix('wallanim', 'idle', 'idle', 24, true)
 	setLuaSpriteScrollFactor('wallanim', 0.9, 0.9)
	scaleObject('wallanim', 1.8, 1.8);

	makeLuaSprite('floor', 'floor2', -950, 600);
	setScrollFactor('floor', 0.9, 0.9);
	scaleObject('floor', 1.9, 1.9);

	makeLuaSprite('wardrobeopen', 'owp', -300, 230);
	setScrollFactor('wardrobeopen', 1, 1);
	scaleObject('wardrobeopen', 1, 1);


	addLuaSprite('wallanim', false);
	addLuaSprite('floor', false);
	addLuaSprite('wardrobeopen', false);
	
	close(true);
end