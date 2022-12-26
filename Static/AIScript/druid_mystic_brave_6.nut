/*
 * Brave Druid Mystic
 * 
 * 5044 - Root, 6 will
 * 5045 - Spirit of Solomon, 5 will, buff
 * 5198 - Soul Needles, 3 will, add 1 wcharge
 * 5299 - Soul Burst, 1 will, need 1-3 wcharge
 * 32760 - ranged melee
 * 32766 - melee
 */

info <- {
	name = "druid_mystic_brave_6",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Brave Druid Mystic for level 6+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	ai.exec(function() {
		ai.use(5045);
	});
	main();
}

function main() {
	ai.use(32760);
	
	if(ai.get_will_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5299);
	}
	else if(ai.get_will() >= 3) {
    	ai.use(5198);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
