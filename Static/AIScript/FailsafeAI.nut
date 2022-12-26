/*
 * FailsafeAI
 * 
 * Note: seems to be used as a test script for some creatures not found for combat in gameplay. 
 * Using a placeholder script here
 * 
 * 5189 - Forcebolt, 3 might, add 1 mcharge
 * 5307 - Force blast, 1 might, need 1-3 mcharge
 * 32760 - ranged melee
 * 32766 - melee
 */

info <- {
	name = "FailsafeAI",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Failsafe AI."
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	main();
}

function main() {
	ai.use(32766);
	if(ai.get_might_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5307);
	}
	else if(ai.get_might() >= 3) {
    	ai.use(5189);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
