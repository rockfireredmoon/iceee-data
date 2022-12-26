/*
 * Brave Frost Mage 6
 * 
 * 5029 - Athena's Gift, 5 will, buff
 * 5195 - Frost Spear, 4 will, add 1 wcharge
 * 5217 - Jarnsaxa's Kiss - 3 will, need 1-5 wcharge
 * 32760 - ranged melee
 * 32766 - melee
 */

info <- {
	name = "mage_frost_brave_6",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Basic Frost Mage script for level 6+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	ai.exec(function() {
		ai.use(5029);
	});
	main();
}

function main() {
	if(ai.get_level() >= 10)
		ai.use(32760);
	else
		ai.use(32766);

	if(ai.get_will_charge() >= 2 && randmodrng(0, 2) == 0) {
		ai.use(5217);
	}
	else if(ai.get_will() >= 3) {
    	ai.use(5195);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
