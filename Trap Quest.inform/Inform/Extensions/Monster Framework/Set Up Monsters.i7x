Set Up Monsters by Monster Framework begins here.

The setting up dungeon monsters rules is a rulebook.
The setting up woods monsters rules is a rulebook.
The setting up hotel monsters rules is a rulebook.
The setting up mansion monsters rules is a rulebook.

To regionally place (M - a monster):
	remove M from play;
	bore M for 0 seconds;
	now M is released;
	now the health of M is the maxhealth of M;
	while M is not regional or M is in the location of the player or M is nearby:
		now M is in a random placed room.

To Set Up Monsters:
	if debugmode > 0, say "Now setting up monsters...";
	scramble monster adjectives;
	repeat with M running through off-stage monsters:
		unless M is woman, now M is nonexistant; [Reset their adjective so it goes back to "unused" state]
	if debugmode > 0, say "Now setting up dungeon monsters...";
	follow the setting up dungeon monsters rules;
	if Woods01 is placed, follow the setting up woods monsters rules;
	if Hotel01 is placed, follow the setting up hotel monsters rules;
	if debugmode > 0, say "Now setting up mansion monsters...";
	if Mansion01 is placed, follow the setting up mansion monsters rules;
	repeat with M running through alive nonexistant monsters:
		if debugmode > 1, say "Setting up initial state of [M]...";
		set up M.

To set up (M - a monster):
	reset M;
	now the monstersetup of M is 1;
	now the health of M is the maxhealth of M. [Default set up for a monster with no specific defined setup]

[!<ComputeMonsterSetUpFix>+

REQUIRES COMMENTING

+!]
To compute MonsterSetUpFix:
	repeat with M running through alive monsters in the location of the player:
		if monstersetup of M is 0:
			Set Up M.

Definition: a monster (called M) is nonsetup:
	if the monstersetup of M is 0, decide yes;
	decide no.

Set Up Monsters ends here.
