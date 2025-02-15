/*
 * Thunderwalker Brave
 *
 * 5348 - Thunderbolt, 3 might, add 1 mcharge
 * 5349 - Thunder Blast, 1 might, need 1-3 mcharge
 * 32766 - melee
 */

info <- {
	name = "shroomie_brave",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Thunderwalker Brave script"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	main();
}

function main() {
	ai.use(32766);
	if(ai.get_might_charge() >= 2 + randmodrng(0, 3)) {
		ai.use(5349);
	}
	else if(ai.get_might() >= 3) {
    	ai.use(5348);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}

