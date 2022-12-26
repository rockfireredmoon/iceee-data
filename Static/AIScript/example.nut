/*
 * Example
 * 
 * Used for lots of creatures. Just does ranged auto attack.
 */

info <- {
	name = "example",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Default Script."
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	main();
}

function main() {
	ai.use(32760);
	ai.queue(main, 1000);
}
