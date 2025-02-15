/*
 * Brave Bow Druid 6
 * 
 * 5044 - Root, 6 will
 * 5181 - Sting, 3 might, add 1 mcharge
 * 5234 - Deadly Shot, 1 might, need 1-3 mcharge
 * 32760 - ranged melee
 * 32766 - melee
 */

info <- {
	name = "druid_bow_brave_6",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Brave Bow Druid script for level 6+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	main();
}

function main() {
	ai.use(32760);

	if(ai.get_might_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5234);
	}
	else if(ai.get_might() >= 3) {
    	ai.use(5181);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
