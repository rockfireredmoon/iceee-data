/*
 * Henge Glow
 */

info <- {
	name = "custom_henge_glow",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Henge Glow Effects"
}

glow_phase <- 1;

function main() {
	ai.visual_effect("Henge" + glow_phase);
	glow_phase++;
	if(glow_phase > 8)
		glow_phase = 1;
	ai.queue(main, 10000);
}

main();