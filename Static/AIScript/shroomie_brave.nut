/*
 * Shroomie Brave
 *
 * 5189 - Forcebolt, 3 might, add 1 mcharge
 * 5307 - Force blast, 1 might, need 1-3 mcharge
 * 32760 - ranged melee
 */

info <- {
	name = "shroomie_brave",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Basic Brave Shroomie script"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	main();
}

function main() {
	ai.use(32760);
	if(ai.get_might_charge() >= 2 + randmodrng(0, 3)) {
		ai.use(5307);
	}
	else if(ai.get_might() >= 3) {
    	ai.use(5189);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}

