/*
 * Newb Knight
 * 
 * 32766 - melee
 */

info <- {
	name = "Newb_Knight",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Newb Knight script"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	main();
}

function main() {
	ai.use(32766);
	ai.queue(main, 1000);
}
