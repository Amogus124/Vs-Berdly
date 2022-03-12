function onSongStart()
	noteTweenX("NoteMove1", 0, 731, 1, cubeInOut)
	noteTweenX("NoteMove2", 1, 844, 1, cubeInOut)
	noteTweenX("NoteMove3", 2, 955, 1, cubeInOut)
	noteTweenX("NoteMove4", 3, 1068, 1, cubeInOut)
	noteTweenX("NoteMove5", 4, 95, 1, cubeInOut)
	noteTweenX("NoteMove6", 5, 203, 1, cubeInOut)
	noteTweenX("NoteMove7", 6, 315, 1, cubeInOut)
	noteTweenX("NoteMove8", 7, 427, 1, cubeInOut)
end

function opponentNoteHit()
	health = getProperty('health')
	if noteType == 'KrisBot' then
		setProperty('health', health+ 0.02)
	elseif noteType == 'NoelleBot' then
		setProperty('health', health+ 0.02)
	elseif noteType == 'GF Sing' then
		setProperty('health', health+ 0.02)
	end
end
