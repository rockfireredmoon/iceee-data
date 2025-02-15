/*
 * Brave Fire Mage 1
 * 
 * 5173 - Firebolt, 3 will, 1 wcharge
 * 5230 - Pyro Blast, 1 will, need 1-3 wcharge
 * 32760 - ranged melee
 * 32766 - melee
 */

info <- {
	name = "mage_fire_brave_1",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Basic Fire Mage script for level 1+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	main();
}

function main() {
	if(ai.get_level() >= 10)
		ai.use(32760);
	else
		ai.use(32766);

	if(ai.get_will_charge() >= 1 && randmodrng(0, 2) == 0) {
		ai.use(5230);
	}
	else if(ai.get_will() >= 3) {
    	ai.use(5173);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
