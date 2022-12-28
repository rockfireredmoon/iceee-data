/*
 * Fire Creature Brave 6
 * 
 * 5056 - Blazing, 5 will, buff
 * 5157 - Assault, 3 might, add 1 mcharge
 * 5173 - Firebolt, 3 will, add 1 wcharge
 * 32766 - melee
 * 5221 - Bash, 1 might, need 1-3 mcharge  (not found in ability scan)
 * 5230 - Pyro Blast, 1 will, need 1-3 wcharge  (not found in ability scan)
 */

info <- {
	name = "fire_creature_brave_6",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Basic Fire Creature script for level 6+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	ai.exec(function() {
		ai.use(5056);
	});
	main();
}

function main() {
	ai.use(32766);

	if(ai.get_will_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5230);
	}
	else if(ai.get_will() >= 4) {
    	ai.use(5173);
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
