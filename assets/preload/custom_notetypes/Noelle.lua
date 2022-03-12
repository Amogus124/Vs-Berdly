function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Noelle' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NolleoNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'NolleoSplashes'); -- change splash
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
			end
		end
	end
	--debugPrint('Script started!')
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
-- function goodNoteHit(id, noteData, noteType, isSustainNote)
	-- if noteType == 'Noelle' then
		-- if direction == 0 then
			-- characterPlayAnim('bf', 'singLEFT')
		-- elseif direction == 1 then
			-- characterPlayAnim ('bf', 'singDOWN')
		-- elseif direction == 2 then
			-- characterPlayAnim('bf', 'singUP')
		-- else
			-- characterPlayAnim('bf', 'singRIGHT')
		-- end
	-- end
-- end

-- function noteMiss(id, noteData, noteType, isSustainNote)
	-- if noteType == 'Noelle' then
		-- if direction == 0 then
			-- characterPlayAnim('bf', 'singLEFTmiss')
		-- elseif direction == 1 then
			-- characterPlayAnim ('bf', 'singDOWNmiss')
		-- elseif direction == 2 then
			-- characterPlayAnim('bf', 'singUPmiss')
		-- else
			-- characterPlayAnim('bf', 'singRIGHTmiss')
		-- end
-- 	end
--end