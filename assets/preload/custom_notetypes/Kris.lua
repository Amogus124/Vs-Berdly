function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Kris' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'KrisNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashTexture', 'KrisSplashes'); -- change splash
			setPropertyFromGroup('unspawnNotes', i, 'gfNote', true)
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
	-- if noteType == 'Kris' then
		-- if noteData == 0 then
			-- characterPlayAnim('gf', 'singLEFT', true)
		-- elseif noteData == 1 then
			-- characterPlayAnim ('gf', 'singDOWN', true)
		-- elseif noteData == 2 then
			-- characterPlayAnim('gf', 'singUP', true)
		-- else
			-- characterPlayAnim('gf', 'singRIGHT', true)
		-- end
	-- end
-- end

-- function noteMiss(id, noteData, noteType, isSustainNote)
	-- if noteType == 'Kris' then
		-- if noteData == 0 then
			-- characterPlayAnim('gf', 'singLEFTmiss')
		-- elseif noteData == 1 then
			-- characterPlayAnim ('gf', 'singDOWNmiss')
		-- elseif noteData == 2 then
			-- characterPlayAnim('gf', 'singUPmiss')
		-- else
			-- characterPlayAnim('gf', 'singRIGHTmiss')
		-- end
	-- end
-- end