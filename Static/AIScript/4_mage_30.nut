/*
 * Mage 30+
 * 
 * 5029 - Athena's Gift, 5 will, buff
 * 5040 - Mage Armor, 5 will, buff
 * 5173 - Firebolt, 3 will, 1 wcharge
 * 5230 - Pyro Blast, 1 will, need 1-3 wcharge
 * 32760 - ranged melee
 * 32766 - melee
 */

info <- {
	name = "4_mage_30",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Mage 30+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	ai.exec(function() {
		ai.use(5029);
		ai.use(5040);
	});
	main();
}

function main() {
	ai.use(32760);
	if(ai.get_will_charge() >= 3 && randmodrng(0, 2) == 0) {
		ai.use(5230);
	}
	else if(ai.get_will() >= 3) {
    	ai.use(5173);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
