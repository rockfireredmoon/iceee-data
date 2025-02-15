/*
 * Frost Creature Brave 6
 * 
 * 5057 - Frozen, 5 will, buff
 * 5157 - Assault, 3 might, add 1 mcharge
 * 5195 - Frost Spear, 4 will, add 1 wcharge
 * 5217 - Jarnsaxa's Kiss - 3 will, need 1-5 wcharge
 * 32766 - melee
 * 5221 - Bash, 1 might, need 1-3 mcharge  (not found in ability scan)
 */

info <- {
	name = "frost_creature_brave_6",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Basic Frost Creature script for level 6+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	ai.exec(function() {
		ai.use(5057);
	});
	main();
}

function main() {
	ai.use(32766);

	if(ai.get_will_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5217);
	}
	else if(ai.get_will() >= 4) {
    	ai.use(5195);
		ai.queue(main, 2000);
		return;
	}
	
	if(ai.get_might_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5221);
	}
	else if(ai.get_might() >= 3) {
    	ai.use(5157);
		ai.queue(main, 2000);
		return;
	}
	
	ai.queue(main, 1000);
}
