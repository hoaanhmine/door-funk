function onCreate()
	-- the stage lmao
	makeAnimatedLuaSprite('seekstage', 'seekstage', -6000, -2500);
	addAnimationByPrefix('seekstage', 'idle', 'idle', 24, true)
      setLuaSpriteScrollFactor('seekstage', 1, 1)
	scaleObject('seekstage', 1.8, 1.8);

	makeAnimatedLuaSprite('vignette', 'seekvignette', -1700, -1000);
	addAnimationByPrefix('vignette', 'idle', 'vignette instance 1', 24, true)
      setLuaSpriteScrollFactor('vignette', 1, 1)
	scaleObject('vignette', 4.7, 4.7);

	makeLuaSprite('redness', 'red', -2000, -700);
	setScrollFactor('redness', 1, 1);
	setBlendMode('redness','add')
	scaleObject('redness', 5, 5);

	addLuaSprite('seekstage', false);
	addLuaSprite('vignette', true);
	addLuaSprite('redness', true);

	if mustHitSection then
		setProperty('defaultCamZoom',1.2);
	else
		setProperty('defaultCamZoom',0.8);

	end

	if curBeat > 1 then
		if mustHitSection then
			setProperty('defaultCamZoom',1.8);
		else
			setProperty('defaultCamZoom',1.1);
		end
	end

	close(true);
end