
"Hoosegow" by Ben Collins-Sussman and Jack Welch

The story headline is "A Wild West Wreck".
The release number is 1.
The story creation year is 2010.
The story genre is "Western".

The story description is "Muddy's plan done landed you and your partner in the hoosegow. Now you're fixing to rectificate the matter before the marshal introduces you to the business end of a hangin' rope at dawn."

The intro-text is a text that varies.  Intro-text is "As the sun sets on the plains, the sheriff angrily snaps on the cuffs. You are shoved into the coach and land on top of Muddy Charlie and the pile of silver dollars, which until recently had been the property of the Missouri, Kansas & Texas Line.[paragraph break]Muddy furtively whispers, 'Hang tight, Rick! You done good blowing up that tunnel -- I just didn't plan on the sheriff getting word ahead of time, is all. That were powerful bad luck.'[paragraph break]The sheriff climbs onto his horse, spits, and you begin to rumble forward. 'You boys really got it coming this time,' he yells back cheerfully.[paragraph break]Muddy shakes his head. 'No offense, Sheriff, but I reckon you got the wrong men. We was just on our way to the theater.'[paragraph break]The sheriff disagrees. 'The only place you boys are heading is straight to the... [paragraph break]".

Include Menus by Emily Short.
Include Adaptive Hints by Eric Eve.
Include Plurality by Emily Short.
Include Default Messages by David Fisher.

Use full-length room descriptions, american dialect and the serial comma.
Use memory economy.

Release along with cover art.

Book 1 Mechanics

Chapter No More Get All
[In the standard rules, Take is defined with the grammar token "things" rather than "thing". To expurge "get all" from the game, "take" must be redefined as something new, with full grammar here. This is based on a helpful usenet post by Khelwood, dated 21 December 2006.]

Understand the commands "take","carry" and "hold" as something new.

Understand "take [thing]" as taking.
Understand "take off [thing]" as taking off.
Understand "take [thing] from [thing]" as removing it from.
Understand "take [thing] off [thing]" as removing it from.
Understand "take inventory" as taking inventory.
Understand the commands "carry" and "hold" as "take".

Understand the command "get" as something new.
Understand "get out/off/up" as exiting.
Understand "get [thing]" as taking.
Understand "get in/into/on/onto [thing]" as entering.
Understand "get off [thing]" as getting off.
Understand "get [thing] from [thing]" as removing it from.

Understand the command "pick" as something new.
Understand "pick up [thing]" or "pick [thing] up" as taking. 
	
Chapter Rules Modifications

[Override inherent prudeness -- allow PC to kiss anything]
The block kissing rule is not listed in any rulebook.
The kissing yourself rule is not listed in any rulebook.


Chapter Time

Time-checking is an action applying to nothing.  Understand "time" as time-checking.
Carry out time-checking:
	if the player carries the pocketwatch
	begin;
		if the location of the player is dark, say "It's too dark to see your watch.";
		otherwise say "Your pocketwatch reads [time of day + 1 minute].";
	otherwise;
		say "You have no way of checking the time.";
	end if.
	

Section Intervisibility
[Taken from example 346 "Rock Garden"]

Intervisibility relates rooms to each other in groups. The verb to be connected with implies the intervisibility relation.

Definition: a room is inter-visible if it is connected with more than one room.

After deciding the scope of the player when the location is an inter-visible room:
	repeat with other place running through rooms which are connected with the location:
		unless the other place is the location, place the other place in scope.

Rule for reaching inside a room (called target) which is connected with the location:
	let way be the best route from the location to the target;
	if the way is not a direction:
		say "You can't get over to [the target] from here.";
		deny access;
	say "(first heading [way])[command clarification break]";
	try going way;
	if the player is in the target, allow access;
	otherwise deny access.

After looking when the location is an inter-visible room:
	repeat with other place running through rooms which are connected with the location:
		if the other place is not the location, describe locale for other place.

Chapter Declare Global Variables

The last mentioned thing is a thing that varies.

Muted is a truth state that varies. Muted is false.

Chapter Class Definitions

A prop is a kind of thing. It is usually portable. [If props can be carried out of their initial room, they should not be in the room description, but appear in the room contents list.]

A furniture is a kind of supporter. It is usually scenery and fixed in place. [In general, furniture descriptions should be integrated into room descriptions.] 

A thing can be large. Usually a thing is not large.

Everything has some text called texture. The texture of something is usually "".
Everything has some text called scent. The scent of something is usually "". 

A thing has some text called the inscription. The inscription of something is usually "".

Chapter General Routines
		
[borrowed from example I7 documentation, example 424 Odins:]
After printing the name of something (called the target): 
    change the last mentioned thing [quotation mark][paragraph break][quotation mark]to the target.

To say is-are: 
    if the last mentioned thing is plural-named, say "are"; 
    otherwise say "is".

To say it-they:
	if the last mentioned thing is plural-named:
		say "they"; 
	otherwise:
		if the last mentioned thing is a person:
			if the last mentioned thing is male:
				say "he";
			otherwise:
				say "she";
		otherwise:
			say "it".

To say (regular verb - some text) in correct agreement:
	say "[regular verb][if the last mentioned thing is not plural-named]s".


Chapter Verbs
	
[
###TOCONSIDER: Since "use" is so general, if beta-esting shows that players are using "use" constructions frequently, we can re-route them appropriately here.

Section Using

Understand the command "use" as something new.  Using is an action applying to one thing.

Understand "use [a thing]" as using.

Report using:
	if the noun is:
		-- xxx		
]

Section Chewing

Chewing is an action applying to one thing. Understand "chew [a thing]" as chewing.

Check chewing:
	if the noun is not tobacco:
		say "Tobacco's the only thing worth chewing." instead;
	if tobacco is not in the mouth:
		say "(first sticking some in your maw)[command clarification break]";
		move the tobacco to the mouth.
		
Carry out chewing:
	increase the chew count by one;
	if the chew count is:
		-- 1: say "The tobacco is getting juicy and soft.";
		-- 2: say "It tastes pretty horrid.";
		-- 3: say "You wonder if tobacco is really good for you, like the doctors say.";
		-- 4: say "The taste of the tobacco is beginning to disgust you. You'd like to get it out of your mouth.";
		-- 5: say "You have an urge to spit the tobacco out.";
		-- 6: say "Now you know why it's called spitting image. If you don't spit the stuff out of your mouth, you're going to be sick.";
		-- 7: say "You can't abide the taste of the tobacco one second more. You spit it out the window. [paragraph break][if the tobacco is not commented][quotation mark]Hey, you're a right powerful tobacco spitter -- not bad for a fancy plantation gentleman,[quotation mark] observes Muddy. [quotation mark]You might consider entering a contest at the next fair we come to.[quotation mark][paragraph break][end if]";
			now the tobacco is commented;
			now the chew count is zero;
			move the tobacco to the tin;
		-- otherwise: say "### debug problem. overchewed tobacco".
				  
Does the player mean chewing the tobacco:
	it is very likely.[to prevent the player from chewing the cabinet by default ?!]

Section Digging

Digging is an action applying to one thing. Understand "dig [a thing]" or "dig with [a thing]" as digging.

Carry out digging:
	if the noun is:
		-- floor: 
		say "Dig with what?";
		-- spoon: 
		say "[one of]That sounds like one of Muddy's plans. [or][stopping]The floor is concrete.";
		-- otherwise:
		say "That's crazy talk.";
		stop the action.
		
Does the player mean digging the floor:
	it is very likely.
	
Opening it with is an action applying to two things. Understand "open [a thing] with/using [other things]" as opening it with.

Check opening it with:
	if the noun is locked:
		try unlocking the noun with the second noun instead;
	if the noun is the can:
		if the second noun is not the spur:
			say "You don't seem to be able to open [the noun] with [the second noun]." instead;
		otherwise:
			if the spur is part of the right boot:
				if the player wears the right boot:
					say "You twist and contort, trying to bring your right boot to the can, but it's futile." instead;
				otherwise:
					say "It's very awkward trying to open the can with the heel of your right boot. The boot part keeps getting in the way." instead.
		
Carry out opening it with:
	now the noun is open;
	say "You open [the noun] with [the second noun][if the noun contains something] revealing [the contents of the noun][end if].";
	if the noun is the can:
		award one point.
	

Section Listening
[Listen is implemented through insteads. Override this general instead rule with more specific ones as needed]

Instead of listening:
	pick a phrase from the Table of Ambient Noise;
	say ".";
	[to avoid conflicting with some other sound-generating random event]
	change the block stage business flag to true.
	
Table of Ambient Noise
times-used		verbage
0			"All the sounds of the Earth are like music"
0			"You seldomly hear a discouraging word"
0			"You hear the sounds of the men working on the chain gang"
0			"From the boiler, you hear the occassional hiss of steam"
0			"In the distance, a train blows its whistle"
0			"You hear the creaking of Muddy's two-cent boots"
0			"From outside, you hear the raspy call of the turkey vulture"
0			"The shrill peeping of the black vulture cuts through the night"
0			"You enjoy the trilling eloquence of the yellow-breasted gulch runner"
0			"The weepy, melodramatic whine of the exotic prairie emu saddens you"
0			"If you are not mistaken, you hear the pentatonic song of the hook-beaked plains vulture"
0			"From across the street, you hear a player piano grinding out a song"
0			"Over in the saloon, you hear a brawl break out"
0			"Something in here is going [quotation mark]Lub dub, lub dub[quotation mark] over and over and over again"
0			"You can barely hear the crackle of the fire in the boiler"
0			"Concentrating, you can hear the paint drying on the walls"
0			"You hear [if Flash is in the office]Flash's slow, easy[otherwise]Muddy's wheezy[end if] breathing"
0			"From somewhere off in the hills, you hear a coyote howling at the moon"

Section Looking Under

Instead of looking under the noun:
	try searching the noun instead.

Section Playing

Understand the command "play" as something new.  Playing is an action applying to one thing.  Understand "play [a thing]" as playing.

Check playing:
	if the noun is not the harmonica:
		say "You don't rightly know how to play such a thing.";
		stop the action.

Section Reading
		
Understand the command "read" as something new. Reading is an action applying to one thing. Understand "read [a thing]" as reading.

Check reading:
	If the noun is a man:
		say "You've never been good at reading people." instead;
	otherwise if the inscription of the noun is "":
		say "That's not something you can read." instead.
			
Carry out reading:
	say the inscription of the noun;
	say paragraph break.
		
Section Reloading

Reloading is an action applying to one thing. Understand "reload [a thing]" or "load [a thing]" as reloading.

Check reloading:
	if the noun is not the gun:
		say "That ain't something you can load." instead.
		
Carry out reloading:
	say "You don't have any bullets."
	
Section Remembering

Understand the command "think" as something new.

Remembering is an action applying to nothing. Understand "remember" or "think" as remembering.

Carry out remembering:
	say "You'd prefer not to. Too many memories of [one of]the war and how you came to oppose its ideology[or]how your plantation was torched[or]how you ended up as little more than a lackey to an aging itinerant cook with a penchant for intricate but ultimately doomed schemes[or]your troubled past[stopping]." 
	
Section Ringing

Ringing is an action applying to one thing. Understand "ring [a thing]" as ringing.

Check ringing:
	if noun is not the bell:
		say "You can't really ring [a noun]." instead.
		
Carry out ringing:
	say "You shake the bell and it jingles merrily."
	
Section Shooting

Shooting is an action applying to one thing. Understand "shoot [a thing]" as shooting.

