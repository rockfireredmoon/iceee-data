/*
 * For the Warming brazier in Wailing Crypt
 */

info <- {
	name = "custom_waiting",
	enabled = true,
	author = "Emerald Icemoon",
	description = "For the Warming brazier in Wailing Crypt"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	main();
}

function main() {
	ai.use(5502);
	ai.queue(main, 2000);
}
