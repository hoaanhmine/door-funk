function onCreate()
	-- the stage lmao
	makeLuaSprite('wall', 'redwall', -1000, -300);
	setScrollFactor('wall', 0.3, 0.3);
	scaleObject('wall', 1.8, 1.8);

	makeLuaSprite('bye', 'balcony', -500, -100);
	setScrollFactor('bye', 1, 1);
	scaleObject('bye', 1.5, 1.5);

	makeLuaSprite('floor', 'carpet', -1250, 500);
	setScrollFactor('floor', 1, 1);
	scaleObject('floor', 2, 2);
	
	addLuaSprite('wall', false);
	addLuaSprite('bye', false);
	addLuaSprite('floor', false);

	setProperty('defaultCamZoom', 0.85)

	function onUpdate()
	if mustHitSection == true then
		 setProperty('defaultCamZoom', 1.2)
			 end
	if mustHitSection == false then
			setProperty('defaultCamZoom', 0.85)
		 end
	end
	
	close(true);
end