/*
 * Flytrap Brave
 * 
 * 5157 - Assault, 3 might, add 1 mcharge
 * 5347 - Flytrap Spray, 3 might, need 1-5 mcharge
 * 32766 - melee
 */

info <- {
	name = "flytrap_brave",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Flytrap brave"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	main();
}

function main() {
	ai.use(32766);
	if(ai.get_might_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5347);
	}
	else if(ai.get_might() >= 3) {
    	ai.use(5157);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
