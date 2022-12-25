function onCreate()
	-- the stage lmao
	makeLuaSprite('forestwall', 'screech/forestwall', -900, -1000);
	setScrollFactor('forestwall', 0.9, 0.9);
	scaleObject('forestwall', 1.8, 1.8);

	makeLuaSprite('bulb', 'screech/lightbulb', -500, -500);
	setScrollFactor('bulb', 1, 1);
	scaleObject('bulb', 1, 1);
	
	makeLuaSprite('sfloor', 'screech/sfloor', -1500, 600);
	setScrollFactor('sfloor', 0.9, 0.9);
	scaleObject('sfloor', 2, 2);

	makeLuaSprite('shadow', 'screech/shadow', -1000, -1500);
	setScrollFactor('shadow', 0.9, 0.9);
	scaleObject('shadow', 5, 5);

	addLuaSprite('forestwall', false);
	addLuaSprite('sfloor', false);
	addLuaSprite('bulb', false);
	addLuaSprite('shadow', true);
	
	close(true);
end