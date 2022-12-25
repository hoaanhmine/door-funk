function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Vitamin Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'VITAMINNOTE_assets')
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '0.023')
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0')
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false)

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true)
			end
		end
	end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Vitamin Note' then
		doTweenColor('effect', 'boyfriend', 'FF7F00', 0.5, linear)
		playSound('bloxy', 1.5)
		runTimer('bloxyDuration', 30)
		triggerEvent('Change Scroll Speed', 1.5, 0.5)

	end
end
		health = getProperty('health')
    		if getProperty('health') < 1 then
       	 setProperty('health', health- 0.015);
	end

function onTimerCompleted(t, l, ll)
	if t == 'bloxyDuration' then
		doTweenColor('diffect', 'boyfriend', 'FFFFFF', 0.5, linear)
		triggerEvent('Change Scroll Speed', 1, 0.5)
	end
end