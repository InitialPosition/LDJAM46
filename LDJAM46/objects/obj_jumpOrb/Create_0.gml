/// @description setup

sinPhase = 0
sinSpeed = 0.1
sinStrength = 1.4
sinHeight = sin(sinPhase) * sinStrength
active = 1

system = part_system_create()
emit = part_emitter_create(system)

part_emitter_region(system, emit, x, x + sprite_width, y, y + sprite_height, ps_shape_ellipse, ps_distr_invgaussian)
part_emitter_stream(system, emit, global.part_jumpOrb, 1)
