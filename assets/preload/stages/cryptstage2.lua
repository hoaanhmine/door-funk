function onCreate()
	-- the stage lmao
	makeAnimatedLuaSprite('wallanim', 'cryptwall', -2000, -1000);
	addAnimationByPrefix('wallanim', 'idle', 'idle', 24, true)
	setScrollFactor('wallanim', 0.9, 0.9);
	scaleObject('wallanim', 1.8, 1.8);

	makeAnimatedLuaSprite('object1', 'flyingwardrobe', -500, -300);
	addAnimationByPrefix('object1', 'idle', 'idle', 24, true)
	setScrollFactor('object1', 0.9, 0.9);
	scaleObject('object1', 1.8, 1.8);

	makeAnimatedLuaSprite('object3', 'SMILES', -2000, -800);
	addAnimationByPrefix('object3', 'idle', 'idle', 24, true)
	setScrollFactor('object3', 0.9, 0.9);
	scaleObject('object3', 1.8, 1.8);

	makeAnimatedLuaSprite('object2', 'flyingwhat', -1300, -500);
	addAnimationByPrefix('object2', 'idle', 'idle', 24, true)
	setScrollFactor('object2', 0.9, 0.9);
	scaleObject('object2', 1.8, 1.8);
	
	makeLuaSprite('cryptfloor', 'cryptfloor', -650, 500);
	setScrollFactor('cryptfloor', 0.9, 0.9);
	scaleObject('cryptfloor', 1.1, 1.1);

	makeLuaSprite('objects', 'cryptbroken', -500, 600);
	setScrollFactor('objects', 0.9, 0.9);
	scaleObject('objects', 1.6, 1.6);

	makeLuaSprite('darkness', 'darkness', -2000, -1000);
	setScrollFactor('darkness', 0.9, 0.9);
	scaleObject('darkness', 5, 5);

	addLuaSprite('wallanim', false);
	addLuaSprite('cryptfloor', false);
	addLuaSprite('objects', true);
	addLuaSprite('darkness', true);
	addLuaSprite('object1', false);
	addLuaSprite('object2', false);
	addLuaSprite('object3', false);
	
	close(true);
end