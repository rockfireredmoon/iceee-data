/*
 * Earthrise Catapult Firing 1
 */

info <- {
	name = "Earthrise_flavor_catapultfiring1",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Earthrise Catapult Firing 1."
}

function main() {
	ai.use_once(5421);
	ai.queue(main, 10000);
}

main();
