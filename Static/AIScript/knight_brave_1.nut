/*
 * Brave Knight 1
 * 
 * 5157 - Assault, 3 might, add 1 mcharge
 * 5221 - Bash, 1 might, need 1-3 mcharge
 * 32766 - melee
 */

info <- {
	name = "knight_brave_1",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Basic Brave Knight script for level 1+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	main();
}

function main() {
	ai.use(32766);
	if(ai.get_might_charge() >= 3 && randmodrng(0, 2) == 0) {
		ai.use(5221);
	}
	else if(ai.get_might() >= 3) {
    	ai.use(5157);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
