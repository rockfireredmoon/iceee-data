/*
 * Corsica NPC Anubian Catapult 2
 */

info <- {
	name = "Corsica_NPC_AnubianCatapult2",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Corsica NPC Anubian Catapult 2"
}

function main() {
	ai.use_once(5422);
	ai.queue(main, 10000);
}

main();
