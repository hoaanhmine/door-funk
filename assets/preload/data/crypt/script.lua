	function onCreate()
-- Created By Snakyjoel (wow nothing bad for my first script)
  
	makeLuaSprite('instructions', 'crypt/instruction', 0, 1800);
	setScrollFactor('instructions', 1.0, 1.0);
	scaleObject('instructions', 1, 1);
	setObjectCamera('instructions', 'other')
	addLuaSprite('instructions', true);
     
end

function onStepHit()
	if curStep == 1 then
  	doTweenY('instructionsTweenY', 'instructions', 10, 1.0, 'cubeOut')
	end
	if curStep == 40 then
  	doTweenY('instructionsTweenY', 'instructions', 2000, 1.0, 'cubeIn')
	end
	if curStep == 55 then
		setProperty('instructions.visible', false);
	end
end
