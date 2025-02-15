/*
 * Melee Druid 30+
 *
 * 5045 - Spirit of Solomon, 5 will, buff
 * 5201 - Trauma, 3 might, add 1 mcharge
 * 5204 - Wither, 4 will, add wcharge
 * 5303 - Malice Blast, 1 will, need 1-3 wcharge
 * 32760 - ranged melee
 * 32766 - melee
 * 5234 - Deadly Shot, 1 might, need 1-3 mcharge  (not found in ability scan)
 */

info <- {
	name = "4_druid_melee_30",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Melee Druid 30+"
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
	ai.use(32766);

	if(ai.get_will_charge() >= 3 && randmodrng(0, 2) == 0) {		
		ai.use(5303);
	}
	else if(ai.get_might_charge() >= 3 && randmodrng(0, 2) == 0) {
		ai.use(5234);
	}
	else if(ai.get_will() >= 3 && randmodrng(0, 2) == 0) {
   		ai.use(5204);
		ai.queue(main, 2000);
		return;
	}
	else if(ai.get_might() >= 3) {
   		ai.use(5201);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
