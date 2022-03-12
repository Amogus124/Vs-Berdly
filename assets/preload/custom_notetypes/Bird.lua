function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Bird' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'BirdNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'BirdSplashes'); -- change splash
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	precacheImage('staticSplash')
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Bird' then
		if direction == 0 then
			characterPlayAnim('dad', 'singLEFT', true)
		elseif direction == 1 then
			characterPlayAnim ('dad', 'singDOWN', true)
		elseif direction == 2 then
			characterPlayAnim('dad', 'singUP', true)
		else
			characterPlayAnim('dad', 'singRIGHT', true)
		end
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen