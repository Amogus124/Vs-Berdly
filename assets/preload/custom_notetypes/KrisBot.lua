function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an Instakill Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'KrisBot' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'NoNOTE_assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noAnimation', true)
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

local KrisSingAnims = {'singLEFT', 'singDOWN', 'singUP', 'singRIGHT'}
local KrisSingDir = 1
function opponentNoteHit(id, noteData, noteType, isSustainNote)
	health = getProperty('health')
	if noteType == 'KrisBot' then
		KrisSingDir = noteData
		characterPlayAnim('gf', KrisSingAnims[KrisSingDir+1], true)
		if difficulty >= 1 then
			setProperty('health', health + 0.04);
		else
			setProperty('health', health + 0.02);
		end
		-- if noteData == 0 then
			-- characterPlayAnim('gf', 'singLEFT', true)
		-- elseif noteData == 1 then
			-- characterPlayAnim ('gf', 'singDOWN', true)
		-- elseif noteData == 2 then
			-- characterPlayAnim('gf', 'singUP', true)
		-- else
			-- characterPlayAnim('gf', 'singRIGHT', true)
		-- end
	end
end

-- Called after the note miss calculations
-- Player missed a note by letting it go offscreen
