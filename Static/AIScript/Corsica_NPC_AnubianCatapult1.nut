/*
 * Corsica NPC Anubian Catapult 1
 */

info <- {
	name = "Corsica_NPC_AnubianCatapult1",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Corsica NPC Anubian Catapult 1"
}

function main() {
	ai.use_once(5421);
	ai.queue(main, 10000);
}

main();
