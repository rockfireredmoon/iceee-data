/*
 * Ranged Druid 30+
 * 
 * 5044 - Root, 6 will
 * 5045 - Spirit of Solomon, 5 will, buff
 * 5198 - Soul Needles, 3 will, add 1 wcharge
 * 5299 - Soul Burst, 1 will, need 1-3 wcharge
 * 32760 - ranged melee
 * 32766 - melee
 */

info <- {
	name = "4_druid_range_30",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Ranged Druid 30+"
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
	if(ai.get_level() >= 10)
		ai.use(32760);
	else
		ai.use(32766);
		
	if(ai.get_will_charge() >= 3 && randmodrng(0, 2) == 0) {
		ai.use(5299);
	}
	else if(ai.get_will() >= 3) {
    	ai.use(5198);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
