/// @description animation and reset handling

sinPhase += sinSpeed
if sinPhase > 6.28 {
	sinPhase -= 6.28
}

sinHeight = sin(sinPhase) * sinStrength

