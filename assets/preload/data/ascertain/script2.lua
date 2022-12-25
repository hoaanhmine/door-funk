--[[
	HYPNOSIS SCRIPT INFO!
	
	var: storage for hypnosis, you can tweak to change how much the player starts with
	cap: max amount of hypnosis the player can gain before dying
	decay: the value in which hypnosis is removed (1x) or gained (0.5x)
	window: how strict of an opportunity the player has to press space, measured in degrees on each side
]]--

local hypnosis={
		var=0,
		cap=50,
		decay=5,
		window=100,
	}

local beatLength=0

function onCreatePost()
	beatLength=1/bpm*80
	makeLuaSprite('pendulumHit','GUI/pendulum',-200,350)
		screenCenter('pendulumHit','x')
		setObjectCamera('pendulumHit','hud')
		setProperty('pendulumHit.alpha',5.5)
		setProperty('pendulumHit.origin.y',0)
	addLuaSprite('pendulumHit',false)
	
	makeLuaSprite('pendulum','GUI/pendulum',-200,400)
		screenCenter('pendulum','x')
		setObjectCamera('pendulum','hud')
		setProperty('pendulum.alpha',0.0)
		setProperty('pendulum.origin.y',0)
	addLuaSprite('pendulum',false)
	
	makeLuaText('hypnosisCount','',1280,0,300)
		setObjectCamera('hypnosisCount','hud')
		setProperty('hypnosisCount.alpha',0)
		setProperty('hypnosisCount.color',getColorFromHex('FF6600'))
		setTextSize('hypnosisCount',32)
	addLuaText('hypnosisCount')
	
	makeLuaSprite('hypnosisShit','GUI/pendulum',0,0)
		makeGraphic('hypnosisShit',1280,720,'FF6600')
		setObjectCamera('hypnosisShit','hud')
		setProperty('hypnosisShit.alpha',0.0)
		setBlendMode('hypnosisShit','multiply')
	addLuaSprite('hypnosisShit',true)
end

function onStepHit()
	setProperty('hypnosisShit.alpha',(hypnosis.var/hypnosis.cap)*0.5)
end

function onSongStart()
	setProperty('pendulum.angle',0)
	doTweenAlpha('pendulumSpawn','pendulum',1,0.25,'linear')
	doTweenAngle('pendulumIN','pendulum',0,beatLength,'sineInOut')
end

function hypCount()
	local str=hypnosis.var/hypnosis.cap
	str=math.floor(str*100)
	str=str..'%'
	setTextString('hypnosisCount',str)
	setProperty('hypnosisCount.alpha',0.5)
	doTweenAlpha('hypnosisCount','hypnosisCount',0,0.25)
end

function onTweenCompleted(tag)
	if tag=='pendulumIN' then
		doTweenAngle('pendulumOUT','pendulum',0,beatLength*2,'sineInOut')
		hypnosis.var=hypnosis.var+(hypnosis.decay*0.5)
		if hypnosis.var>hypnosis.cap then setProperty('health',-1) end

	elseif tag=='pendulumOUT' then
		doTweenAngle('pendulumIN','pendulum',0,beatLength*2,'sineInOut')
		hypnosis.var=hypnosis.var+(hypnosis.decay*0.5)
		if hypnosis.var>hypnosis.cap then setProperty('health',-1) end
	end
end

function onUpdatePost()
	if getPropertyFromClass('flixel.FlxG','keys.justPressed.SPACE') then
		if getProperty('pendulum.angle')>(hypnosis.window*1) then
			hypnosis.var=hypnosis.var+5
			if hypnosis.var>hypnosis.cap then setProperty('health',-1) end
		elseif getProperty('pendulum.angle')<(hypnosis.window*-1) then
			hypnosis.var=hypnosis.var+5
			if hypnosis.var>hypnosis.cap then setProperty('health',-1) end
		else
			setProperty('pendulumHit.alpha',0.5)
			setProperty('pendulumHit.angle',getProperty('pendulum.angle'))
			doTweenAlpha('pendulumHit','pendulumHit',0,beatLength,'linear')
			hypnosis.var=hypnosis.var-5
			if hypnosis.var<0 then hypnosis.var=0 end
			hypCount()
		end
	end
end