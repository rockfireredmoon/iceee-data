/*
 * Brave Death Creature 6
 * 
 * 5059 - Deathly, 5 Will, buff
 * 5157 - Assault, 3 might, add mcharge
 * 5204 - Wither, 4 will, add wcharge
 * 5303 - Malice Blast, 1 will, need 1-3 wcharge
 * 32766 - melee
 * 5221 - Bash (not used in the ability rip)
 * 5303 - Malice Blast (not used in the ability rip)
 */

info <- {
	name = "death_creature_brave_6",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Brave Death Creature script for level 6+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	ai.exec(function() {
		ai.use(5059);
	});
	main();
}

function main() {
	ai.use(32766);

	if(ai.get_will_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5303);
	}
	else if(ai.get_will() >= 3) {
    	ai.use(5204);
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
