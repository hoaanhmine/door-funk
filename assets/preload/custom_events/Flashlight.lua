Battery = 100
function onCreate()
    makeLuaText('batteryText', 'Battery: ' ..Battery, 300, screenWidth / 2 - 300 / 2, screenHeight / 2 - 300 / 1.5)
    addLuaText('batteryText')
    setTextSize('batteryText', 30);
end

function onEvent(name, value1, value2)
	if name == "Flashlight" then
		playSound('Psst', 0.5)
		runTimer('screech', (value1 - 0.2))
		runTimer('screech', (value1 - 0.1))
		runTimer('screech', value1)
		runTimer('screech', (value1 + 0.1))
		runTimer('screech', (value1 + 0.2))
    end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'screech' then
		if keyPressed('space') then
			characterPlayAnim('boyfriend', 'dodge', true)
			Battery = Battery - 5	
			setTextString('batteryText', 'Battery: ' ..Battery)
        end
		else
			characterPlayAnim('boyfriend', 'hurt', true);
			addHealth(-0.5)
			playSound('Bite', 0.5)
			setTextString('batteryText', 'Battery: ' ..Battery)
	end
end