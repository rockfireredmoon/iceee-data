/*
 * Rogue 30+
 *
 * 5036 - Feline's Grace, 5 might, buff
 * 5165 - Assail - 3 might, add 1 mcharge
 * 5166 - Assail - 3 might, add 1 mcharge (same damage)
 * 5225 - Disembowel, 1 might, need 1-3 mcharge 
 * 32766 - melee
 */

info <- {
	name = "4_rogue_30",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Rogue 30+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	ai.exec(function() {
		ai.use(5036);
	});
	main();
}

function main() {
	ai.use(32766);

	if(ai.get_might_charge() >= 3 && randmodrng(0, 2) == 0) {
		ai.use(5225);
	}
	else if(ai.get_might() >= 3) {
   		ai.use(5165);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
