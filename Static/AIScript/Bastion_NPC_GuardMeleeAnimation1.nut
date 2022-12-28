/*
 * Bastion NPC Guard Melee 1
 */

info <- {
	name = "Bastion_NPC_GuardMeleeAnimation1",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Bastion NPC Guard Melee 1"
}

anim_phase <- 0;
anim_abs <- [5425,5426,5427,5428];

function main() {
	anim_phase++;
	ai.use_once(anim_abs[anim_phase]);
	if(anim_phase > 3)
		anim_phase = 1;
	ai.queue(main, 4000);
}

main();