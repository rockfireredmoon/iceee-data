/*
 * Mystic Creature Brave 6
 * 
 * 5058 - Mystical, 5 will, buff
 * 5157 - Assault, 3 might, add 1 mcharge
 * 5198 - Soul Needles, 3 will, add 1 wcharge
 * 5299 - Soul Burst, 1 will, need 1-3 mcharge
 * 32766 - melee
 * 5221 - Bash, 1 might, need 1-3 mcharge  (not in ability scan)
 */

info <- {
	name = "mystic_creature_brave_6",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Basic Mystic Creature script for level 6+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	ai.exec(function() {
		ai.use(5058);
	});
	main();
}

function main() {
	ai.use(32766);

	if(ai.get_will_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5299);
	}
	else if(ai.get_will() >= 3 && randmodrng(0,2) == 0) {
    	ai.use(5198);
		ai.queue(main, 2000);
		return;
	}
	else if(ai.get_might_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5221);
	}
	else if(ai.get_might() >= 3) {
    	ai.use(5157);
		ai.queue(main, 2000);
		return;
	}
	
	ai.queue(main, 1000);
}
