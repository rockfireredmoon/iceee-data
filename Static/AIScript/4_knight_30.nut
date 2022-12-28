/*
 * Knight 30+
 * 
 * 5063 - Taurian Might, 5 might, buff
 * 5157 - Assault, 3 might, add 1 mcharge
 * 5221 - Bash, 1 might, need 1-3 mcharge
 * 32766 - melee
 */

info <- {
	name = "4_knight_30",
	enabled = true,
	author = "Emerald Icemoon",
	description = "Knight 30+"
}

function on_target_lost(targetCID)
	ai.clear_queue();

function on_target_acquired(targetCID) {
	ai.exec(function() {
		ai.use(5063);
	});
	main();
}

function main() {
	ai.use(32766);

	if(ai.get_might_charge() >= 1 && randmodrng(0, 2) == 0) {
		ai.use(5221);
	}
	else if(ai.get_might() >= 3) {
    	ai.use(5157);
		ai.queue(main, 2000);
		return;
	}
	ai.queue(main, 1000);
}