Carry out shooting:
	say "Bang!" [### a placeholder]
	
Section Smelling
	
[Like listening, smelling is performed through instead rules. The generic smell rule tracks bad smells, which decay over time.]

[A procedural rule while smelling:
	ignore the can't reach inside rooms rule.]
	
The ambient odor is a number that varies. The ambient odor is 10.


Instead of smelling:  
	let the regverb be "smell";
	if the noun is the location:
		let R be 1;
		repeat with N running from 1 to the number of rows in Table of Relative Smells:
			change R to N;
			if the intensity in row N of the the Table of Relative Smells is greater than the ambient odor, break;
		if R is not the number of rows in the Table of Relative Smells:
			decrease R by one;
		choose row R in the Table of Relative Smells;
		say "[verbage entry].";
		the rule succeeds;
	otherwise if the noun is a backdrop:				
		do nothing;[backdrops are not in the location; the default rule serves adequately.]
	otherwise:
		if the scent of the noun is "":
			[note that this presumes that people all have a defined scent]
			say "The [noun] [the regverb in correct agreement] [one of]unremarkable[or]ordinary[or]not particularly interesting[in random order].";
			the rule succeeds;
		if the noun is the player:
			 say "You smell";
		otherwise if noun is a person:
			if the noun is male:
				say "He";
			otherwise:
				say "She";
			say " smells";
		otherwise if the noun is part of the player:
			say "Your [noun] [the regverb in correct agreement]";
		otherwise:
			say "[The noun] [the regverb in correct agreement]";
		say " [scent of the noun]."


Table of Relative Smells [###TODO Buff generic smells, add variety]
intensity		verbage
10				"[if the location of the coffee is not Limbo]Freshly brewed coffee[otherwise]The waving wheat sure smells sweet[end if]"
20				"It smells mostly nice"
30				"You notice some odor in the air"
50				"There is an unpleasant odor"
100				"It stinks to high heaven"
	
Section Spitting

[###TODO kill the parenthetical expression after tin in inventory -- it betrays that the tobacco isn't in the tin, contrary to the static description.

May need to consider cases where the tobacco isn't in tin, mouth, or held by Rick.]

Understand "tobacco" or "chaw" or "chewing tobacco" or "wad" as "[wad]".

This is the tobacco sequence rule:
	if the tobacco is in the mouth and the chew count is greater than one:
		continue the action;
	otherwise:
		if the tobacco is in the mouth and the chew count is less than one:
			if the chew count has been greater than one:
				say "(first chewing some tobacco)[command clarification break]";
				increase the chew count by one;
				continue the action;
			otherwise:
				say "You ain't chawn your tobacco enough yet.";
				the rule fails;
		otherwise:
			if the tobacco is not in the mouth: 
				if the tobacco has been in the mouth and the player encloses the tobacco:
					say "(first ";
					if the tobacco is in the tin and the tin is closed:
						now the tin is open;
						say "opening the tin and ";
					say "chewing some tobacco)[command clarification break]";
					increase the chew count by one;
					continue the action;
					the rule succeeds;
				otherwise:
					say "There ain't no tobacco in your mouth. Spitting ain't hardly for nothing, what you ain't got no tobacco to spit with!";
					the rule fails.

SimpleSpitting is an action applying to nothing. Understand "spit" or "spit [wad]" as simpleSpitting.

Check simpleSpitting:
	Abide by the tobacco sequence rule.
		
Carry out simpleSpitting:
	say "[one of]Straight up? It would hit you in the eye on the return trip. [or][stopping]You have to say what you want to spit it at."

DirectedSpitting at is an action applying to one visible thing. Understand "spit [wad] at/on/onto/towards [something]" or "spit at/on/onto/towards [something]" as directedSpitting at.

Check directedSpitting at:
	Abide by the tobacco sequence rule.
		
Carry out directedSpitting at:
	if the outdoors encloses the noun:
		say "The [noun] is too far away." instead;
	if the office encloses the noun and the deputy is in the office and the noun is not a man:
		say "The deputy gives you a frightful stern look, so you decide not to spit at anything in the office while he's around." instead;	
	if the jail cell encloses the noun and the noun is not the floor and the noun is not Muddy and the noun is not the window:
		say "You're not keen to spit at anything in the jail cell with you. A man don't spit where he lives, you reckon." instead;
	if the noun is large: 
		say "[big target]" instead;
	if the noun is:
		-- Muddy: 
			say "Muddy grins and dodges the tobacco. The wad flies out the window.";
		-- Pete: 
			say "You aren't particularly God-fearing, but it doesn't sit right with you to steal a man's tobacco and then spit it at him. Stealing it is okay, though." instead;
		-- Flash: 
			if Flash is not spat upon:
				say "The stomach-churning mass of glistening tobacco pulp splashes on the floor, just in front of Flash. His nose twitches, as his finely honed bloodhound sense of smell detects tobacco ball. Your stomach churns as he stretches lazily forward and laps it up, swallowing it in one gulp before falling asleep again.";
				now flash is spat upon;
			otherwise:
				say "The vision of what happened last time is seared into your brain like a brand on the rear of a prize cattle. You do not want to see that again." instead;
		-- deputy: 
			say "He's dumb, but he ain't mean. You don't want to ruin his day." instead;
		-- sheriff: 
			say "That would only get him angry." instead;
		-- marshal: 
			say "You don't think that will win any points with him." instead;
		-- army: 
			say "They have guns with bullets. You have tobacco." instead;
		-- floor:
			say "[one of]The tobacco juice splays outward from the point of impact and slowly soaks into the bone-dry concrete, leaving a lasting stain that you can be proud of.[or]You spew another work of art on the jail floor.[or]Splotch![stopping]";
			move the stain to the jail cell;
		-- window:
			say "The wad shoots out the window and into the street.";
		-- bell:
			if Flash is in the office:
				if the bell is not rung:
					say "Ding! The wad hits the bell so hard that it spins around on the hook several times, clanging like a church bell on Sunday.[paragraph break]The ameoba-like mass of fat and fur known to you as Flash leaps immediately to his feet, saliva dripping from his edentulous jowls. He lunges like a champion fencer for his food bowl. His leash snaps taut, pulling the lever away from the front door and towards the strange machine at the rear of the office.[paragraph break]The boiler hisses and gurgles, steam jets from the rivet joints in the pipe that connects to the machine, and the machine itself vibrates and rumbles for a minute. A white cup drops from a chute and brown liquid squirts from a nozzle and fills the cup. The smell of fresh coffee pervades the office.[paragraph break]Finding no food in his bowl, Flash huffs perfunctorily and resumes his former position, pulling the lever back to the middle position.";
					now the bell is rung;
					make coffee;
				otherwise: [bell has already been rung, Flash is still around]
					say "The wad ricochets off the bell with a metallic [quotation mark]ding![paragraph break]Flash reflexively jumps towards his feeding bowl, pulling the lever and somehow brewing a cup of coffee. Finding no food, the despondent dog returns to favorite place in front of the boiler, shutting off the coffee machine.";
					make coffee;
			otherwise:[still the bell, but nothing to do with Flash]
				say "The bell rings hollowly.";
		-- the hook:
			say "The bell would be more fun." instead;
		-- the grate:
			say "There is a sizzling sound.";
		-- the lever:
			say "The tobacco sails right past the thin lever, hits the boiler pipe and slides down and out of sight.";
		-- the cup:
			say "Plop!";
		-- the coffee:
			say "It submerges, without spilling a drop. Yech.";
		-- otherwise: 
			say "The tobacco hits [the noun], but drops off."; [covers anything else.]
	now the chew count is zero;
	move the tobacco to the tin.
	
To say big target:
	say "[one of]Where's the challenge in that?[or]Hardly a test of your tobacco spitting prowess.[or]Child's play. Your grandmother could spit tobacco at [a noun].[at random]".
	
Section Touch
[Touching is implemented through an after rule, which is nice in terms of making use of existing relationships about whether something is touchable or not. If an item has a texture attribute, this rule makes use of it.]

After touching something (called the item):
	if the item is the player:
		say "You feel normal. Nothing out of the ordinary, really.";
	otherwise:
		let the regverb be "feel";
		if the texture of the item is "":
			let the T be "[one of]unremarkable[or]as you'd expect[or]like [it-they] should[or]normal[in random order]";
		otherwise:
			let T be the texture of the item;
		if the item is part of the player:
			say "Your";
		otherwise:
			if the item is not proper-named:
				say "The";
		say " [item] [the regverb in correct agreement] [T]."
	
[So many things are smooth and possibly metallic that we'll indulge in this petty optimization. Or, at least, I think it is an optimization.]
To say smooth:
	say "smooth".
	
To say metallic:
	say "[smooth] and metallic". 

Chapter General Insteads

Chapter Not Ready For Prime Time - Not for release

[When play begins:
	change library message debug to on.]

[cf. _Enchanter_:  "blorb : safely protect an object as though in a strong box"]
Blorbing is an action applying to nothing.  Understand "blorb" as blorbing.
Carry out blorbing:
	if the deputy is in the office:
		move the deputy to limbo;
		say "Poof!  In a cloud of smoke, the deputy disappears for testing purposes.";
	otherwise:
		move the deputy to the office;
		say "Poof!  The deputy magically reappears, oblivious to your testing.".


Section Muting

[To reduce the clutter during debuggin; suppreses stage business]
Muting is an action out of world. Understand "mute" as muting.

Carry out muting:
	say "[bracket]Mute[if muted is true]Off[otherwise]On[end if][close bracket][line break]";
	if muted is true:
		change muted to false;
	otherwise:
		change muted to true;
	
Chapter Initialize

The maximum score is 10. [change this later]

When play begins:
	say the intro-text;
	say "[bracket]Press Space To Continue[close bracket]";
	wait for any key;
	clear screen;
	change the time of day to 7:15 PM;
        	change the left hand status line to "[the player's surroundings]";
        	change right hand status line to "Score: [score]/[maximum score]";
	move the harmonica to Muddy.
	
After printing the banner text:
	say "Type [quotation mark]help[quotation mark] for instructions, credits, and license -- or just roll into town guns ablazin[apostrophe].[paragraph break]";
	say "In the twilight, you sight the sheriff's sturdy brick office near the edge of town. 'That's mighty fine construction,' notes Muddy, sounding less feisty now. 'Mighty fine indeed.' The coach rolls to a halt and a thick arm yanks you roughly from your seat. You land awkwardly in the rutted street, where the sheriff holds you in place with the heel of one boot. He yells to his men, 'Bring the coach on around, we got to impound that evidence.' You are manhandled into the sheriff's office and shoved into a small holding cell.[paragraph break]The deputy wakes with a start, whips his dusty boots off the desk and stands, tucking his shirt back into his pants. The sheriff gives him a brief, judgmental glance and offhandedly tosses an arrest warrant on the desk. He barks, 'Jimbo, listen up. Picked up these two down near the train. A federal marshal will be coming for them at eight o'clock tomorrow morning. There's going to be a hanging!'. The deputy nods slowly. The sheriff continues, 'Please take care of our [apostrophe]guests[apostrophe]. I got some personal business to see to, so you is in charge.' The deputy smiles until the sheriff adds, 'Jimbo, don't screw up,' as he heads out the door."
	

Chapter Every Turn

Every turn:
	[avoid penalizing time for non-actions, a nuance]
	if the current action is taking inventory or the current action is looking:
		change the time of day to 1 minute before the time of day;
	[adjust the odor]		
	if the ambient odor is greater than ten:
		decrease the ambient odor by ten;
	[stage business]
	if muted is false:
		Consider the stage business rules;
	[unblock stage business for next turn]
	Change the block stage business flag to false;	
	[###TODO Add other every-turn items]
	
Section Phrase Picker
[To select a canned phrase from a table, choosing randomly amongst the less frequently said phrases. Tables need at least to entries.]

To pick a phrase from (source - a table-name):
	let R be a number;
	sort the source in times-used order;
	repeat with N running from 2 to the number of rows in the source:
		change R to N;
		if times-used in row N of the source is greater than times-used in row 1 of the source, break;
	if R is not the number of rows in the source:
		decrease R by one;
	let T be a random number between 1 and R;
	choose row T in the source;
	increase the times-used entry by one;
	say "[verbage entry]".

Section Stage Business

[Set the block stage business flag to suppress stage business at the end of that turn sequence -- helpful for scenes with long dialogue and descriptions. To make something not come up until at least one cycle through, change the times-used to "1" in the table]

The block stage business flag is a truth state that varies. The block stage business flag is false.

The stage business rules is a rulebook.

The block all stage business rule is listed first in the stage business rules. 

This is the block all stage business rule:
	if the block stage business flag is true:
		the rule succeeds.
	
The Muddy's stage business rule is listed after the block all stage business rule in the stage business rules.

This is the Muddy's stage business rule:
	if a random chance of 1 in 10 succeeds:
		pick a phrase from the Table of Muddy Actions;
		say paragraph break;
		the rule succeeds.
		
Table of Muddy Actions
times-used		verbage
0					"muddy action 1"
0					"muddy action 2"	
0					"muddy action 3"
		
The Flash's stage business rule is listed after the Muddy's stage business rule in the stage business rules.
		
This is the Flash's stage business rule:
	if Flash is not in Limbo and a random chance of 1 in 10 succeeds:
		if a random chance of 8 in 10 succeeds:
			pick a phrase from the Table of Common Flash Actions;
		otherwise:
			pick a phrase from the table of Rare Flash Actions;
		say paragraph break;
		the rule succeeds.
		
Table of Common Flash Actions
times-used		verbage
0					"flash action 1"
0					"flash action 2"	
0					"flash action 3"			
	
Table of Rare Flash Actions
times-used		verbage
0					"rare flash action 1"
0					"rare flash action 2"	
0					"rare flash action 3"

The Pete's stage business rule is listed after Flash's stage business rule in the stage business rules.

This is the Pete's stage business rule:
	[can direct Pete's actions to hint context-specifically (e.g., on a scene-happening basis) by selecting appropriate table]
	if Pete is not recognized:	
		make no decision;
		[Pete only becomes noticeable when they recognize him as Pastor Pete; this can 
		be either by Muddy getting the pamphlet, or a certain amount of time after Pete is examined (as a failsafe)]
	if Pete is not in Limbo and a random chance of 1 in 20 succeeds:
		if a random chance of 8 in 10 succeeds:
			pick a phrase from the Table of Pete's Rants;
		otherwise:
			pick a phrase from the table of Pete's Strange Behavior;
		say paragraph break;
		the rule succeeds.
		
Table of Pete's Rants
times-used		verbage
0					"rant 1"
0					"rant 2"	
0					"rant 3"

Table of Pete's Strange Behavior
times-used		verbage
0					"strange pete 1"
0					"strange pete 2"	
0					"strange pete 3"

Table of Pete's Vulture Clues
times-used		verbage
0					"vulture clue 1"
0					"vulture clue 2"	
0					"vulture clue 3"
		
The Deputy's stage business rule is listed after Pete's stage business rule in the stage business rules.
	
This is the Deputy's stage business rule:
	if the Deputy is not in Limbo and a random chance of 1 in 10 succeeds:
		pick a phrase from the Table of Deputy's Doings;
		say paragraph break;
		the rule succeeds.
		
Table of Deputy's Doings
times-used		verbage
0					"deputy action 1"
0					"deputy action 2"
0					"deputy action 3"
	
The Environmental stage business rule is listed last in the stage business rules.

This is the Environmental stage business rule:
	if a random chance of 1 in 10 succeeds:
		pick a phrase from the Table of Environmental Stage Business;
		say paragraph break;
		the rule succeeds.
		
Table of Environmental Stage Business
times-used		verbage
0			"A fly buzzes past your ear and lands on the ceiling."
0			"Through the window, you hear the strums of a neary banjo."
0			"You hear kids playing in the street, or perhaps a gang of drunken vigilantes exacting mob justice. It's hard to tell for sure."

Chapter Limbo
[A place for offstage stuff]

Limbo is a room.

Section Can

The can is a openable closed container in Limbo. Understand "metal", "metallic" or "bean" as the can. The description of the can is "A[if the can is open]n open[otherwise] closed[end if] metal can with a paper label saying [quotation mark]BEANS[quotation mark]. On the back, some fine print says, [quotation mark]Precooked beans. No claim is made regarding the cardioprotective nature of this product. May cause abdominal distension if ingested. No fitness of purpose is implied. No warranty is provided for personal or other injury, or injury or loss related directly or indirectly to the use of this product. By opening this can, you agree to the terms of service posted in town.[quotation mark]". The scent of the can is "[if the can is open]like beans. No surprise there[otherwise]like the piece of rancid meat it was next to[end if]". The texture of the can is "[metallic]".

Instead of opening the can:
	say "What do you want to open it with?"
	
Some beans are in the can. Understand "beans", "canned" or "precooked" as the beans. The description of the beans is "Beans. The disgusting legume that haunted your childhood." The scent of the beans is "delicious and yet somehow disgusting". The texture of the beans is "slimy and gelatinous".

Does the player mean doing something with the beans:
	it is likely.

The bean counter [:-)] is a number that varies. The bean counter is zero.

Before eating beans:
	try silently switching score notification off;
	if the bean counter is:
		-- 0: 
		say "When you were a child, you remember visiting your cousins, who all liked beans. Your aunt insisted that if they could eat beans, so could you. You choked on them, and coughed them up, and they made fun of you. Since then, you don't even like the way they smell. The beans, that is. Actually, your cousins are kind of rank too.[paragraph break]Nonetheless, your stomach is growling and you could do with a meal.[paragraph break][bracket]You have dealt with a repressed childhood memory in a constructive manner, your score just went up by two points[close bracket][paragraph break]";
		increase the score by two;
		-- 1: 
		say "The beans disgust you even more than the rancid meat.[paragraph  break][bracket]The thought is enough to make you lose a point.[close bracket][paragraph break]";
		decrease the score by one;
		-- 2: 
		say "No. It's a matter of principle now.[paragraph break][bracket]Your score just went back up by a point for being so principled.[close bracket][paragraph break]";
		increase the score by one;
		-- 3: say "Give Muddy the damn beans. He likes them, but they you can't stand to even look at them.";
		-- otherwise: say "No way. No how. But Muddy likes them well enough.";
	increase the bean counter by one;
	try silently switching score notification on;
	stop the action.

Section Meat

The meat is a prop in Limbo. Understand "rancid", "rotting", "flesh", or "meal" as the meat. The description of the meat is "[one of]On closer inspection, it looks like a rancid piece of meat, a metallic can and a spoon.[paragraph break]The deputy has been watching you out of the corner of his eye and he smiles sardonically. [quotation mark]I see you found your dinner. Or was that last week's dinner? Har, har![quotation mark][or]A grayish half-chewed haunch of something only slightly less lucky than you. Between waxy fibers and greasy gristle, the surface of the meat teems with... you don't want to look closer. It's vulture food, not something you'd want to pass your lips.[stopping]". The scent of the meat is "like it should be buried". The texture of the meat is "sticky in some places, fuzzy in others".

Section Spoon

The spoon is a prop in Limbo. Understand "bent" or "old" as the spoon. The description of the spoon is "A bent old spoon." The texture of the spoon is "cool".

Section Stain

The stain is scenery in Limbo. The description of the stain is "A dark brown stain." The texture of the stain is "rough". The scent of the stain is "like dirt".

Section Warrant

The warrant is a prop. The description of the warrant is "A piece of paper with black printing and red handwriting." The warrant can be edited. The warrant is not edited. The texture of the warrant is "like expensive paper".

To say warrant-text:
	say "FEDERAL WARRANT. This warrant is issued this eleventh day of December in the year of Our Lord Eighteen Hundred and Sixty Nine and duly executed by the hand of United States Army Major General Philip H. Sheridan of Fort Sill, the Indian Territory of these United States of America. The fugitives Mudlark Abercromby MacGyver alias [quotation mark]Muddy,[quotation mark] alias [quotation mark]Mudshoe,[quotation mark] alias [quotation mark]Pensicola Thelma,[quotation mark] and one Major Richard Carter, alias [quotation mark]Gentleman Rick,[quotation mark] alias [quotation mark]Poor Richard,[quotation mark] alias [quotation mark]Gumball Ricky,[quotation mark] both formerly of the Confederate States Army, having been implicated by observation and circumstance of innumerable delicta, dacoiteries, iniquities, infringements, infractions, and indeed immorality, as well as trangressions, trespassing and trainstopping, are considered deleterious and detrimental to the welfare of the State, and THEREFORE, ordered thereupon that a Mittimus be made out to keep them confined until such time as they be discharged for proper hanging[if the warrant is edited] of the Sheriff's portrait on the office wall[end if]."


Chapter Jailhouse Region

The jailhouse is a region.  The Office and Jail Cell are part of the jailhouse.

The ceiling is a backdrop in the jailhouse.  The description of the ceiling is "The jailhouse ceiling is stucco and too high to touch. "

The sky is a backdrop in the jailhouse.  The description of the sky is "Outside the window, the moon rises on a cloudless night. In the distance, a wake of vultures saws the air, circling their prey.".

[TODO:  ceiling and sky should not be reachable]


Chapter Office

The office is a room. The description of the office is "[one of]A one room jailhouse is fitting for this jerkwater town. [or][stopping]There's a big, wooden desk in the middle of the room[if the deputy is sitting], and behind it sits the deputy[end if]. Just behind the desk is a fancy cabinet, with real glass in the door[if the cabinet door is open], which is open[end if]. [if the portrait is hung up]An aesthetically questionable portrait of the sheriff hangs on the office wall[otherwise]Next to the cabinet, a large, framed picture of the sheriff stands on the floor[end if]. To the side of the desk, there is a weird looking contraption: clearly, some sort of steam boiler which is connected by pipes to a strange looking machine. On the opposite side of the room, two swinging doors lead back to town."

Section Bell

The bell is a prop. The bell is on the hook. The description of the bell is "A shiny silver bell with a black handle[if the bell is on the hook]. It is hanging by the doorway on a small hook[end if]." The bell can be rung. The bell is not rung. The texture of the bell is "surprisingly heavy".

The hook is part of the swinging doors.  The hook is a supporter.  The description of the hook is "A small metal hook screwed into the door jam.[if the bell is on the hook] A bell hangs from the hook[end if]."

Section Boiler

Position is a kind of value. The positions are whistleward, neutral, and coffeeward.

The boiler is a large furniture in the office. The description of the boiler is "A pot-bellied inferno, with a grate on the front. Above the combustion chamber, there is a round, rivet-studded ball which in turn leads into a junction. One pipe runs sideways to the bronze machine behind the desk, while the main pipe runs straight up through the roof. There is a lever at the junction which looks like it could either swing towards the front door or towards the rear of the office.  [lever position]." Understand "combustion" or "chamber" as the boiler. The texture of the boiler is "painfully hot". The scent of the boiler is "of soot and burning coal".

The grate is part of the boiler. The description of the grate is "Through the grate, you can see the red-hot interior of the boiler." The texture of the grate is "hot enough to burn someone".

The ball is a large part of the boiler. The description of the ball is "A thick, cast iron ball filled with enough pressurized steam to blow you from here to kingdom come." Understand "iron" or "rivet" or "rivets" as the ball. The texture of the ball is "hot to the touch".

[The gauge is part of the boiler. The description of the gauge is "A high-tech gauge, with a needle that moves back and forth as the black ball bubbles and hisses. The print behind the need reads [quotation mark]low,[quotation mark] [quotation mark]safe,[quotation mark] and [quotation mark]danger[quotation mark]. Right now, the needle is in the [quotation mark]safe[quotation mark] zone." Understand "needle" or "pressure" as the gauge.]

The lever is part of the boiler. The description of the lever is "A swinging metal arm that pivots on the pipe junction. The arm can swing towards either the door or the back of the office. [lever position]".  The lever has position. The lever is neutral. The texture of the lever is "[smooth] and warm".

To say lever position:
	say "Right now, it is nearer to ";
	if the position of the lever is:
		-- whistleward: 
			say "the office door";
		-- neutral: 	
			say "neither position";
		-- coffeeward:
			say "the rear of the office";
	if Flash is in the office:
		say ". Flash the brave guard dog is tied by a leash to the lever";
	say "."

Section Cabinet

The cabinet is a large closed openable scenery container in the office. The top of the cabinet is a part of the cabinet. The top of the cabinet is a supporter. The cabinet door is part of the cabinet. The description of the cabinet is "About three feet tall, and made of oak. The cabinet's top is covered with circular stains from drinking bottles, but the rest of the cabinet is in good shape[if the whiskey is on the cabinet]. A bottle of whiskey stands on the cabinet[end if]. A [if the cabinet door is closed]door covers the front of the cabinet and opens on brass hinges. The contents of the cabinet are recognizable through the cabinet's uneven glass. Despite the distortion, you see your guns and some kind of shiny yellow object. Maybe gold, you think, hopefully[otherwise]The cabinet door is open and inside you see [a list of things in the cabinet].[end if]." The texture of the cabinet is "fine-grained".

Does the player mean doing something with the cabinet:
	It is very likely.
	
[###CONSIDER: suppress disambiguation message]

The banana is an edible prop in the cabinet. The description of the banana is "[one of]Sometimes a banana is just a banana[or]A bright yellow banana[stopping]." The texture of the banana is "soft and mushy". The scent of the banana is "fruity".

[TODO:  what happens when we point the banana at someone?  Put it in our ear?]

To say rawhide:
	say "like old rawhide";

The gunbelt is a wearable prop. The description of the gunbelt is "A leather gun belt with holster." The texture of the gunbelt is "well broken-in and soft". The scent of the gunbelt is "[rawhide]".

The holster is an open container that is part of the gunbelt. The description of the holster is "A leather pouch that holds your gun." The scent of the holster is "[rawhide]".

The gun is a prop in the holster. The description of the gun is "[one of]You quickly inspect your gun and are alarmed to discover that it's unloaded[or]A simple six-shooter pistol[stopping]." The indefinite article of the gun is "your". Understand "pistol" as the gun. The scent of the gun is "like machine oil and gunpowder". The texture of the gun is "solid and heavy".

After taking the gunbelt:
	say "You strap on your gun belt.";
	now the player wears the gunbelt.

Section Chair

The chair is a large furniture in the office. The description of the chair is "A heavy chair of polished maple[one of]. The sort of chair you used to have in your dining room[or][stopping]. It looks out of place in this run-down office[if the deputy is sitting]The chair is occupied by the deputy[end if]." [###CONSIDER implementing a description of what incidental activity the deputy is performing; could be used both here and in the deputy description.]

The scent of the chair is "like an amalgam of the butts that have sat on it over the years. Not pleasant". The texture of the chair is "like an expensive piece of furniture".

Section Desk

The desk is a large furniture in the office. The drawer is a closed openable container that is part of the desk. The description of the desk is "A beat-up old wooden desk with time-worn corners, and a pitted, scratched surface.[if the drawer is mentioned]drawer description[end if]." The texture of the desk is "old and battered".

The description of the drawer is "A small drawer". The drawer can be mentioned. The drawer is not mentioned. The drawer is lockable and locked. The matching key of the drawer is the small brass key. The scent of the drawer is "like cedar. Maybe this is where they keep their hamsters?"

After opening the drawer:
	say "[one of]The lock clicks and you slide the drawer open revealing a yellow telegram and sheaf of papers titled [quotation mark]Patent[quotation mark][or]You open the drawer[if the drawer contains something]revealing [a list of things in the drawer][end if][stopping]." 
	
The telegram is in the drawer. The description of the telegram is "A yellow paper on the stationary of the Western Union telegraph company. The message on the telegram is addressed to the sheriff and reads: [quotation mark]AGREE TO YOUR OFFER [bracket]STOP[close bracket] WILL SUPPLY MACHINE PARTS IN EXCHANGE FOR 5000 US DOLLARS IN SILVER COIN [bracket]STOP[close bracket] CONGRATULATIONS ON WINNING LOTTERY [bracket]STOP[close bracket] SIGNED JEFFRIES & BRAND STEAMWORKS CO LTD [bracket]STOP[close bracket][bracket]END[close bracket][quotation mark]." Understand "paper", "yellow", and "message" as the telegram. The texture of the telegram is "like cheap, almost tissue-thin paper".

The patent is in the drawer. The description of the patent is "A thick technical document describing the coffee machine invented by the sheriff[one of]. Reading through it, you can see his plans to make these machines in factories and to sell them throughout the country. Your mind reels in horror at the prospect of coffee shops on every street corner selling fancy, steamed beverages[or][stopping]." The texture of the paper is "like a crisp, freshly printed document".

Section Outdoors

The outdoors is a transparent scenery container in the office.

The range is a supporter in the outdoors. The description of the range is "The deer and the antelope are playing."

The fields are a plural-named supporter in the outdoors. The description of the fields is "Corn, mostly."

The deer is a male animal on the range. 

The antelope is a female animal on the range. 

Instead of examining an animal (called trophy) on the range:
	say "The [trophy] stares back at you momentarily and then runs off with the antelope. Ungulates are very private, you know.";
	move the deer to Limbo;
	move the antelope to Limbo.	

Section Portrait

The portrait is a large scenery prop in the office. The portrait can be hung up. The portrait is not hung up. The description of the portrait is "A bombastic portrait of the sheriff who is dressed in a Napoleanic uniform save for the ten gallon hat. In the background, dogs play poker." The scent of the portrait is "like oil paints".

Section Protocappuccinomatic

The protocappuccinomatic is a large furniture in the office. The description of the protocappuccinomatic is "All bronze and shiny, with lots of pipes, valves, grommets, and flanges, the word [quotation mark]Protocappuccinomatic[quotation mark] is written on the main body of the machine. The device stands about five feet high and must weigh a ton. A sturdy iron pipe runs from the machine to the boiler." The printed name of the protocappuccinomatic is "machine". Understand "strange machine", "device", "strange", "bronze" or "contraption" as the protocappuccinomatic. The scent of the device is "like coffee beans". The texture of the protocappuccinomatic is "[smooth] and warm".

The iron pipe is a large part of the protocappuccinomatic. The description of the iron pipe is "Heavy-duty fitted steam pipes, like they use on locomotives." Understand "pipes" as the iron pipe. The texture of the iron pipe is "hot".

The cup is in Limbo. The description of the cup is "A white porcelein mug [if the coffee is in the cup]containing hot coffee[end if][if the coffee is tainted], which has been laced with the juice of the Peruvian Snoozeberry[end if]." The texture of the cup is "[if the cup contains coffee]warm[otherwise]cool[end if]". The scent of the cup is "of [if the cup contains coffee]fresh[otherwise]stale[end if] coffee".

Some coffee is in the cup. The description of some coffee is "Steaming hot, black Joe." The indefinite article of coffee is "a cup of". The coffee can be tainted. The coffee is not tainted. The scent of the coffee is "[one of]delicious[or]inviting[or]irresistable[or]tantalizing[at random]". The texture of the coffee is "steaming hot".

The nozzle is part of the protocappuccinomatic. The description of the nozzle is "A tapering outlet." Understand "outlet" as the nozzle. The scent of the nozzle is "like coffee". The texture of the nozzle is "ridged and tapering".

The chute is part of the protocappuccinomatic. The description of the chute is "A tube on the side of the machine." Understand "tube" as the chute. The texture of the shoot is "[smooth]".

To make coffee:
	now the coffee is in the cup;
	move the cup to the protocappuccinomatic.

Section Swinging Doors

The swinging doors are a large plural-named scenery door in the office. The swinging doors are north of the office. The description of the swinging doors is "Two swinging louvered doors meet in the middle at chest height. You can see out the door, towards the open range and some farm fields.  A hook hangs next to the door[if the bell is on the hook], with a bell hanging on it[end if]." The texture of the swinging doors is "dry and splintery".


Section Whiskey

The whiskey is prop on the top of the cabinet. The printed name of the whiskey is "bottle of whiskey". The scent of the whiskey bottle is "like the cheapest whiskey you could imagine, and then a dollar cheaper still." The texture of the whiskey bottle is "cool and [smooth]".

Chapter Jail Cell

The Jail Cell is west of the jail door.   The jail cell is connected with office.   "[if unvisited]Why are you not surprised to have landed right back in the hoosegow after another one of Muddy's dubious plans? Will you ever learn? You weren't brought up for this sort of life -- how did it come to this? [paragraph break][end if]The small jail cell is brick on three sides, metal bars on the other, with [if the gate is locked]a tightly locked[otherwise]an unlocked[end if] gate.  A small window is set into the brickwork above your head.  Through the jail bars you can see the sheriff's office.".

The jail cell contains the player.

Instead of inserting something inedible into the mouth:
	say "That ain't hardly something to go putting into your mouth."
	
After inserting something into the mouth:
	say "You pop [the noun] into your gaping maw."

	
Section Floor

The floor is a backdrop in the jail cell. The description of the floor is "Rough, dirty[if the stain is on the floor], and stained[end if] concrete".

Section Gate

The gate is a large door.  The gate is scenery.  The gate is west of the office and east of the Jail Cell.  The gate is locked.  The description of the gate is "A metal gate stands between you and freedom. The gate is set into the metal bars which surround your cell, and its hinges must be internal. The gate has a massive lock which clicked definitively behind you when you were thrown into the cell." The texture of the gate is "cold and unyielding".

The gate lock is part of the gate.


Section Stool & Bench

The stool is a large portable supporter in the jail cell.  "A broken stool lies on the floor." [###TODO:  describe differently (in both descriptions) if broken vs. repaired.]  The description of the stool is "foo". The texture of the stool is "like it has been worn [smooth] over the years". 

The bench is a large furniture in the jail cell.  The description of the bench is "A long wood bench made of rough, splintery planks[if pete is on the bench]. You ignore the man with the black suit who is lying on the bench[end if][if the bench is not investigated]. [bench sekrits][end if]." The bench can be investigated. The bench is not investigated. The texture of the bench is "like rough wood".

Instead of searching the bench:
	if the bench is not investigated:
		say "[bench sekrits]."
	
To say bench sekrits:
	say "Under the bench, you notice the remnants of a meal";
	move the meat to the jail cell;
	move the spoon to the jail cell;
	move the can to the jail cell;
	now the bench is investigated.

Section Harmonica

The jail cell contains a harmonica.  The harmonica is a prop.  The description of the harmonica is "The harmonica is attached to the wall by a silvery chain.  In the fading light from outside the window, you can barely make out some kind of inscription on it.".  The harmonica can be discussed.  The harmonica is not discussed.  The harmonica can be first-heard-by-deputy.  The harmonica is not first-heard-by-deputy. The scent of the harmonica is "like last week's saliva". Understand "inscription" as the harmonica. Understand "engraving" as harmonica.

The play-counter is a number that varies.  The play-counter is zero. [Number of times harmonica is played AFTER deputy has left.]

Instead of examining the harmonica for the first time:
	if the harmonica is not discussed:
		say "[initial harmonica dialogue]";
	now the harmonica is discussed;
	try examining the harmonica.
	
Instead of taking the harmonica for the first time:
	if the harmonica is not discussed:
		say "[initial harmonica dialogue]";
	now the harmonica is discussed.

Check playing the harmonica:
	if the player does not carry the harmonica:
		say "You got to be holding it first.";
		stop the action.

Carry out playing the harmonica:
	if the deputy is in the office:
		if the harmonica is not first-heard-by-deputy:
			say "You tentatively blow on it a bit, but you're not rightly sure what you're doing.[paragraph break]The deputy grimaces, 'Knock off that racket, you two. A noise like that, a man can't get to thinking straight. Settle down now, you hear? I got me some reading to do.' The deputy unfolds the warrant, furrows his brow and begins reading. You can tell because his lips are moving. Slowly.";
			now the harmonica is first-heard-by-deputy;
		otherwise:
			say "You play the harmonica again;  the deputy storms out in disgust.[paragraph break]"; [TODO:  invoke common routine for his leaving, involving explanation of Flash and such]
			move the deputy to limbo;
			say "Muddy says, 'Nice one.  Hey -- I reckon I saw that screw up there wiggle a bit when you played the harmonica. I didn't say nothing on account what the deputy was here.'  He points to a screw holding in one of the cell bars.";
	otherwise:  [no deputy present]
		if the play-counter is:
			-- 0:
			say "Tentatively, you blow a few notes. The bars in the jail cell rattle sympathetically.[paragraph break]'Look at that, boy', Muddy laughs, 'I swear that screw up there holding that bar is wiggling loose!'";
			-- 1:
			say "Again, the room resonates with the rich and vibrant tones of a bagpipe connected to the blowhole of a baluga whale.[paragraph break]Muddy points excitedly towards the top of the gray bar, 'When you played, that screw worked its way out more. It's like you got some kind of sonic screwdriver or something! I think one more time will do it.'[paragraph break]";
			-- 2:
			say "A spark flies as a screw vibrates out of the ceiling, rebounds in a shower of sparks off the concrete floor of the jail cell roles under the deputy's desk.   A gray bar falls loose from the ceiling and lands at your feet.[paragraph break]'You done it!' shouts Muddy.'[paragraph break]";
			move the screw to limbo;
			move the gray bar to the jail cell;
			move the gap to the jail cell;
			now the gap is part of the bars;
			-- otherwise:
			say "You blow a few more notes, but you're not getting any better.";
		increase the play-counter by one.

The inscription of the harmonica is "'Donated to the Crawdad's Gulch Municipal Hoosegow by the Gunslinger's Widows Association, Chapter Forty-One'". The texture of the harmonica-textbox is "lightly engraved".

Instead of reading harmonica for the first time:
	say "[initial harmonica inscription dialogue]".
	
The chain is part of the harmonica.  The description of the chain is "You pause to inspect the chain that tethers the harmonica to the wall. The links are fine as cream gravy, and there isn't a spot of rust. From your professional experience in the jewelry industry, primarily on the selling side, you recognize that this well-crafted chain is probably silver and would fetch a good penny."

Instead of pulling the harmonica:
	say "You give the harmonica a little tug, and then you pull harder, putting your back into it. The fine silver chain pulls taut, but is well crafted and doesn't give at all."

Instead of pulling the chain:
	say "The chain won't break, it's powerful strong.".

[TODO:  After we define 'use' verb:  Instead of using the harmonica:  try playing it.]

Instead of going when the player is in the jail cell:
	if player is carrying the harmonica:
		move the harmonica to the jail cell;
		say "As you leave to go, the harmonica is yanked away from you by the wall-chain.[paragraph break]";
	continue the action.

Section Bars

The bars are scenery in the jail cell.   Understand "bar" as the bars. The description of the bars is "[one of]You look across the street at the saloon. Oh wait, did you mean the prison bars? Yeah, probably. Anyhow, the bars to your cell reach from floor to ceiling and are made of matte black metal. [if the gray bar is part of the bars]All except one, which is sort of gray in color. [end if]They are a bit under an inch thick, and they are reinforced by three tiers of horizontal bars. The gate to your cell is framed in the same black metal and inset into this meshwork of bars.[or]Your jail cell is bordered by metal bars on three sides. The bars are matte black[if the gray bar is part of the bars], except for one which is slightly lighter in color -- a gray one[otherwise] with a tiny gap where a gray bar used to be[end if].[stopping]". The texture of the bars is "[metallic]".

Instead of attacking the bars:[###TODO: one should only sound hollow until the gray bar drops out]
	say "Muddy stands back as you let loose with your full fury and pound on the metal bars. As you beat them senseless, you notice that one of them sounds hollow. But which was it?".

The gray bar is part of the bars.  The gray bar is a prop.  The description of the gray bar is "The gray bar is just a shade lighter than other cell bars.  [if the gray bar is part of the bars]You notice that the bar is held to the ceiling by a screw the size of a railroad spike.[end if][if the player holds the gray bar]It doesn't weigh much at all, and it's hollow.[end if]". The texture of the gray bar is "lighter than it looks".

The gap is scenery in limbo.  The description of the gap is "You don't pay no mind to the gap -- it ain't big enough to even get your arm through."

Instead of taking or pulling the gray bar:
	if the gray bar is part of the bars:
		say "The gray bar is loose, but still held in place by a large screw that connects it to the ceiling.";
	otherwise:
		move the gray bar to the player;
		say "You hold it lengthwise and stare down its hollow shaft at Muddy. He looks back at you.  'Don't that just beat all,' ponders Muddy.".
		
The screw is part of the gray bar.  The description of the screw is "A large, rusty screw.  It's holding a gray bar in place.".

Instead of taking the screw:
	if the player is on the stool:
		say "You try to grab it, but it won't budge.";
	otherwise:
		say "The screw is too high for you to reach.".
		
[TODO:  pulling, pushing, or attacking the bars (or anything escape-ish) should enhance some sort of "deputy anger" scale, allowing him to react and eventually shoot the player.]


Section Window and Street

The street is a room.  "A dusty road with a few buildings lining it."  The street contains a plant and a barrel.

[Taken from example 20]
The cell window is a door.  The cell window is scenery.  The description of the cell window is "A barred window about a foot square."  The cell window is west of the jail cell and east of the street.  The cell window is locked.

Understand "look out [something]" as searching.
Instead of searching the window:
	if the player is in the jail cell and the player is on the stool:
		say "(standing on tiptoes) Through the window, you make out [a list of things in the Street].";
	otherwise:
		say "The window is too high above you.".
Instead of climbing the window: 
	try entering the window.
Understand "climb through [something]" as climbing. Understand "jump through [something]" as climbing.
Instead of going through the window:
	say "Those bars aren't going anywhere;  at most, you can maybe reach your hand through them."
Instead of opening the window:
	say "The window isn't openable."

After deciding the scope of the player while in the jail cell:
	if the player is on the stool:
		place the street in scope.


Chapter Characters

Section Army

The army is a person in Limbo.

Section Deputy

The deputy is a man in the office. Understand "Jim" or "Jimbo" as the deputy. The deputy can be either standing or sitting. The deputy is sitting. The deputy carries the brass key. The description of the deputy is "Big and strong, but lacking numerically in ancestors." The deputy can be drunk. The deputy is not drunk. The deputy can be sedated. The deputy is not sedated. The scent of the deputy is "of cigar smoke and cheap perfume". The texture of the deputy is "warm and alive".

Section Flash
[dun dun dun FLASH! Wa-oooouughhhh, he'll save every one of us...]

Flash is a male animal in Limbo. Flash is proper-named. Flash can be spat upon. Flash is not spat upon.

Section Marshal

The marshal is a person in Limbo. The scent of the marshall is "of authority".

Section Muddy

Muddy is a man in the jail cell. Muddy is proper-named.  "In the corner of the cell, Muddy leans against the wall[if Muddy carries the harmonica] tapping a harmonica on his arm[end if].".  The description of Muddy is "Muddy is well... muddy. His dated tweed three-piece suit is tattered, and doesn't at all match his formal frock coat, which is covered with dust and mud. [one of]In short, he hasn't changed a jot since the day you were both picked up for desertion and thrown in the stockade.[or]He's a bit short and pudgy, but always more nimble than you'd expect for someone of his age.[or]He hasn't shaved for days, and when he grins you notice one of his front teeth is missing.[or][stopping]". Muddy can be investigated. Muddy is not investigated.

The scent of Muddy is "[one of]unwashed[or]in need of a bath[or]like you feel[at random]". The texture of muddy is "rough and gritty".

After examining Muddy:
	now Muddy is investigated.
	
Instead of asking Muddy about "his plan/plan":
	if first plan is happening:
		if the first plan counter is 99:
			say "I already done told you -- we got to bust out!";
		otherwise:
			now the first plan counter is 10.
[need to generalize this to always get his most current plan.]			

The frock coat and suit are worn by muddy. The description of the frock coat is "A fancy coat that was stylish in its day." The description of the suit is "A three-piece suit, which due to wear and tear is now about a two-and-a-half piece suit." The scent of the frock coat is "faintly of moth balls". The texture of the frock coat is "soft".

Instead of searching muddy:
	say "Muddy squirms. [quotation mark]Hey, cut that out Rick. This ain't no time to be tickling me.[quotation mark][paragraph break]".

Section Pete

Pete is a man in the jail cell. Pete is proper-named.  "Across the cell from you, a disheveled man in a black suit is stretched out on a crude wooden bench and is snoring loudly, oblivious to your presence.".  Understand "disheveled", "man", "pastor", "priest", or "drunk" as Pete.  The description of Pete is "The man crumpled in the corner appears to be wearing a black suit and a pastor's neck tie. He'd almost look respectable, if it weren't for the immediate environment. He reeks of booze and snores loudly[if Pete encloses the pamphlet]. A pamphlet is sticking out of his pocket[one of]. You don't consider yourself a common pickpocket, but it makes you wonder what else he might have on him[or][stopping][end if][if the pamphlet is not in the pocket and the tin is in the pocket]. The pocket where you found the pamphlet gapes open. Priests are the trusting sort, you guess[end if]." Pete can be recognized. Pete is not recognized. The scent of Pete is "[one of]musty[or]like chewing tobacco[or]like a camp fire[or]like bourbon[or]strongly of gin[at random]". 

[TODO: touching Pete should provoke an outburst]

The pocket is part of Pete. The description of the pocket is "A deep pocket sewn into Pete's suit."
[TODO:  rules allowing player to take pamphlet, as long as Pete is asleep.  Also need code to allow him to be searched, to discover tin.]

Instead of taking the pamphlet when the pamphlet is in the pocket:
	say "You carefully slip the pamphlet out of the sleeping man's pocket.  He almost wakes up, but doesn't.[paragraph break]'Whatizit?', Muddy rasps.";
	move the pamphlet to the player.

Check examining the pamphlet:
	if the player does not carry the pamphlet,  say "You need it in your hand first." instead.
	
The pamphlet is a prop in the pocket. The description of the pamphlet is "The pamphlet depicts God in a cowboy hat roasting sinners over a camp fire. A sermon is printed below the picture." The texture of the pamphlet is "like cheap newsprint".

The sermon is part of the pamphlet. The description of the sermon is "[one of]You read it aloud:[paragraph break][pamphlet sermon][paragraph break][initial pamphlet dialogue][or][second pamphlet dialogue][or][pamphlet sermon][stopping]".

The tin is a closed portable openable container in the pocket.  The carrying capacity of the tin is 1. The texture of the tin is "[metallic]". The scent of the tin is "like tobacco".

Instead of searching Pete:
	try searching the pocket.
	
Instead of searching the pocket:
	if the tin is in the pocket:
		say "You find a tin of chewing tobacco. It looks interesting, so you borrow it."; 
		move the tin to the player;
	otherwise:
		say "You don't find anything that Pete wasn't born with."
		
Before taking the tin:
	if the tin is in the pocket:
		say "You borrow Pete's tin of chewing tobacco. It don't look like he'll mind seeing as how he's unconscious and all.";
		move the tin to the player;
		stop the action.

The description of the tin is "A rectangular tin of [quotation mark]Spitting Image[quotation mark] chewing tobacco. The cover shows a cowboy painting a portrait of an Indian, and true to its name, the image on the canvas looks just like the Indian. The tin is [if the tin is open]opened[otherwise]closed[end if][if the tin is open] revealing some [tobacco-appearance][end if]."

The tin contains the tobacco.  The tobacco is edible. The description of tobacco is "Some [tobacco-appearance]". To say tobacco-appearance: say "shredded black chewing tobacco". The tobacco can be ingested. The tobacco is not ingested. The chew count is a number that varies. The chew count is zero. The indefinite article of tobacco is "some". Tobacco can be commented. Tobacco is not commented. The scent of the tobacco is "leafy and aromatic". The texture of the tobacco is "flaky".
	
After eating tobacco:
	if the tobacco is ingested:
		say "Nope. Once was enough.";
		move the tobacco to the player;
	otherwise:
		now the tobacco is ingested;
		say "[swallowed chaw dialogue]";
		move the tobacco to the tin.
		
Before inserting the tobacco into the mouth:
	if the tobacco is in tin and player carries the tin:
		say "(first taking a pinch of tobacco)[command clarification break]";
		move the tobacco to the player;
		continue the action.
		
Section Rick

The player is Rick. Rick is a man in the jail cell. Rick is proper-named. The scent of Rick is "familiar".

The mouth is part of Rick. The indefinite article of the mouth is "your". The mouth is a container. The carrying capacity of the mouth is one. Understand "maw", "pie hole", "kisser" as the mouth. The texture of the mouth is "parched". The scent of your mouth is "neither minty nor mediciny".

Instead of inserting something inedible into the mouth:
	say "That ain't hardly something to go putting into your mouth."
	
After inserting something into the mouth:
	say "You pop [the noun] into your gaping maw."

Instead of examining the Rick, say "[if the player wears the left boot or the player wears the right boot]Big boots,[otherwise]Denim[end if] pants[if the player wears the hat or the player carries the hat], a plains hat[end if], a tattered overcoat, and some attitude.  Not so different from the uniform you once wore, just more lived-in."

The Rick carries a pocketwatch.   The pocketwatch is a prop.  Understand "watch" and "timepiece" and "pocket watch" as the pocketwatch. The description of the pocketwatch is "It's the wind-up timepiece you received when you were commissioned as an officer in the Confederate Army. [one of]You may have lost everything else in that war, but at least you have this fine pocket watch.[or]It is some small consolation that your jailors were so incompetent as to overlook your one treasure.[or][stopping] It currently reads [time of day + 1 minute in words]  -- [remaining time]." The indefinite article of the pocketwatch is "your".  [TODO:  add "only X minutes till hangin' time!"]. The texture of the pocketwatch is "[metallic]".

To say remaining time:
	let H be the hours part of the time of day;
	let M be the minutes part of the time of day;
	if H is 7:
		let D be 60 minus H;
		say "only [if D is one]one single minute[otherwise][D in words] minutes[end if]";
	otherwise:
		if H is less than 24:
			let D be 32 minus H;
		otherwise:
			let D be eight minus H;
		say "[if M is zero]about[otherwise]less than[end if] [D in words] hours";
	say " until you and Muddy are [one of]hanged[or]pushing up daisies[or]six feet under[or]wearing hemp collars[or]on permanent disability[or]dead as a door nail[at random]".[###TODO more dead euphemisms]

Rick wears a hat. The hat is a player's holdall.  The description of the hat is "An unusually capacious, wide-brimmed hat to protect you from the sun." The indefinite article of the hat is "your". The texture of the hat is "like coarse fabric". The scent of the hat is "like your head".

To say doffhat:
	say "[bracket]First taking off the hat[close bracket][command clarification break]".

Instead of inserting something (called the item) into the hat:
	if player wears the hat:
		say "[doffhat]";
		now the player carries the hat;
	continue the action.

After inserting something (called the item) into the hat:
	say "[The item] [one of]drops into the cavernous vastness of your ten-gallon hat[or]disappears into the dark depths of your fashionable headwear[or]is swallowed into the shadowy recesses of your stylish hat[or]sinks ever deeper into your cowboy hat[at random]."

Instead of searching the hat:
	if the player wears the hat:
		say "[doffhat]";
		now the player carries the hat;
	say "[if the hat contains something]In the hat you can see [contents of hat][otherwise]Ten gallons of nothing.  You sure could shove a lot of loot in there you reckon[end if]."   Instead of eating the hat, say "If you don't get out of this place, you sure will!"
	
Rick wears some pants. The description of the pants is "Rugged, blue denim." The indefinite article of the pants is "your". The scent of the pants is "grubby". The texture of the pants is "abrasive".

Instead of taking off pants:
	say "Etiquette, if not just plain old common sense, suggests that you keep them on in a jail cell."

Instead of taking inventory: [purloined from Persephone, example 62 in I7 documentation]
	say "You're carrying [a list of things carried by the player][if the player wears something]. You are wearing your [list of things worn by the player][end if]."

Rick carries a scrap of paper.   The scrap of paper is a prop.  Understand "scrap" and "paper" as the scrap of paper.  The description of the scrap of paper is "Muddy's scribbled instructions for holding up the train, which you faithfully carried out before the Sheriff showed up." The inscription of the scrap of paper is "In smeared scribbles: 'DEER RICK, 1. GET DYNA-MITE FROM MTNSIDE, 2. INSERT SPARKER, 3. BLOW UP TUNEL, 4. WAIT FOR ME'[one of].[paragraph break]That was Muddy's cunning plan, and unlike most of his plans, it went off without a hitch: you got the silver, nobody got hurt. Yup, not a single hitch -- except for getting caught[or][stopping]." Understand "instructions" as the scrap of paper.

Rick wears an overcoat. The indefinite article of the overcoat is "your". The description of the overcoat is "[one of]The gray riding coat reminds you of past adventures with Muddy Charlie: the speckled holes on the side where you caught a shotgun blast when a bank transaction gone awry, the hole on the the other side from the time you and Muddy got to fooling around with a bow, an arrow, and a bottle of whiskey, and the charred, frayed edges of the coat from the time you and Muddy were almost burnt as witches. Ah, good times[or]A gray riding coat that has been cut, stabbed, perforated, flayed, frayed, spindled, and mutilated. Many fond memories[stopping]." The scent of the overcoat is "ripe". The texture of the overcoat is "weatherbeaten".

Instead of searching the overcoat:
	say "[one of]Your hands slip into where your pockets used to be. Nothing is left of your pockets, except holes. Not that your overcoat needed more holes[or]You don't find anything[stopping]."
		
Instead of taking off the overcoat:
	say "Your overcoat is so threadbare it doesn't matter if it's on or off."

The footwear is privately-named backdrop in the jail cell. Understand "boots" as footwear. The description of the footwear is "Black boots that have seen better days. [if the spur is part of the right boot]The left boot is missing its heel spur[otherwise]Both boots are missing their heel spurs[end if]." 

Instead of doing something other than examining with the footwear:
	say "You need to say the left one or the right one."

Rick wears the left boot. The description of the left boot is "A cowhide boot that has been rubbed [smooth]. The heel is worn down, and the spurs have broken clear off." The texture of the left boot is "smooth". The scent of the boots is "better on the outside".  The indefinite article of the left boot is "your".[TODO### By rights, the boots should be a kind]

Rick wears the right boot. The description of the right boot is "A cowhide boot that has been rubbed [smooth]. A metal riding spur is about ready to fall off the worn down heel."  A spur is part of the right boot.  The description of the spur is "A sharp, round disc that rotates within a mount[if the spur is part of the right boot]. The spur is loosely attached to the heel of the right boot[end if]." The mount is part of the spur. The description of the mount is "The mount is part of the spur." The texture of the right boot is "smooth". The scent of the boots is "better on the outside". The indefinite article of the right boot is "your".

Instead of touching the spur:
	say "Sakes alive, that's sharp! You whip your hand back."

Instead of taking or pulling or attacking or taking off the spur when the spur is part of the right boot:
	now the player carries the spur;
	say "You yank the spur off your right boot, being careful not to cut yourself in the process.";
	award 1 point.

[TODO: removing boots, smell, etc.]

Section Sheriff

The sheriff is a man in Limbo. The sheriff carries the warrant. The scent of the sheriff is "like trouble".

Chapter Scripted Conversations

[Here are some canned discussions for humor, depth, etc.]

To say initial harmonica dialogue:
	now the player holds the harmonica;
	say "'I ain't never seen you play the mouth organ, Muddy.'[paragraph break]Your partner turns the harmonica back and forth, and a chain rattles. 'That's [apostrophe]cuz I ain't never learned how', he replies.[paragraph break]Muddy hands the harmonica to you.".

To say initial harmonica inscription dialogue:
	say "'Lookie here, Mud. There's some fancy engraving on the harmonica.'[paragraph break]'Don't that beat all. What do it say?'[paragraph break]'Let's see. Ah could do with more light. You got a lantern?'[paragraph break]'Nope.'[paragraph break]'Torch?'[paragraph break]'Unh-uh.'[paragraph break]'Matches?'[paragraph break]'Nary one.'[paragraph break]'Dang. Didn't we say that next adventure we'd bring [apostrophe]em?'[paragraph break]'I reckon we did, at that.'[paragraph break]'Well, the moon's up, I can see a little. It says, --Donated to the Crawdad's Gulch Municipal Hoosegow by the Gunslinger's Widows Association, Chapter Forty-One.--'[paragraph break]'These is some Ace-high acco-mo-dations we got us, I'll say.'".

To say initial pamphlet dialogue:
	say "Muddy, who had been staring intently at his boot tips looks up, eye brows knit in concentration. 'Ah don't get it. Why would anything need two hundred ninety-one thousand, eight hundred and forty eyes?'[paragraph break]'What?' you remark, looking up from the pamphlet. 'Are you kidding me? How could you figure that out?'[paragraph break]'Don't rightly know. Just something I do. Same way as I know there's 69,105 railroad ties between here and Muskogee. Ma said I was some kind of idiot savage.'[paragraph break]Dumbfounded, you stop reading halfway through the pamphlet to stare incredulously at Muddy, who picks his nose. 'Yeah, go on. What else's it say?'".

To say second pamphlet dialogue:
	say "You straighten out the pamphlet and skim it, paraphrasing for Muddy.[paragraph break]'Well let's see. It keeps going on like that for a ways without really saying much. By and by there's this part about a revival meeting. Some kind of doxology works, but out in the open, like under a circus tent. It says they'll be some preaching, some healing and even some dancing. I'd allow it sounds like a right pleasant shindig, it do.'[paragraph break]Muddy pauses.'Can I see that pamphlet a minute?'".

To say pamphlet sermon:
	say "'The Prairie Gospel Church of Uncanny Righteousness'[paragraph break]'For lo, the impetuous and retributive spirit of FINAL JUDGEMENT is stirring in the heart of the unfaithful, and a FIERY thunderhead of retribution is gathering across the plains of the undeserving, the bereft of propriety, and promulgators of heresy, and the scalding hot sparks of TRUTH are spraying forth, catching light the arid and HIGHLY FLAMMABLE and veritably kerosene-soaked sawdust of the weak-willed. And into this fray, the unwholesome BEAST shall arise and the earth shall tremble. Its body shall tower above like a mountain, and upon the body shall be nineteen heads, each like unto a serpent. Upon each head, twelve horns, like that of the ram, the bull, and the elephant, say four of each. And upon each horn, sixteen stalks, not unlike celery in some respects, yet more flexible, more like the arms of an octopus, except being twice as numerous. And upon each stalk, eighty eyes, or forty pairs of eyes, if you prefer!'".
	
To say swallowed chaw dialogue:
	say "[quotation mark]Glmph.[quotation mark][paragraph break][quotation mark]You didn't just swallow that chaw, did you?[quotation mark] asks Muddy incredulously.[paragraph break][quotation mark]I reckon I done just that -- and it didn't go down pretty.[quotation mark][paragraph break]You galoot. You're supposed to chew it. Hain't I learned you nothing?[quotation mark][paragraph break]".
	
To say plan1:
	say "[quotation mark]Shushhhh[quotation mark], he whispers, apparently noticing the sleeping man in your cell for the first time. [quotation mark]Don't know about him.[quotation mark] Muddy points at the sleeping figure. [quotation mark]Might be a spy.[quotation mark][paragraph break]Muddy leans towards you, his face barely an inch from your ear and his buzzard-worthy breath even less so from your nose. [quotation mark]Okay, Rick, I'm a-going to tell my plan.[quotation mark] Muddy pauses dramatically. [quotation mark]Here it is: we got to break out of this jail before we get strunged up.[quotation mark][paragraph break][quotation mark]That's it? That's your whole damn plan? That don't count as no plan![quotation mark] you fume.[paragraph break][quotation mark]Keep it down, Rick![quotation mark] Muddy's gaze darts between the deputy and your third cellmate. [quotation mark]Yeah, that's it for now. It takes time to cook up a good plan. You need lots of ingredients.[quotation mark][paragraph break][quotation mark]Muddy,[quotation mark] you retort, [quotation mark]I heared you was the worst cook in the Confederate Army. Your cooking like as did more damage than Sherman's March.[quotation mark][paragraph break]Muddy gives you a hurt look and sulks in the corner."

Chapter Menus

Section Help Menu

Understand "help" or "about" or "info" as asking for help.

Asking for help is an action out of world.

Carry out asking for help:
	change the current menu to the Table of Options;
	carry out the displaying activity;
	clear the screen;
	try looking.

Table of Options
title				subtable			description	toggle
"What the Sam Hill is this?"	--	"I don't set much by book learning and I don't reckon that explaining's half as good as doing, but let me give you the skinny on this here piece of fictional work, so as a body can understand what's going on hereabouts. This is what them high-falutin[apostrophe] dudes out East call an [quotation mark]interactive fiction[quotation mark], but me and the boys, we like to call it an [quotation mark]adventure game[quotation mark]. Heck, fiction is something you see a doctor about, clear as I can tell.[paragraph break]In this story, you is the main character, and you get to says what you're fixing to do. See, on account of you being in charge, it ain't boring like reading a book or going to church. Ever time you see one of these arrowhead things [quotation mark]>[quotation mark] you can write just what you'd like to do. Don't use no big sentences or nothing cause that'll just mix everything up real bad. But you can say things like [quotation mark]drink whiskey[quotation mark], [quotation mark]smoke cigar[quotation mark] and [quotation mark]play cards[quotation mark] -- you know, all the kinds a thing a body might hanker to do. Then, you see what happens.[paragraph break]I reckon your goal is to not end up wearing a hemp necktie, and that do seem real sensible."		--
"How do it work?"	--	"Ever turn, you type in your command, and then something happens. That's how it works. Time is ticking along, all right, but not while you're cogitating about what to type. Take as long as you want.[paragraph break]The game is real simple like, so if'n it don't understand what you said, try saying it different. Don't use no punctuation neither, oh heck no, for criminy sakes, don't use no punctuation. That's just asking for a heap of trouble. The one exception is if'n you is asking or telling somebody something. For that, you can say their name followed by a comma (that's looks like a bullet hole, but then it's got some little bit that dangles down), and then your command. It ain't no good to just say that, so I'm a-gonna give you an example: You could say [quotation mark][fixed letter spacing]Sheriff, give me the gun[variable letter spacing][quotation mark]. You could say that, mind, but he don't got to."		--
"Gettin[apostrophe] stuff done"		--	"If you ain't a greenhorn, chances are you already know a bunch of the ever day commands used in this game. If not, take a gander:[paragraph break]
[fixed letter spacing]   look         - [variable letter spacing]look around[line break]
[fixed letter spacing]   examine      - [variable letter spacing]look at something real hard[line break]
[fixed letter spacing]   search       - [variable letter spacing]frisk or inspect thoroughly[line break]
[fixed letter spacing]   go           - [variable letter spacing]followed by a direction[line break]
[fixed letter spacing]   take/drop    - [variable letter spacing]pick up or drop something[variable letter spacing]"	--
"Stuff you do a lot"		--	"We made it easy to do some stuff without typing a whole lot. You can use the letter in [fixed letter spacing]<brackets>[variable letter spacing] instead having to spell out the whole word, which is good on account some folk don't spell so good (not to mention their grandma and sin tax):[paragraph break]
[fixed letter spacing]   <i>nventory      - [variable letter spacing]what are you carrying?[line break]
[fixed letter spacing]   <l>ook           - [variable letter spacing]look around[line break]
[fixed letter spacing]   e<x>amine        - [variable letter spacing]look real hard at somethingl[line break]
[fixed letter spacing]   <z>zzzz          - [variable letter spacing]cool yer heels[line break]
[fixed letter spacing]   a<g>ain          - [variable letter spacing]do what you done, again[line break]
[fixed letter spacing]   <o>ops           - [variable letter spacing]if'n you make a spellin[apostrophe] mistake[variable letter spacing]"		--
"Talking with folk"		--		"Here are a ways to talk to people:[paragraph break]
[fixed letter spacing]   SAY  [variable letter spacing]something[line break]
[fixed letter spacing]   TELL [variable letter spacing]someone[fixed letter spacing] ABOUT [variable letter spacing]some topic[line break]
[fixed letter spacing]   ASK  [variable letter spacing]someone[fixed letter spacing] ABOUT [variable letter spacing]some topic[line break]
[fixed letter spacing]   SHOW [variable letter spacing]someone something[line break]
[fixed letter spacing]   SHOW [variable letter spacing]something[fixed letter spacing] TO [variable letter spacing]someone[paragraph break]."		--
"Reading & Writing"		--	"If'n you got room in yer saddle bag, you can save games and then reload them later. You can make multiple save files. You can also restart a game (but it'll beef your current game). If you're desperate, you turn tail and cut.[paragraph break]
[fixed letter spacing]   SAVE      - [variable letter spacing]save the game at the current point[line break]
[fixed letter spacing]   RESTORE   - [variable letter spacing]load and then continue the game[line break]
[fixed letter spacing]   RESTART   - [variable letter spacing]start over again[line break]
[fixed letter spacing]   QUIT      - [variable letter spacing]a last resort, if'n yer yeller!"		--
"Dang. I is in a fix."	--		"In trouble, huh? You didn't listen to Muddy, did you? Well, here are some things to ponder:[paragraph break]* Try everything you can think of. If that don't work, try something else.[line break]* Reread what you read before just in case you missed something.[line break]* We don't reckon you can get stuck. That is to say, you might get hanged, but the game shouldn't.[line break]* If you are really really stuck deputize yerself a partner.[line break]* If you are really and truly stuck, the upstanding authors of this here work done wrote a walk-through what for showing you how it can be solved. If'n you ain't man enough to solve it yourself, that is. Or woman enough, for that matter. Plumbing ain't the issue here."		--
"Critters"	--		"We don't take kindly to the presence of critters what we ain't wrote ourselves, but sometimes they show up anyhow. If'n you run across one, we'd be a might obliged if you'd report it to us. Y'all can file a bug report at the open sores web site for the project, what is: http://code.google.com/p/hoosegow/issue, or you can send us a telegram at hoosegow@red-bean.com. When we hear from you, we'll round up our posse and see that justice is served."	--
"Thanks"			Table of Thanks		--		--
"License"	--	"We done released this here game under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States of America license. On account of that, you are free as a parakeet in a tornado to copy, distribute, display, and use this work and to make derivative works under the following conditions:[paragraph break]Attribution. You must attribute such works mentioning our names [story author] and the title of this work [quotation mark][story title][quotation mark]. We reckon that this can appear in the title, with the Release Information, or in the acknowledgements section of a menu system (if'n you got one). Attribution don't suggest our endorsement of them derivative works or their authors.[paragraph break]Noncommercial. You may not use this work for commercial purposes. We don't set much store by commercial purposes, nohow.[paragraph break]Share Alike. If you alter, transform, or build upon this here work, you may distribute the resulting work only under the same or similar license to this one.[paragraph break]If[apostrophe]n you would like a copy of the Inform7 source for this game, it is available via the repository at http://code.google.com/p/hoosegow/source/checkout."		--	

Table of Thanks
title	subtable		description	toggle
"The Posse"	--	"We got us a powerful fine posse, and I reckon it would do some fine justice to tip our hats to them that waded through the cow patties to pretty up this here game. They is:[paragraph break][list of testers]"		--
"Legends of the West"		--	"We ain't the first people to explore this territory, and it seems right be me to mention some of the pioneers that mapped out this land when it was savage. Names like Graham Nelson and Emily Short, who done wrote the IF language Inform 7, and other members of their posse like David Kinder and Eric Eve, who wrote the extensions that we use."	--

Chapter Credits

To say list of testers:
	say "John Lodder[line break]Conrad Cook[line break]Sam Ashwell[line break]Sarah Morayati[line break]Yoon Ha Lee[line break]Duncan Bowsman[line break]Jenni Polodna[line break]";

Section Help Menu

Easter egging is an action out of world. Understand "easter egg" as Easter egging.

Carry out Easter egging:
	change the current menu to the Table of Eggs;
	carry out the displaying activity;
	clear the screen;
	try looking.

Table of Eggs
title				subtable			description	toggle
"Planned Parenthood"	--	"The sheriff enters the office, shotgun in hand. You and Muddy freeze in your tracks and raise your hands in the air. The sheriff kicks the prone deputy, who stirs slowly at first, but then jumps to his feet.[paragraph break][quotation mark]You.[quotation mark] The sheriff points at you. [quotation mark]Your name Muddy?[quotation mark][paragraph break][quotation mark]No. I ain't Muddy,[quotation mark] you reply. [quotation mark]That there is Muddy. I is Rick.[quotation mark][paragraph break][quotation mark]Damn. What were she thinking?[quotation mark] growls the sheriff. [quotation mark]Mary Sue, you come on in here now, you hear?[quotation mark][paragraph break]A young woman -- you hesistate to guess her actual age on account of propriety -- edges nervously into the office, her eyes cast to the ground. By the way she walks, you guess she is in a family way, and after she turns towards Muddy, there's no question. Judging by the size of her belly, you'd have to say five, maybe six months. She raises her eyes to Muddy and her face brightens.[paragraph break][quotation mark]Oh, Lordie,[quotation mark] mutters Muddy, closing his eyes and running his hand over his face. [quotation mark]The one thing I don't plan -- and look what happens.[quotation mark][paragraph break]Lowering the shotgun, the sheriff walks over and puts his arm around Muddy's shoulders. Distributing cigars to you and the deputy, he smiles, [quotation mark]Deputy Jimbo, Rick -- I'd like you to meet my new son-in-law, Muddy. Ain't that right, Muddy?[quotation mark][paragraph break][quotation mark]I do reckon it's better than a-hanging.[quotation mark][paragraph break]Muddy never sees it coming. Mary Sue's roundhouse punch lands square on his jaw, launching him towards the jail bars like a sack of potatoes.[paragraph break][quotation mark]Well,[quotation mark] you observe, [quotation mark]maybe this marriage just might work out.[quotation mark]"	--
"Alternate Ending #2"	--	"End of Simulation at MARSpace"	--
"Alternate Ending #3"	--	"Revenge of the GSWA"	--

Chapter Default Messages

To say apologies:
	say "My sincere apologies".

To say fixedObject:
	say "It ain't going nowhere."

To say notAbleTo:
	say "Nohow -- you ain[apostrophe]t able to."

To say notNeighborly:
	say "That warn[apostrophe]t be neighbor-like."

To say youAint:
	say "You ain[apostrophe]t ".

To say aintNo:
	say "ain[apostrophe]t no ".

To say aintNothing:
	say "ain[apostrophe]t nothing ".

Table of custom library messages (continued)
Message Id				Message Text
LibMsg <confirm Quit>			"For real? Give up now just when things is getting hopping?[paragraph break]"
LibMsg <you have died>			"You done cashed it in.[paragraph break]"
LibMsg <you have won>			"You has won.[paragraph break]"
LibMsg <unimportant object>		"That ain't something what you gotta pay heed to round these parts.[paragraph break]"
LibMsg <empty line>			"Sorry citizen, I didn't hear you rightly. What?[paragraph break]"  
LibMsg <confirm Quit>			"I didn't mark you for a quitter. You sure?[paragraph break]"  
LibMsg <yes or no prompt>		"Ain't you got no manners? Answer yes or no.[paragraph break]"  
LibMsg <restrict answer>			"Enough of your blatheration. Give one of them answers from above.[paragraph break]"  
LibMsg <page prompt>			"[bracket]Press SPACE if'n you want to go on a pace.[close bracket]"  
LibMsg <undo succeeded>		"[bracket]You done backtracked[dot][close bracket]"  
LibMsg <undo failed>			"[apostrophe]Undo[apostrophe] failed real miserable-like. [bracket]Not all interpreters got the cajones to get undid[dot][close bracket]"
LibMsg <undo not provided>		"[bracket]Your 'terp don't provide [apostrophe]undo[apostrophe]. [apologies].[ExMark][close bracket]"  
LibMsg <cannot undo nothing>		"[bracket]You can't [apostrophe]undo[apostrophe] what ain't been did none[ExMark][close bracket]"   
LibMsg <oops failed>			"That were so balled up, ain't nothing can fix it.[paragraph break]"
LibMsg <oops no arguments>		"[aintNothing].[paragraph break]" 
LibMsg <cannot do again>		"You can't hardly repeat that.[paragraph break]"   
LibMsg <command not understood>	"Is you talking plain English? I ain't following the words coming out of your lips. Mayhaps it's your accent.[paragraph break]"  
LibMsg <command partly understood>	"I only twigged your meaning as far as hankering to "    
LibMsg <command incomplete>		"You seem to have said too little! Normally, I find that right pleasant.[paragraph break]"   
LibMsg <cannot begin at comma>		"Commas ain't for beginning sentences with. Land sakes, ain't you got no grammar?[paragraph break]"  
LibMsg <unknown object>		"[youAint]able to see no such thing.[line break]"  
LibMsg <object not held>			"[youAint]holdin' that![paragraph break]"  
LibMsg <unknown verb>			"That [aintNo]verb I got knowledge of.[line break]"   
LibMsg <cannot exceed carrying capacity>	"Your carrying too dang-blasted many things already.[paragraph break]"    
LibMsg <cannot insert if this exceeds carrying capacity>		"There [aintNo]more room in [the main object].[paragraph break]"  
LibMsg <cannot put if this exceeds carrying capacity>		"There [aintNo]more room on [the main object].[paragraph break]"  
LibMsg <who disambiguation>		"That warn't clear. Who all do you mean, "  
LibMsg <which disambiguation>		"Which all do you mean, "  
LibMsg <whom disambiguation>		"Who all do you want to {command}?[paragraph break]"  
LibMsg <what disambiguation>		"What in tarnation do you want to {command}?[paragraph break]"  
LibMsg <pronoun not set>		"I don't rightly twig what '{pronoun}' refers to.[paragraph break]"  
LibMsg <person ignores command>	"[The main object] ain't having none of your balderdash.[paragraph break]"  
LibMsg <cannot talk to absent person>	"Your cake hole is jabbering, but I can't rightly say to who you is talking.[paragraph break]"  
LibMsg <confirm Restart>			"You sure you want to turn tail and restart? "     
LibMsg <Inventory initial text>		"You're hauling"  
LibMsg <Inventory no possessions> 	"[youAint]hauling nothing.[paragraph break]" 
LibMsg <entering darkness>		"It's darker than midnight in a coal mine![paragraph break]"
LibMsg <dark description>		"It's darker than the shine on your granddaddy's boots. You ain't able to see your own self here.[paragraph break]"  
LibMsg <examine while dark>		"Ain't no seeing to be had on account of it's so dark here.[paragraph break]"  
LibMsg <report player taking>		"Fetched.[paragraph break]"  
LibMsg <cannot take other people>	"I don't reckon [the main object] would much care for that.[paragraph break]"  
LibMsg <cannot take something you are within>		"You[apostrophe]d have to get off/out of [the main object] first.[paragraph break]"  
LibMsg <cannot take something already taken>		"Sakes alive. You already done got that.[paragraph break]"    
LibMsg <cannot reach within closed containers>		"[The main object] ain't open.[paragraph break]"  
LibMsg <cannot take scenery>		"That ain't hardly what a body would aim to carry about.[paragraph break]"  
LibMsg <cannot take something fixed>	"That's/they're planted real good and not going anywhere, I do reckon.[paragraph break]"
LibMsg <report player removing>		"Snatched.[paragraph break]"  
LibMsg <cannot remove something not within>		"But it ain't there now.[paragraph break]"  
LibMsg <report player dropping>		"Ditched.[paragraph break]"  
LibMsg <cannot drop not holding>		"[youAint]got that.[paragraph break]"  
LibMsg <cannot give what you have not got>		"[youAint]holding [the main object].[paragraph break]"
LibMsg <block giving>			"[The main object] don't seem interested.[paragraph break]"  
LibMsg <cannot show what you have not got>		"[youAint]holding [the main object].[paragraph break]"  
LibMsg <cannot enter something not enterable>		"That ain't something you can enter/stand on/sit down on/lie down on.[paragraph break]"  
LibMsg <cannot exit when not within anything>		"[youAint]in anything at the moment.[paragraph break]"
LibMsg <cannot get off things>		"[youAint]on [the main object] at the moment.[paragraph break]"  
LibMsg <cannot go up through closed doors>		"[youAint]able to climb [the main object].[paragraph break]"  
LibMsg <brief look mode>			"{Story name} is now 'brief' printing mode, what gives long descriptions of places you ain't visited before and short descriptions otherwise.[paragraph break]"  
LibMsg <superbrief look mode>		"{Story name} is now in its 'superbrief' mode, what gives short descriptions of locations (even if a body ain't been there before).[paragraph break]"  
LibMsg <verbose look mode>		"{Story name} is now in its 'verbose' mode, which always gives long descriptions of locations (even if you been there plenty).[paragraph break]"  
LibMsg <cannot search unless container or supporter>	"You don't find nothing at all.[paragraph break]"  
LibMsg <cannot search closed opaque containers>		"[youAint] able to peek inside, seeing as how [the main object] is closed.[paragraph break]"  
LibMsg <nothing found on top of>	"There [aintNothing]on [the main object].[paragraph break]"  
LibMsg <cannot open unless openable>	"They ain't something you can open.[paragraph break]"  
LibMsg <cannot switch on unless switchable>		"They ain't something you can switch.[paragraph break]"  
LibMsg <cannot take off something not worn>		"[youAint]wearing that.[paragraph break]"  
LibMsg <report player eating>		"You choke down [the main object]. Not bad.[paragraph break]"  
LibMsg <cannot eat unless edible>		"Any tom fool could see that ain't for eating.[paragraph break]"  
LibMsg <block drinking>			"There's [aintNothing]proper fit for drinking here.[paragraph break]"  
LibMsg <report player touching self>	"If you reckon that'll help.[paragraph break]"  
LibMsg <report player touching other people>		"Keep your filthy sheep shearing, pig wallowing, cow poking hands to your lonesome![paragraph break]"  
LibMsg <block saying sorry>		"Oh, shove your boot-lickin'.[paragraph break]"  
LibMsg <block swearing obscenely>	"Ain't no need to air your lungs so. We keep a civil tongue in these parts. Mostly.[paragraph break]"  
LibMsg <block swearing mildly>		"Ain't it, though.[paragraph break]"  
LibMsg <block climbing>			"I don't think much is to be achieved by that.[paragraph break]"  
LibMsg <block jumping>			"You dance about like a niner soaked full of nose paint.[paragraph break]"
LibMsg <block swinging>			"There [aintNothing]sensible to swing here.[paragraph break]"  
LibMsg <block waving hands>		"You send a wave.[paragraph break]"  
LibMsg <block attacking>			"You reckon violence usually is the answer, but maybe not just now.[paragraph break]"  
LibMsg <block rubbing>			"That don't seem to serve no purpose.[paragraph break]"  
LibMsg <report player waving things>	"You look stranger than a preacher in a vaulting house waving [the main object].[paragraph break]"  
LibMsg <cannot wave something not held>		"Nope. [youAint]holding that.[paragraph break]"  
LibMsg <squeezing people>		"Keep your paws to yerself.[paragraph break]"  
LibMsg <report player squeezing>		"That don't get nothing done.[paragraph break]"  
LibMsg <not pushed in a direction>	"That [aintNo]direction.[paragraph break]"  
LibMsg <pushed in illegal direction>  	"Not that way you can't.[paragraph break]"  
LibMsg <cannot push something fixed in place>		"[fixedObject]"  
LibMsg <cannot pull something fixed in place>		"[fixedObject]"  
LibMsg <cannot turn something fixed in place>		"[fixedObject]"  
LibMsg <cannot push scenery>		"[notAbleTo]"  
LibMsg <cannot pull scenery>		"[notAbleTo]"  
LibMsg <cannot turn scenery>		"[notAbleTo]"  
LibMsg <cannot push people>		"[notNeighborly]"  
LibMsg <cannot pull people>		"[notNeighborly]"  
LibMsg <cannot turn people>		"[notNeighborly]"  
LibMsg <block answering>		"There [aintNo]reply.[paragraph break]"  
LibMsg <block asking>			"There [aintNo]reply.[paragraph break]"  
LibMsg <block singing>			"You got a right fine voice. Just not for singing.[paragraph break]"  
LibMsg <block thinking>			"What a plumb good idea.[paragraph break]"  
LibMsg <block sleeping>			"[youAint]feeling especially drowsy.[paragraph break]"  
LibMsg <block waking up>		"The dreadful truth is, this [aintNo]dream.[paragraph break]"  

Section Hints

Table of Active Hints (continued)
title		subtable			description			toggle
text		table-name		text					a rule

Table of Potential Hints (continued)
title													subtable
"How can I open the can?"						Table of Can Opening

A hint activation rule:
	if the can is in the jail cell and the can is closed then activate the Table of Can Opening.
	
A hint deactivation rule:
	if the can is open then deactivate the Table of Can Opening.

Table of Can Opening
hint													used
"What do you need to open a can?"				a number
"Is there anything that resembles a can opener in the cell?"
"Did you examine everything in the cell?"
"Is there something on your person that might help?"
"Are you wearing anything that might serve the purpose?"
"Have you examined your boots?"
"Have you tried touching the spurs on your right boot?"
"Can you open the can with the spurs?"
"You need to remove the spurs from the boot to use them as a can opener."
"You can pull the spurs of the right boot."
"Open the can with the spurs."
		
Book 2  Scenes

Chapter Introduction

Introduction is a scene. Introduction begins when play begins. Introduction ends when the Deputy is not in the office.

Chapter First Plan

First Plan is a scene. First Plan begins when Muddy is investigated. First plan ends when the first plan counter is 99.

First plan counter is a number that varies. First plan counter is zero.

Every turn when First Plan is happening:
	if first plan counter is less than 5:
		say "[quotation mark][one of]Ain't you gonna ask me about my plan?[quotation mark] he whispers[or]This time mah plan is sure fire -- go ahead, ask me. C'mon.[quotation mark] Muddy jibes[or]Ain't you even a speck curious to ask me about my plan?[quotation mark] taunts Muddy[or]Truthful, Rick,[quotation mark] states Muddy solemnly, [quotation mark]this ain't like all my other plans, this one is iron-clad. Ask me about it. Go ahead.[quotation mark][or]I hope you ain't still angry about my last plan. It worked fine except for the last part. This new plan's even more slicker[quotation mark][stopping].";
		increase first plan counter by one;
	otherwise:
		now the first plan counter is 99;
		say "[plan1]".

Chapter Unwatched

Unwatched is a recurring scene. Unwatched begins when the deputy is not in the office. Unwatched ends when the deputy is in the office. 

Chapter Forgery

Forgery is a scene. Forgery begins when Rick has the warrant. Forgery ends when the warrant is edited.

Chapter Drugged

Drugged is a scene. Drugged begins when the deputy is sedated. 

Chapter Denouement

Denouement is a scene. Denouement begins when Rick is not in the jail cell.

Chapter The End

Rule for printing the player's obituary:
	do nothing.
	[###TODO add obituary]
			
Rule for amusing a victorious player:
say "Congratulations, partner. That sure could have turned a whole mess more ugly, but you same out of it with your neck. Before you ride off into the sunset, why don't you rest your eyeballs on some of the stuff in the game that maybe you ain't run into:[paragraph break]";
say "[if flash is not spat upon]* Did you try chewing the tobacco and spitting at everything in sight? How 'bout old Flash?[paragraph break]";
say "* There are three ways of driving the deputy out of the jail, how many did you find?[paragraph break]";
say "Some other random trivia:[paragraph break]";
say "* The game is set in the Indian Territory, which would later become the Oklahoma territory and subsequently the state. How many references can you find to the musical [quotation mark]Oklahoma![quotation mark]?";
say "* In the real West, it wouldn't have made any sense to put beans in a can. They were a cheap staple, transported dry, likely in sacks.[paragraph break]";
say "* Boot spurs were referred to as [quotation mark]can openers[quotation mark] in the Old West. Really.[paragraph break]";
say "* The transcontinental railroad was completed in 1869, but it crossed two states above Oklahoma. The first railroads in Oklahoma were built in 1870, and the state wasn't crossed until 1871.[paragraph break]";
say "* The espresso machine was invented in XXXXXX in Italy, but we figured that so many Old West movies came from Italy, that it would look natural enough in our story.[paragraph break]";
say "Finally, if you've read this far down the page, you deserve to know about the [quotation mark]Easter Egg[quotation mark] command, which will reveal several alternate endings to the story. Explore them at your own risk."
	
