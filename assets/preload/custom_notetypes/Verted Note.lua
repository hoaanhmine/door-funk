function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Verted Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Screech Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'screechNote'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'hitHealth', '-0.023'); --Default value is: 0.023, health gained on hit
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '0.075'); --Default value is: 0.0475, health lost on miss

			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false);
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
local healthDrain = 0;
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Screech Note' then
		-- put something here if you want
		playSound('BoomCloud', 1)
		characterPlayAnim('boyfriend', 'hurt', true);
		setProperty('boyfriend.specialAnim', true);
		addMisses(1);
		healthDrain = healthDrain + 0.7;
	end
end
-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Screech Note' then
		-- put something here if you want
	end
end

function onUpdate(elapsed)
	if healthDrain > 0 then
		healthDrain = healthDrain - 0.2 * elapsed;
		setProperty('health', getProperty('health') - 0.25 * elapsed);
		if healthDrain < 0 then
			healthDrain = 0;
		end
	end
end