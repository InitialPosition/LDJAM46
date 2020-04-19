/// @description particles

system = part_system_create()
emit = part_emitter_create(system)

part_emitter_region(system, emit, x + 1, x + sprite_width - 1, y + 2, y + 2, ps_shape_line, ps_distr_gaussian)
