"Hoosegow" by Ben Collins-Sussman and Jack Welch

The story headline is "A Wild West Wreck".
The release number is 3.
The story creation year is 2010.
The story genre is "Western".

The story description is "Muddy's plan done landed you and your partner in the hoosegow. Now you're fixing to rectificate the matter before the marshal introduces you to the business end of a hangin' rope at dawn."

The intro-text is a text that varies.  Intro-text is "As the sun sets on the plains, Sheriff Cheney angrily snaps on the cuffs. You are shoved into the coach and land on top of Muddy Charlie and a pile of  silver dollars, which until recently had been the property of the Missouri, Kansas & Texas Line.[paragraph break]Muddy whispers, 'Don't fret none, Rick! You done good blowing up that tunnel -- I just didn't plan on the sheriff getting word ahead of time, is all. That were powerful bad luck.'[paragraph break]The sheriff climbs onto his horse, spits, and you begin to rumble forward. 'You boys really got it coming this time,' he yells back cheerfully.[paragraph break]Muddy shakes his head. 'No offense, Sheriff, but I reckon you got the wrong men. We was just on our way to the theater.'[paragraph break]The sheriff disagrees. 'The only place you boys are heading is straight to the... [paragraph break]".

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
		say "[if the gate is closed]You can't get over to [the target] from here[otherwise]You'd have to go over to [the target] first[end if].";
		deny access;
	say "(first heading [way])[command clarification break]";
	try going way;
	if the player is in the target, allow access;
	otherwise deny access.

After looking when the location is an inter-visible room:
	repeat with other place running through rooms which are connected with the location:
		if the other place is not the location, describe locale for other place.

Section Fixing Room Capitalization
[This particular bit of Inform voodoo came from a timely usenet post by Erik Temple dated Wed, Jan 13, 2010]

A room has some text called the capped room name. The capped room name property translates into I6 as "cap_short_name". 

The capped room name of the jail cell is "Jail Cell". The capped room name of the office is "Office".

The new room description heading rule is listed instead of the room description heading rule in the carry out looking rules. 

Carry out looking (this is the new room description heading rule): 
	say bold type; 
	if the visibility level count is 0: 
		begin the printing the name of a dark room activity; 
		if handling the printing the name of a dark room activity, 
			issue miscellaneous library message number 71; 
		end the printing the name of a dark room activity; 
	otherwise if the visibility ceiling is the location: 
		say "[capped room name of the visibility ceiling]"; 
	otherwise: 
		if the visibility ceiling is a room: 
			say "[The capped room name of the visibility ceiling]"; 
		otherwise: 
			say "[The visibility ceiling]"; 
	say roman type; 
	let intermediate level be the visibility-holder of the actor; 
	repeat with intermediate level count running from 2 to the visibility   
level count: 
		issue library message looking action number 8 for the intermediate level; 
		let the intermediate level be the visibility-holder of the intermediate   
level; 
	say line break; 
	say run paragraph on with special look spacing. 

Section Award the Escape

[from example 135]
A room can be scored or unscored.

Carry out going to an unvisited scored room:
	adjust points by 5.

The Office is scored.


Chapter Declare Global Variables

The last mentioned thing is a thing that varies.

Muted is a truth state that varies. Muted is false.

Chapter Class Definitions

A prop is a kind of thing. It is usually portable. [If props can be carried out of their initial room, they should not be in the room description, but appear in the room contents list.]

A sheet is a kind of prop. [paper]

A furniture is a kind of supporter. It is usually scenery and fixed in place. [In general, furniture descriptions should be integrated into room descriptions.] 

A thing can be large. A thing is usually not large.

Everything has some text called texture. The texture of something is usually "".
Everything has some text called scent. The scent of something is usually "". 

A thing has some text called the inscription. The inscription of something is usually "".

Definition: A thing (called the item) is bootlike if the item is the left boot or the item is the right boot.

A fardrop is a kind of backdrop.

An ungulate is a kind of fardrop.

Conclusion is a kind of value. The conclusions are hanged, shot, escaped, rolled, and won.  

Endgame is a conclusion that varies. The endgame is usually hanged.

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

Section Answering

Instead of answering:
	say "[lame talk]".

Section Asking

Rule for reaching inside a room when asking someone about something:
	allow access.
	
Instead of asking someone (called the reporter) about a topic listed in the Table of Muddy and Deputy Questions:
	if the reporter is:
		-- Rick:
			say "You reflect on the matter for a while."; 
		-- Muddy:
			say "Muddy replies, [quotation mark][muddy-text entry].[quotation mark][paragraph break]";
		-- the deputy:
			if the deputy is drugged:
				say "He's in no state of mind to talk right now.";
			otherwise:
				say "The deputy looks annoyed, but says, [quotation mark][deputy-text entry].[quotation mark][paragraph break]";
		-- otherwise:
			say "[The reporter] does not reply."
	
Table of Muddy and Deputy Questions
topic				muddy-text			deputy-text
"sheriff" or "the sheriff" or "sheriff cheney" or "cheney"		"He don't strike me as very pleasant or law-abiding himself"					"He's the law in these here parts, but he's much more. He's also an inventor! Heck, look at that machine he done made with his own two hands. Took him five years, but he done it"
"machine" or "the machine" or "protocappuccinomatic" or "contraption" or "invention" or "inventions" or "the invention"		"Your guess is as good as mine, partner"		"Sheriff Cheney done rigged up that machine and the steam whistle, both of them run off that steam boiler stove. Near as I can tell, the machine makes coffee, but oh, what fine coffee it do make. I can't as much as figure, though, how he's paying for all the inventing he does. Well, I guess sheriffs is paid more than deputies is"
"can" or "can of beans" or "the can" or "the can of beans"			"[can-muddy]"		"[can-deputy]"
"meat" or "the meat"		"[meat-muddy]"		"[meat-deputy]"
"spoon" or "the spoon"	"[spoon-muddy]"		"[spoon-deputy]"
"warrant" or "the warrant"		"[warrant-muddy]"	"[warrant-deputy]"
"jail" or "jailhouse"	"Home, sweet home"	"Better than working at a fish-packing plant"
"bell" or "the bell"		"[bell-muddy]"		"When I ring it, my dog Flash gets all excited on account he thinks it's dinner time"
"boiler" or "the boiler"		"It probably heats the office"		"It makes steam to power the sheriff's inventions"
"cabinet" or "the cabinet"		"Where they store our stuff"		"Where we put stuff confiscated from the likes of you two"
"portrait" or "the portrait"		"The proportions is all wrong"		"I think it looks just like Sheriff Cheney, but smaller"
"whiskey" or "the whiskey" or "the bottle" or "bottle"		"Looks like some powerful rotgut"		"My best friend. Aside from Flash, but you can't drink a dog"
"gate" or "the gate"		"It looks sturdy"		"It came from a dungeon somewhere"
"wall" or "walls"		"They look mighty thick"		"We had them painted last week"
"vulture" or "the vulture" or "vultures"		"Don't care for [apostrophe]em"		"They is pretty birds and much misunderstood"
"cigar" or "the cigar" or "cigars"		"I don't smoke. I figure there got to be one thing what I don't do"	"Ain't nothing I like more than a smelly cigar"
"lever" or "the lever"		"I don't rightly know"	"If you push it away from the jail cell, it turns on the train whistle, and if you push it towards the jail cell, it makes a cup of coffee. I don't know how; it just does"
"banana"		"[banana-muddy]"	"Sometimes a banana is just a banana"
"gun" or "guns" or "LeMat" or "pistol" or "revolver" or "gun belt" or "gunbelt" or "the gun" or "my gun" or "our guns"		"[gun-muddy]"	"Don't bother yourselves none about guns. You won't be needing one"
"desk" or "the desk"		"[if the drawer has not been open]Maybe there's something worth finding in it[otherwise]I reckon we already looked through it[end if]"	"That's where the sheriff stores all his important documents, like his inventions and all"
"brass key" or "the brass key" or "key" or "brass" or "the key"	"[brass-muddy]"		"Brass? I don't know that word. Stop using words what I don't know"
"coffee" or "cup" or "cup of coffee" or "the coffee" or "the cup"		"[cup-muddy]"	"Nothing is as good as the coffee that comes out of the sheriff's machine"
"stool" or "the stool"		"[stool-muddy]"		"[stool-deputy]"
"mouth organ" or "harmonica" or "the harmonica"		"[harmonica-muddy]"		"[harmonica-deputy]"
"scrap" or "scrap of paper" or "the scrap of paper"		"[scrap-muddy]"		"[scrap-deputy]"
"boot" or "boots" or "my boot" or "my boots" or "left boot" or "right boot"	"[boot-muddy]"		"[boot-deputy]"
"pete" or "pastor pete" or "priest" or "drunk" or "bum" or "man" or "hobo"		"Seems mostly harmless"		"Pete? Oh, don't pay him no mind. He's just a crazy old preacher"
"tin" or "the tin" or "tobacco tin"		"[tin-muddy]"		"[tin-deputy]"
"tobacco" or "chewing tobacco" or "chaw"		"[tobacco-muddy]"		"[tobacco-deputy]"
"deputy"		"He's as dumb as a mud fence and twice as ugly"	"That's me, all right"
"hat" or "the hat" or "my hat"		"[hat-muddy]"	"[hat-deputy]"
"saloon" or "the saloon"		"I bet that deputy spends a lot of time there."	"I get my best work done there"
"watch" or "pocket watch" or "my watch" or "the watch" or "pocketwatch" or "the pocket watch" or "the pocketwatch"		"[watch-muddy]"		"[watch-deputy]"
"barrel" or "the barrel"		"Mighty convenient there, right below the window"	"We keep it mainly for ducking behind during gun fights"
"flash" or "the dog" or "dog" or "bloodhound"		"That's one sorry excuse for a dog"	"Ain't he marvelous? Yessir"
"town" or "crawdad's gulch" or "the town"	"A less inhospital piece of dirt west of the Mississippi I don't know"		"Yessiree. This here city got almost five hundred people and even some indoor plumbing some of the time"
"army" or "union" or "confederacy" or "war"		"I ain't heard you talk much about the war. I figure you was sore on it"		"I don't know much about war and politics and that kind of bigwheeling business"
"pamphlet" or "sermon"		"[pamphlet-muddy]"	"[pamphlet-deputy]"
"berry" or "the berry" or "snoozeberry" or "the snoozeberry" or "peruvian snoozeberry"	"[berry-muddy]"		"[berry-deputy]"
"feather" or "vulture feather" or "plume"		"[feather-muddy]"		"[feather-deputy]"


[###TODO vine, feather]

To say watch-muddy:
	say "I ain't never seen you without it".
	
To say watch-deputy:
	say "Yeah, reckoned it would be more fun to let you keep it, so'ins you could tell when it was eight in the morning and time for the hanging".
	
To say can-muddy:
	say "Mmm. I love beans".
	
To say can-deputy:
	say "Beans is good for the heart".
	
To say meat-muddy:
	say "I'll eat almost anything. Almost".
	
To say meat-deputy:
	say "I allow I prefer beef jerky my own self".
	
To say spoon-muddy:
	say "They're good for making music".
	
To say spoon-deputy:
	say "To get every drop".
	
To say warrant-muddy:
	say "It gives law men their marching orders".
	
To say warrant-deputy:
	say "A very complicated legal document the likes of which ain't nobody really understand".
	
To say bell-muddy:
	say "I reckon it's a dinner bell".
		
To say banana-muddy:
	say "They grow on trees and is for eating. I seen some once in Mexico".
	
To say gun-muddy:
	say "I prefer my own gun. A man ought have feelings for his gun, and I most surely do".
	
To say brass-muddy:
	say "[if the drawer has not been open]It's too small for the jail gate, maybe it works a lock box or something[otherwise]It's for the desk drawer[end if]".

To say cup-muddy:
	say "I reckon coffee if the fourth best thing in the world".
	
To say stool-muddy:
	say "[if the socket is not occupied]It's a dang shame that stool can't be used. I wonder if we can repair it[otherwise]That stool's just the thing for climbing up to that window[end if]".
	
To say stool-deputy:
	say "[if socket is not occupied]Yeah, go ahead, try it out[otherwise]I reckon it were more funny when it weren't repaired[end if]".
	
To say harmonica-muddy:
	say "Give it a toot, Rick".
	
To say harmonica-deputy:
	say "It were an unfortunate day when them blue-haired old bitties done stuck that harmonica in the jail cell. I hate harmonicas".
	
To say scrap-muddy:
	say "That plan didn't work out too well, I'll admit".
	
To say scrap-deputy:
	say "Huh? I can't read that chicken scratch".
	
To say boot-muddy:
	say "Ain't never smelled nothing so bad".
	
To say boot-deputy:
	say "I prefer snakeskin".
	
To say tin-muddy:
	say "Looks like tobacco".
	
To say tin-deputy:
	say "I reckon prisoners is allowed to have tobacco".
	
To say tobacco-muddy:
	say "Looks juicy".
	
To say tobacco-deputy:
	say "Don't go spitting up everything and making a mess".
	
To say hat-muddy:
	say "It's the biggest one I ever seen".
	
To say hat-deputy:
	say "I reckon it's better than a rucksack".
	
To say pamphlet-muddy:
	say "Religion always gives me the shivers, Rick. Can we talk about something else? I'd be much obliged";
	if Pete is not recognized:
		say "[quotation mark].[paragraph break][quotation mark]Wait just a snake twizzling second, Rick... Can you show me that pamphlet? I got me a hunch".
	
To say pamphlet-deputy:
	say "A body can't learn no church religion from an old pamphlet".
	
To say berry-muddy:
	say "What berry are you talking about? Can you show me? That would help".
	
To say berry-deputy:
	say "There's lots of berries around here. My grandma used to make berry tea. That's how we lost grandpa. You gotta know your berries. You just [italic type]gotta[bold type] know your berries".
	
To say berry-show-muddy:
	say "[one of]Mohs gah! Where'd you get that? I reckon it's a Peruvian Snoozeberry. I ain't never seen one of them around here.[quotation mark][paragraph break][quotation mark]Are you making that up, Mud?[quotation mark][paragraph break][quotation mark]No, for real. Whatever you do, don't eat it -- you'll sleep right through your hanging.[quotation mark][paragraph break][quotation mark]Yeah,[quotation mark] you reply, [quotation mark]I wouldn't want to miss that[or]Sure enough. A Peruvian (or perhaps Bolivian, now that I think about it. Could very well be.) Snoozeberry[stopping]".
	
To say feather-muddy:
	say "Good for making pillows. In a pinch, they make a right fine pen too".
	
To say feather-deputy:
	say "The only feathers you'll be seeing is vulture feathers. Har! Har! I made a joke and it were a good one".

	
Section Blowing

Understand "berry" or "bar" or "gray bar" or "tube" or "hollow" or "hollow tube" as "[weapon]".
Understand "shoot [weapon] at/on/onto/towards [something]" as blowing at.
Understand "fire [weapon] at/on/onto/towards [something]" as blowing at.

Blowing at is an action applying to one visible thing. Understand "blow [weapon] at/on/onto/towards [something]" as blowing at.

This is the blowing rule:
	if the player carries the gray bar and the gray bar contains the berry:
		continue the action;
	otherwise:
		if the player does not carry the gray bar:
			say "You ain't got nothing to blow.";
			the rule fails;
		if the gray bar does not contain the berry:
			say "You might use your tube as a blow-gun, but it's got an emptiness to it right now.";
			the rule fails.

Check blowing at:
	Abide by the blowing rule.
	
Carry out blowing at:
	if the outdoors encloses the noun:
		say "The [noun] is too far away." instead;
	if the office encloses the noun and the deputy is in the office and the noun is not a man:
		say "The deputy may think you've got a weapon.  You decide to wait until he's not around." instead;
	if the noun is large:
		say "[big target]" instead;
	if the noun is:
		-- window:
			say "The berry shoots out the window and into the street.";	
		-- the coffee:
			try blowing at the cup instead;
		-- the cup:
			say "[spiked coffee dialogue]";
			if the coffee is not spiked:
				adjust points by one;
				now the coffee is spiked;
		-- the bell:
			hit-bell;
		-- otherwise:
			say "The berry hits [the noun], then bounces away out of sight.";
	now the berry is part of the vine.

To say spiked coffee dialogue:
	say "The berry splatters against the side of the cup, and its juice dribbles downwards.[no line break][if the coffee is not spiked][paragraph break]Muddy jumps up, claps you congratulatorily on the back, and you nearly swallow the metal tube still held to your lips.[paragraph break]He beams, 'That were a one in a million shot, Rick!'  Muddy strokes his chin and wags a finger at the cup, 'Now, if we can only get the deputy to come back and drink some coffee, he might be a whole lot more cooperative, I reckon.'[paragraph break]You sure like the way Muddy thinks.[end if]";


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
	it is very likely.
	
Instead of dropping the tobacco:
	if the player carries the tobacco or the tobacco is in the mouth:
		say "Tobacco is too valuable to put down just anywhere, so you put it back in the tin.";
		now the tobacco is in the tin;
		now the tin is closed;
	otherwise:
		say "You don't have any." 
		
Section Dropping and Dropping On

Understand the command "drop" as something new.

Understand "drop [things preferably held]" as dropping.

Dropping it on is an action applying to two things.  Understand "drop [things preferably held] on [other things]" as putting it on.

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
	
[tracks whether plays has attempted to open the can with anything; referenced in hint generation]
Attempted-can is a truth state that varies. Attempted-can is false.

Opening it with is an action applying to two things. Understand "open [a thing] with/using [other things]" as opening it with.

Check opening it with:
	if the noun is locked:
		try unlocking the noun with the second noun instead;
	if the noun is open:
		say "It's already open." instead;
	if the noun is the can of beans:
		change attempted-can to true;
		if the second noun is not the spur:
			say "You don't seem to be able to open [the noun] with [the second noun]." instead;
		otherwise:
			if the spur is part of the right boot:
				if the player wears the right boot:
					say "You twist and contort, trying to bring your right boot to the can, but it's futile." instead;
				otherwise:
					say "It's very awkward trying to open the can with the heel of your right boot. The boot part keeps getting in the way." instead.
		
Carry out opening it with:
	now the noun is open.

Report opening it with:
	if the noun is the can of beans:
		say "Muddy cranes his neck to see what you're doing. He's never seen someone open a can with heel spurs. You slide the spur into the groove along the top of the can, and wiggle it back and forth. The can revolves, and the lid is nearly sawn off. It is hard to tell which of you is more surprised that this worked. [paragraph break]";
		adjust points by five;
	otherwise:
		say "You open [the noun] with [the second noun][if the noun contains something]."
		
Section Dropping


Instead of putting something that is held on the floor:
	try dropping the noun.
	
		
Section Exiting

Hopping off is an action applying to nothing. Understand "stand" or "stand up" or "get down/off" or "climb down" or "jump off/down" or "hop off/down" or "go down" or "stand on ground" or "stand on the ground" as hopping off when the holder of the player is a supporter.

Carry out hopping off:
	try getting off the holder of the player.
			
Section FunnyLooking

FunnyLooking is an action applying to nothing. Understand "look funny" or "look at flash funny" or "look funny at Flash" as FunnyLooking when Flash is in the jailhouse.

Carry out FunnyLooking:
	say "Flash remains inert[if a random chance of one in ten succeeds], but secretly, he's laughing to himself[end if]."
	
Section Hanging

Hanging it on is an action applying to two things. Understand "hang [a thing] on/upon/onto [other things]" as hanging it on.

Check Hanging it on:
	if the noun is:
		-- the bell:
			if the bell is on the hook:
				say "The bell is already hung up. It's on the hook.";
				the rule fails;
			if the second noun is the hook:
				say "With a tinkle (the bell, not you), you hang the bell on the hook near the office door.";
				now the bell is on the hook;
			otherwise:
				say "The only good place to hang the bell is on its hook, near the door in the office.";
			the rule fails;
		-- the portrait:
			if the portrait is well-hung:
				say "It's already hanging nicely. As you will be at 8 a.m. if you don't get out of this jail.";
				the rule fails;
			if the second noun is the walls:
				say "Muddy walks over to the portrait and hangs it on the wall, calling back to you, [quotation mark]Do this look centered?[quotation mark][paragraph break]You regard the portait critically, [quotation mark]A little more to the left.[quotation mark][paragraph break][quotation mark]Good?[quotation mark][paragraph break][quotation mark]A little more...[quotation mark][paragraph break][quotation mark]Now?[quotation mark][paragraph break][quotation mark]There. I'd say it's well-hung.[quotation mark][paragraph break]Muddy raises his eyebrows, but doesn't say anything.";
				now the portrait is well-hung;
			otherwise:
				say "You can't hang the portrait there. It looks like the only good place to hang it is on the wall.";
			the rule fails;
		-- otherwise:
			say "You can't hang [a noun] on [a second noun].";
			the rule fails.
			
Instead of putting the portrait on the walls:
	try hanging the portrait on the walls.

[Instead of putting something (called the pendant) on something (called the soutainer):
	if the pendant is the portrait and the soutainer is the walls or the pendant is the bell and the soutainer is the hook:
		try hanging the pendant on the soutainer;
	otherwise:
		continue the action.]


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
0			"From the boiler, you hear the occasional hiss of steam"
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
0			"Through the window, you hear the strums of a neary banjo."
0			"You hear kids playing in the street, or perhaps a gang of drunken vigilantes exacting mob justice. It's hard to tell for sure."

Section Looking Under

Instead of looking under the noun:
	try searching the noun instead.
	
Section LS

LSing is an action applying to nothing. Understand "ls" as LSing.

Report LSing:
	say "Ellis? The town barber? He ain't here."
	
Section Picking

Picking is an action applying to one thing. Understand "pick [something]" as picking.

Instead of picking:
	say "It's hard to choose a good one."

Section Playing

Understand the command "play" as something new.  Playing is an action applying to one thing.  Understand "play [a thing]" as playing.

Check playing:
	if the noun is not the harmonica:
		say "You don't rightly know how to play such a thing.";
		stop the action.
		
Section Plucking

Plucking is an action applying to one thing. Understand "pluck [a thing]" as plucking.

Check plucking:
	if the noun is not the feather:
		say "There ain't but two things for plucking: feathers and banjos." instead.
		
Carry out plucking:
	try taking the feather.


Section Poking

Poking is an action applying to one thing. Understand "poke [a thing]" as poking.

Check poking:
	if the noun is the deputy and the deputy is not awake:
		say "You give him a cowpoke poke.";
		try waking the deputy;
	otherwise:
		try attacking the noun.

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
	say "You'd prefer not to. Too many memories of [one of]the war and how you came to oppose its ideology[or]how your plantation was torched[or]how you ended up as little more than a lackey to an aging itinerant cook with a penchant for intricate but ultimately doomed schemes[stopping]." 
	
Section Ringing

Ringing is an action applying to one thing. Understand "ring [a thing]" as ringing.

Check ringing:
	if noun is not the bell:
		say "You can't really ring [a noun]." instead.
		
Carry out ringing:
	say "You shake the bell and it jingles merrily."
	
Section Searching

Understand "frisk [something]" as searching. Understand "pat down [something]" as searching.
	
Section Shooting

Shooting is an action applying to one thing. Understand "shoot [a thing]" as shooting.

Check shooting:
	if the player does not carry the gun:
		if the player encloses the gun:
			now the player carries the gun;
			say "(first drawing your gun)[command clarification break]";
		otherwise:
			if the player can see the gun:
				say "(first picking up your gun)[command clarification break]";
				now the player carries the gun;
			otherwise:
				say "You'd need a gun to shoot off anything besides your mouth. And even for that, having a gun near by is recommended." instead.

Carry out shooting:
	change the block stage business flag to true;
	say "You squeeze the trigger (click). [one of]Dang, no bullets. [or][stopping][paragraph break]";
	if the sheriff is in the jailhouse:
		say "A barrage of pistol discharges cut through the air. You try to imagine that the bullets are just insubstantial phantoms, but that doesn't pan out for you in the end. Riddled with bullets and torn to pieces, your body collapses in a bloody mess.";
		change the endgame to shot;
		end the game in death;
	otherwise:
		if the noun is:
			-- Muddy:
				say "Muddy says, [quotation mark][one of]Cut that out, Rick. A man could get himself dead joking around like that[or]Really Rick, that's annoying[stopping].[quotation mark][paragraph break]";
			-- Rick:
				say "You shake off the momentary melancholy.";
			-- the deputy:
				say "He's too looped on Peruvian Snoozeberries to notice your attempt."	
	
Section Showing

Rule for reaching inside a room when the current action is showing:
	allow access.
	
Instead of showing something (called the thingie) to a person (called the observer):
	if the observer is:
		-- Rick:
			say "You show [the thingie] to yourself and you wonder how this is different from just examining [the thingie].";
		-- Muddy:
			if the thingie is an item listed in the Table of Muddy and Deputy Show and Tell:
				say "Muddy takes a look at [the thingie] and says, [quotation mark][muddy-text corresponding to an item of thingie in the Table of Muddy and Deputy Show and Tell].[quotation mark][paragraph break]";
			otherwise:
				say "Muddy grunts, unimpressed.";
		-- the deputy:
			if the deputy is not awake:
				say "He ain't awake enough to take a look at [the thingie].";
			otherwise:
				if the thingie is an item listed in the Table of Muddy and Deputy Show and Tell:
					if there is a deputy-text corresponding to an item of thingie in the Table of Muddy and Deputy Show and Tell:
						say "The deputy looks [one of]annoyed[or]irritated[or]put out[or]irked[or]bored[or]like he's a bad mood[or]like he has better things to do[at random], but looks [if the thingie is not in the location of the deputy]over [end if]at [the thingie] and says, [quotation mark][deputy-text corresponding to an item of thingie in the Table of Muddy and Deputy Show and Tell].[quotation mark][paragraph break]";
					otherwise:
						say "[one of]Dunno[or]Humph[or]Huh[or]Um[at random].";
				otherwise:
					say "The deputy isn't impressed.";				
		-- Flash:
			say "Flash [one of]breathes deeply[or]sighs[or]ignores you[or]pretends to ignore you[or]daydreams[or]looks at everything but what you are trying to show him[or]licks his nose[or]smells hit butt[or]snorts[at random].";
		-- the vulture:
			say "Squaaaarrrrrkkkkk!"
			

[blanks occur for cases where the deputy will not be in a state to comment on the object: either he's drugged, or the object is not available at the time.]
Table of Muddy and Deputy Show and Tell
item		muddy-text		deputy-text
pocketwatch		"[watch-muddy]"		"[watch-deputy]"
can of beans		"[can-muddy]"		"[can-deputy]"
meat		"[meat-muddy]"		"[meat-deputy]"
spoon		"[spoon-muddy]"		"[spoon-deputy]"
warrant		"[warrant-muddy]"		"[warrant-deputy]"
bell		"[bell-muddy]"		--
banana		"[banana-muddy]"		--
gun		"[gun-muddy]"		--
gunbelt		"[gun-muddy]"		--
holster		"[gun-muddy]"		--
brass key		"[brass-muddy]"		--
cup		"[cup-muddy]"		--
stool		"[stool-muddy]"		--
harmonica		"[harmonica-muddy]"		"[harmonica-deputy]"
scrap		"[scrap-muddy]"		"[scrap-deputy]"
left boot		"[boot-muddy]"		"[boot-deputy]"
right boot		"[boot-muddy]"		"[boot-deputy]"
boots		"[boot-muddy]"		"[boot-deputy]"
tin		"[tin-muddy]"		"[tin-deputy]"
tobacco		"[tobacco-muddy]"		"[tobacco-deputy]"
hat		"[hat-muddy]"		"[hat-deputy]"
pamphlet		"test"		"[pamphlet-deputy]"
berry		"[berry-show-muddy]"		"[berry-deputy]"
feather		"[feather-muddy]"		"[feather-deputy]"

[gray bar]

Section Smelling
	
[Like listening, smelling is performed through instead rules. The generic smell rule tracks bad smells, which decay over time.]

[A procedural rule while smelling:
	ignore the can't reach inside rooms rule.]
	
The ambient odor is a number that varies. The ambient odor is 10.

Instead of smelling: 
	if the cigar is in the jailhouse:
		say "The whole place reeks of cheap cigar smoke.";
		the rule succeeds; 
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
	otherwise:
		if the noun is a fardrop:
			say "[The noun] is too far away to smell.";
			the rule fails;
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
	if the office encloses the noun and the deputy is in the office and the deputy is awake and the noun is not a man:
		say "The deputy gives you a frightful stern look, so you decide not to spit at anything in the office while he's around." instead;	
	if the jail cell encloses the noun and the noun is not the floor and the noun is not Muddy and the noun is not the window:
		say "You're not keen to spit at anything in the jail cell with you. A man don't spit where he lives (excepting maybe on the floor, of course)." instead;
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
		-- army guards: 
			say "They have guns with bullets. You have tobacco." instead;
		-- floor:
			say "[one of]The tobacco juice splays outward from the point of impact and slowly soaks into the bone-dry concrete, leaving a lasting stain that you can be proud of.[or]You spew another work of art on the jail floor.[or]Splotch![stopping]";
			move the stain to the jail cell;
		-- window:
			say "The wad shoots out the window and into the street.";
		-- bell:
			hit-bell;
		-- the hook:
			say "The bell would be more fun." instead;
		-- the grate:
			say "There is a sizzling sound.";
		-- the lever:
			say "The tobacco sails right past the thin lever, hits the boiler pipe and slides down, out of sight.";
		-- the cup:
			say "Plop!";
		-- the coffee:
			say "It submerges, without spilling a drop. Yech.";
		-- otherwise: 
			say "The tobacco hits [the noun], but drops off."; [covers anything else.]
	now the chew count is zero;
	move the tobacco to the tin.
	
To say big target:
	say "[one of]Where's the challenge in that?[or]Hardly a test of your aiming abilities.[or]Child's play. Your grandmother could hit [a noun].[at random]".
	
To hit-bell:
	if Flash is in the office:
		if the bell is not rung:
			say "Ding! The bell is hit so hard that it spins around on the hook several times, clanging like a church bell on Sunday.[paragraph break]The ameoba-like mass of fat and fur known to you as Flash leaps immediately to his feet, saliva dripping from his toothless jowls. He lunges like a champion fencer for his food bowl. His leash snaps taut, pulling the lever away from the front door and towards the strange machine.[paragraph break]The boiler hisses and gurgles, steam jets from the rivet joints in the pipe that connects to the machine, and the machine itself vibrates and rumbles for a minute. A white cup drops from a chute and brown liquid squirts from a nozzle and fills the cup. The smell of fresh coffee pervades the office.[paragraph break]Finding no food in his bowl, Flash snorts perfunctorily and resumes his former position, pulling the lever back to the middle position.";
			now the bell is rung;
			make coffee;
			adjust points by one;
		otherwise: [bell has already been rung, Flash is still around]
			say "Your projectile ricochets off the bell with a metallic [quotation mark]ding![quotation mark][paragraph break]Flash reflexively jumps towards his feeding bowl, pulling the lever and somehow [if the cup is on the protocappuccinomatic]causing the machine to rattle and buzz[otherwise]brewing a cup of coffee[end if]. Finding no food, the despondent dog returns to favorite place in front of the boiler, shutting off the coffee machine.";
			make coffee;
	otherwise:[still the bell, but nothing to do with Flash]
		say "The bell rings hollowly."

Section Talking

Talking is an action applying to one thing. Understand "talk to [something]" as talking.

Rule for reaching inside a room when the current action is talking:
	allow access.

Check talking:
	if the noun is not a person:
		say "People will say you're odd if you make of habit of talking to [the noun]." instead.
		
Carry out talking:
	say "[lame talk]".
	
To say lame talk:
	say "You can ASK someone ABOUT something or SHOW something TO someone."
	
Section Tasting

Instead of tasting a thing (called the sample):
	try eating the sample.
	
Section Telling

Rule for reaching inside a room when telling someone about something:
	allow access.

Instead of telling someone about anything:
	say "You ain't got much to tell.[paragraph break]Maybe you could try ASK people ABOUT stuff, or SHOW stuff TO them."
	
Section Touch
[Touching is implemented through an after rule, which is nice in terms of making use of existing relationships about whether something is touchable or not. If an item has a texture attribute, this rule makes use of it.]

Instead of touching a fardrop:
	say "[The noun] is too far away to touch."

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
	
Section Using

Understand the command "use" as something new.  Using is an action applying to one thing. Understand "use [a thing]" as using.

Check using:[this is where all the overriding happens for specific cases]
	if the noun is:
		-- harmonica: 
			try playing the harmonica instead;
		-- stool:
			try climbing the stool instead;
		-- Muddy:
			say "He's the one that usually manipulates you!" instead;
		-- Pete:
			say "You ain't got no use for a preacher." instead;
		-- can of beans:
			say "You can take care of business later." instead.

Carry out using:
	say "You're not sure how to use [a noun]. If you're really hankering to use [the noun], try saying it different. That might help."	


Section Xyzzying

Xyzzying is an action applying to nothing.  Understand "xyzzy" as xyzzying.

The xyzzy-flag is a truth state that varies. The xyzzy-flag is false.

Carry out xyzzying:
	if the xyzzy-flag is false:
		say "You ponder your life.[paragraph break]For a brief moment, you wonder if your situation is but a painting in the mind of an artist; a meditation on form, an impression of rural life on the verge of industrialization as abstracted in the modern style.[paragraph break]On the other hand, you may just have some indigestion.[paragraph break]";
		now the xyzzy-flag is true;
	otherwise:
		say "Absolutely nothing happens.".
		

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

[To reduce the clutter during debugging; suppreses stage business]
Muting is an action out of world. Understand "mute" as muting.

Carry out muting:
	say "[bracket]Mute[if muted is true]Off[otherwise]On[end if][close bracket][line break]";
	if muted is true:
		change muted to false;
	otherwise:
		change muted to true;
	
Chapter Initialize

The maximum score is 24. [TODO:  change this later]

When play begins:
	say the intro-text;
	change the time of day to 7:15 PM;
        	change the left hand status line to "[capped room name of the location]";
        	change right hand status line to "Score: [score]/[maximum score]";
	move the harmonica to Muddy;
	try silently switching score notification off.
	
After printing the banner text:
	say "Type [quotation mark]help[quotation mark] for instructions and [quotation mark]hints[quotation mark] for hints -- or just roll into town guns a-blazin[apostrophe].[paragraph break]";
	say "[bracket]Press Space To Continue[close bracket]";
	wait for any key;
	clear screen;
	say "In the twilight, you sight the sheriff's sturdy brick office near the edge of town. 'That's mighty fine construction,' notes Muddy, sounding less feisty now. 'Mighty fine indeed.' The coach rolls to a halt and a thick arm yanks you roughly from your seat. You land awkwardly in the rutted street, where the sheriff holds you in place with the heel of one boot. He yells to his men, 'Bring the coach around back, we got to [italic type]impound[roman type] that evidence.' You are shoved into the sheriff's office and then into a small holding cell.[paragraph break]The deputy wakes with a start, whips his dusty boots off the desk and stands, tucking his shirt back into his pants. The sheriff gives him a brief, judgmental glance and offhandedly tosses an arrest warrant on the desk. He barks, 'Jimbo, listen up. Picked up these two down near the train. A federal marshal will be coming for them at eight o'clock tomorrow morning. There's going to be a hanging!' The deputy nods slowly. The sheriff continues, 'Please take care of our [apostrophe]guests[apostrophe]. I got to head down to Wichita Falls to discuss my invention with some [italic type]investors[roman type], so you is in charge.' The deputy smiles until the sheriff adds, 'Jimbo, don't screw up,' as he heads out the door."

Chapter Every Turn

Every turn:
	[avoid penalizing time for non-actions, a nuance]
	if the current action is taking inventory or the current action is looking:
		change the time of day to 1 minute before the time of day;
	[adjust the odor]		
	if the number of bootlike things that are worn is:
		-- 0: 
			change the ambient odor to 100;
		-- 1:
			if the ambient odor is less than 50: 
				change the ambient odor to 50;
	[Reaction to smells]
	Consider the nasal reaction rules;	
	if the number of bootlike things that are worn is two:
		if the ambient odor is greater than ten:
			decrease the ambient odor by ten;
	[Arts and farts and blueberry tarts. Considered after nasal reaction to make reactions to farts delay by one turn]			
	Consider the Farting Rule;		
	[muddy's plans]
	Consider the Muddy's Plan rule;
	[stage business]
	if muted is false:
		Consider the stage business rules;
	[unblock stage business for next turn]
	Change the block stage business flag to false;	
	[###TODO Add other every-turn items]
	
Section Nasal Reactions

The nasal reaction rules is a rulebook. [see individual rules in the scene descriptions]

[I just noticed that the picker follows the nose stuff....]
	
Section Phrase Picker
[To select a canned phrase from a table, choosing randomly amongst the less frequently said phrases. Tables need at least two entries.]

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

The endgame block stage business rule is listed first in the stage business rules.

This is the endgame block stage business rule:
	if the denouement is happening or the plusquedenouement is happening:
		the rule succeeds.

The block all stage business rule is listed after the endgame block stage business rule in the stage business rules. 

This is the block all stage business rule:
	if the block stage business flag is true:
		the rule succeeds.
	
The Muddy's stage business rule is listed after the block all stage business rule in the stage business rules.

This is the Muddy's stage business rule:
	if a random chance of 4 in 20 succeeds:
		say "Muddy ";
		pick a phrase from the Table of Muddy Actions;
		say paragraph break;
		the rule succeeds.
		
Table of Muddy Actions
times-used		verbage
0					"stares out the window. "
0					"picks some food from between his teeth. "	
0					"cracks his knuckles loudly. "
0					"hums [quotation mark]Camptown Races[quotation mark], singing the [quotation mark]Doo-Dars[quotation mark] off key. The effect is annoying. "
0					"scrapes some dust off his boots. "
0					"tugs down on his vest, which had ridden up a bit. "
0					"pats down his wild hair but only makes it worse. "
0					"strokes his whiskers. "
0					"scratches his [one of]arm[or]back[or]leg[or]neck[or]chin[at random]. "
0					"leans against the wall and sighs. "
0					"closes his eyes and rubs his temples. "
0					"rocks back and forth on the balls of his feet. "
0					"paces back and forth impatiently. "
0					"puts his hands in his pockets and seems to be daydreaming. "
0					"looks like he's about to have a great idea, but then goes back to staring at the floor. "
0					"looks around the sheriff's office. "
0					"spends some time looking over at the [one of]machine[or]desk[or]door[or]boiler[at random] in the office. "
0					"murmurs to himself about not being able to recall a limerick he once heard that had something to do with cowboys and farmers. "
0					"counts the number of stars he can see out the window, divides by the number of bars in the jail cell, and takes the natural logarithm. [quotation mark]Yup,[quotation mark] he says, [quotation mark]that's what I thought.[quotation mark]"
0					"rubs up and down against the brick wall, scratching an itch"
0					"burps loudly and remarks, [quotation mark]Oh, that's much better.[quotation mark]"
0					"rubs his belly and says, [quotation mark]I reckon I could do with a snack right about now.[quotation mark]"
0					"rubs his eyes, [quotation mark]I didn't get a good night's sleep last night either. I'm bushed.[quotation mark]"
0					"glances over at you, and seems about to speak, but then walks away again. "
0					"seems lost in thought. "
0					"drums his fingers against the wall. "
		
The Flash's stage business rule is listed after the Muddy's stage business rule in the stage business rules.
		
This is the Flash's stage business rule:
	if Flash is not in Limbo and a random chance of 4 in 20 succeeds:
		say "Flash ";
		if a random chance of 16 in 20 succeeds:
			pick a phrase from the Table of Common Flash Actions;
		otherwise:
			pick a phrase from the table of Rare Flash Actions;
		say ".";
		the rule succeeds.
		
Table of Common Flash Actions
times-used		verbage
0					"is as still as a statue"
0					"snores loudly, his jowls fluttering with each breath"	
0					"almost moves, but then doesn't"
0					"rolls almost imperceptibly to the [one of]left[or]right[at random]"
0					"moves his [one of]front[or]rear[at random] leg slightly"
0					"shifts his tail by an inch"
0					"swallows loudly"
0					"sneezes, but somehow he manages to do it slowly"
0					"half opens one eye and looks at you and Muddy"
0					"has died. Wait. Sorry. He's just really immobile"
0					"starts to rub a flea but then decides it to too much work"
0					"basks in the glow of the boiler"
0					"nuzzles up to the boiler"		
0					"drools"
0					"sluggishly licks his nose"
0					"raises an ear halfway and then lets it flap back down"	
0					"sniffs his food bowl"
0					"gazes at the dinner bell"
0					"keeps an eye on his food bowl"
0					"looks admiringly at the dinner bell"
	
Table of Rare Flash Actions
times-used		verbage
0					"streches slowly and then settles back down"
0					"prepares to bark at something he sees outside, but gets winded and breathes heavily for a few minutes"	
0					"rolls over and takes a few minutes afterwards to catch his breath"
0					"stands up, turns around once, and lays back down again"
0					"lazily sniffs the [random furniture in the office]"
0					"has a nightmare and growls quietly before returning to a deep slumber"



The Pete's stage business rule is listed after Flash's stage business rule in the stage business rules.

This is the Pete's stage business rule:
	[can direct Pete's actions to hint context-specifically (e.g., on a scene-happening basis) by selecting appropriate table]
	if Pete is not recognized:	
		make no decision;
		[Pete only becomes noticeable when they recognize him as Pastor Pete; this can 
		be either by Muddy getting the pamphlet, or a certain amount of time after Pete is examined (as a failsafe)]
	if Pete is not in Limbo and a random chance of 8 in 20 succeeds:
		if a random chance of 4 in 20 succeeds:
			say "Pastor Pete [one of]jumps straight up, immediately animate[or]springs off the bench[or]spins in the air[or]leaps into the middle of the jail cell[or]throws his head back, howls, and stands on the bench[or]somersaults from the bench into the center of the jail cell[or]climbs up the jail bars, his arms swinging wildly[or]bounces from wall to wall[at random]. ";
			say "He [one of]rant[or]scream[or]yell[or]exclaim[or]shriek[or]chant[or]bellow[or]holler[at random]s, [quotation mark]";
			pick a phrase from the Table of Pete's Rants;
			say "![paragraph break]Pete [one of]collapses[or]dives[or]crumples[or]faints[or]falls[at random] onto the bench and [one of]falls back to sleep immediately[or]is soon lost in dreams again[or]resumes snoring without missing a beat[or]resumes his previous position as if nothing had happened[at random].";
		otherwise:
			say "Pastor Pete ";
			pick a phrase from the table of Pete's Strange Behavior;
		the rule succeeds.
		
Table of Pete's Rants
times-used		verbage
0					"BLESSED is the snail who crawls its time across the face of the earth yet, safe in its routine but for the SALT sprinkled up him, the salt of the earth, well not so much earth per se, earth being dirt, but the ocean, which covers it, and would not cover him so lightly were he not, like a SLUG, so counterintuitively susceptible to its powers. How too we, like the SNAIL, curled in our houses made of our own SUBSTANCE, that being what differentiates the two, after all, amongst other minutiae, which are neither here nor there, nor relevant to the topic at hand, except in such as way as all things are relevant being made by HIS HAND, that by the end of such an analysis one must conclude not based on the FACTS, yet with the INARGUABLE voice of FAITH, which rails against the shackles of REASON itself, having lost track of the original THESIS. Which, were it important, chances are, we would remember. That is why you see so few slugs these days, at any rate"
0					"The KING of RETRIBUTION pales in the actinic flame of REVENGE as the knife cuts through a length of string: not unlike the string which wraps a package, severing the string not into many pieces, but presuming it is simply wrapped once around the package, into a single, long piece (likely with a knot, the knot being required to secure the package and BIND it to its purpose). And yet, consider, gentlefolk, that the package may be wrapped many, many times with twine. Ah, yes, you hadn't considered that, had you? Thick, difficult-to-cut twine, or even worse, tape or glue. FOR MANY ARE THE STATIONERY ITEMS OF THE LORD! AND DEEP ARE THE DRAWERS OF HIS WRITING DESK! AND NOT LACKING IN THE LEAST SUPPLY IS HE. Thus, sayeth the worker who labors at the post: cut once, measure many. Enlightenment only comes to those to whom it is addressed and properly stamped"	
0					"What a wok is SPAM! Hot, nubile raisins, how if it is not feckless tea? INFORM and mooing hot espresso at a mere apple? INACTION cowlick angles? Incomprehension, how'd you like a cod? The bow tie unfurled, the parabola ova nibbles; and yacht to my wad isthmus queen tennis off dost? MY CANDLE LIGHTS ME NOT, Norway man knees air; throw by your Somali lint use, eat meat, seize Sue"
0					"Blessed is he who fears greatly the WREATHE and COILING of the DESTINY, which, unbound at last, will spring first this way, and then that, bouncing and jostling the CLAMOROUS and the EVER-CHATTERING ranks of the unwary and disillusioned. Yea, though grief be upon us, and the groaning and wailing of the neighbors be slightly disconcerting or indeed unsettling, how much more upsetting would it be to find yourself not wearing your own SOCKS, but those of your neighbor? Who knows that they have done in those socks, or what mysteries those socks would reveal to the chosen few"
0		"The unmatched sock is a WARNING for those how can see it. For each and ever unmatched sock, there is another unmatched sock, which I say unto you, matches it. So too, the epitome of man's moral corruption. Lo, though the sock may be unmatched, it need not be thrown out. What separates the sock from the pot holder? Nothing more than its fortune and perhaps some insulation. In this way, the upstanding and righteous may become common kitchen accoutrements, but for clean living, adequate FIBER, and a firm conviction in the conscientous daily application of an approved DENTIFRICE"
0		"The mystery of unfounded knowledge knows not the day of its own destruction, nor whence it came. It is a PUZZLE wrapped in an enigma, boarded up in a box lined with straw, and surrounded by another metal box with RIVETS, and finally an even larger metal box that is encased in concrete and thrown into the ocean, where it is swallowed by a whale, which is in turn swallowed by a sea turtle of unusual proportions. That SEA TURTLE is subsequently swallowed by a still larger sea turtle, and from there on, it's turtles all the way down"
0		"The SHIP of INTEGRITY floats merrily on the sea of justice, and we on the shore are lapped by the waves of righteousness, drizzled upon by the REIGN of PROPRIETY, and spat upon by the unyielding sense of honor and self-worth that could be extracted from fried food if one had the time and inclination to do so. We are doused by a fire brigade of good works, immersed in the RIVER of NOBLE DEEDS, pulled under by the CURRENT of good will, and drowned within an inch of our very lives in the deep, dark well of DUTY. Thus, I say, swimming is something that should be learned at an early age, and then avoided"
0		"The ENVELOPE of KNOWLEDGE is sealed with the WAX of PRIDE and impressed by the unwieldy RING of TWISTED ASPIRATIONS, but did anyone remember to put the LETTER of CIVILITY in the envelope? Does the envelope bear the STAMP of HUMILITY, or is it sent cash on delivery? Shall it thusly come to pass that FATE arrives one day in our letter boxes, and we find ourselves searching and shuffling through piles and piles of ADVERTISING, only to find a bill for a life of sinfulness? No! Not if we are quick-witted and change our addresses or even our names, and leave no forwarding instructions and nail shut our letter box, and saw it down, and cast it in a tall VOLCANO and watch it sink into the sulfurous lava. Yea! That might just work"
0		"Blessed is the terribly, terribly DISMAL. How glorious in unpleasantness, how lovely in loathing, how simply pleasing in depravity. In the whole world full of pain and suffering and plagues, not to mention sock monkeys and advertising, how refreshing it is the endless potential bounty of disappointment. How much more character we might build were we but marginally more afflicted by adversity, we can only pray. Let us extol the joyfulness of misery and cheer the horrifying facts underlying the production of sausages, and revel in the lack of things we have to celebrate"
0		"On the day that the EARTH yawns open and thunder booms from the mountaintops and the ELECT are winnowed from the CHAFF, we must give pause to wonder at what point the elect become candidates, and in a related sense, what they can do to avoid chafing, save wearing loose fitting clothing. And DENIM. Is it me, or are other people bothered by denim? You see it all around. Everyone wears denim, even when it's hot? Are these people then disqualified from participation in democratic institutions? What tyranny is this? Are they by definition off the list of the just and the ballot of the redeemed? Can they righteous themselves in, or would that be seen as cheating in some sense (I would think so, actually). Thus, the careful application of cornstarch to the affected areas is but prudence in consideration of the END of TIMES"
0		"The SUN ariseth, the MOON setteth and the leaves, they do in a chaotic manner blow themselves around and around, presuming it is the time of the year for them to do so, and that the weather has cooperated. The latter pertaining to leaves, and not so much the sun and moon, which are independent of the WEATHER, except in so far as being observable only when the weather permits. So, it seems that the weather itself, is somewhat a culprit in these matters, but what will a brisk rain storm do against the fiery, hot flames of eternal damnation? STEAM. Yes, steam. Because it's not so much the heat, it's the HUMIDITY. Back on your heads, my lads"
0		"One cannot but stand in awe and grovel conspicuously on the ground in the PRESENCE of the divine, yet therein lies some degree of paradox, setting aside an unusual degree of flexibility. Even then, the position would be preposterous, with the posterior superior. Such superposition of impossible supposition is suspicious, and I would say, rude."
0		"I cry unto thee, OLD PORK CHOP, and you looked upon my doleful case and set before me a charger of mustards gathered from all lands. The sweet mustard of the orient, the bitter mustard of the desert, the piquant and creamy mustards of the plains, and the chewy, almost TAFFY-LIKE mustards that crop up from time to time by mail order. All these you set before me, and yet not a bowl, not a teaspoon of MINT JELLY. The truth is evident in the absence of evidence itself, you are no Pork Chop but a Lamb Cutlet, and trying to lead me astray. The condiments have betrayed me and lead me down the path of devious hoofed meat. But I rejoice, for I know that dessert is around the corner, and ever your aftertaste shall perish in the SHERBET of EQUANIMITY"
0		"My SOUL thirsteth for the comfort of the divine, and yet how shall I recognize it? The divine must grow where is seeded, and having been sawn, it cannot yield its fruit. No, the vine must be PLUCKED early, but not too early, or the fruit will be tart, and if picked more tardily, so more fruity. It matters not so much as the sweetness of the divine, although the sweeter, the stronger after some time. I drink the heady fruits of the divine, the more frothy and heady are fine. Let us decant the praises of the wine, and slake the furnace of the SUBLIME"
0		"The desires of an earthly PRINCE are met not by gold or myrrh or power over his enemies, but by HERRING. Salted, preserved herring from a can. Kippered Herring. Sweet, sweet, kippered herring. Who could desire more? Indeed, after a few, who could desire more KIPPERED herring, at least for a little while, having filled up on the first tin of them? They're indeed salty, harmless to you and me, but for a SLUG or snail, lethal. This is part of the divine wisdom, and why herrings live in the sea (prior to being canned) and slugs do not (and are, therefore, unlikely to be canned). To argue with this is sheer madness"
0		"Fear not the judgement, for each of us will be accorded mercy, and the accordion of mercy shall be loud and have a good beat. One that you can dance to. Let us give thanks for mercy, except in FRANCE, where it would be redundant. Let the music, or the closest approximation thereto renderable by an accordion, flow over all lands, except France, which again is a special case. Inhabited by MIMES and having not the power of proper speech, the accordion is irrelevant and will only inspire their wrath and vitriol, unless played upon a victrola, or as they say, a francophono"





To say herring:
	say "Kippered herring, please![no line break]".

Table of Pete's Strange Behavior
times-used		verbage
0					"shakes and twists spasmodically."
0					"murmurs repeatedly, [quotation mark][herring] [herring] [herring][quotation mark]"
0					"peddles the air with his feet, while making sounds like a ringing bell."
0					"rolls back and forth on the bench."
0					"curls up into a ball, muttering to himself."
0					"froths at the mouth."
0					"stared wide-eyed at the ceiling for a moment and the falls back asleep."
0					"sits bolt upright, howls at the moon, and flips back over, fast asleep."

Table of Pete's Vulture Clues
times-used		verbage
0					"vulture clue 1"
0					"vulture clue 2"	
0					"vulture clue 3"
		
The Deputy's stage business rule is listed after Pete's stage business rule in the stage business rules.
	
This is the Deputy's stage business rule:
	if the Deputy is not in Limbo and the Introduction is happening and a random chance of 10 in 20 succeeds:
		say "[if the player is in the jail cell][one of]Over in[or]Back in[or]In[or]On the other side of the jail bars in[at random] the office, the[otherwise]The[end if] deputy ";
		pick a phrase from the Table of Deputy's Doings;
		say paragraph break;
		the rule succeeds.
		
Table of Deputy's Doings
times-used		verbage
0					"watches you with a bored expression. "
0					"warms his hands near the boiler. "
0					"sniffles loudly and wipes his nose on his sleeve. "
0					"looks tired. "
0					"pokes his head out of the office and yells at some passersby. "
0					"inspects his LeMat revolver lovingly. "
0					"stares at Muddy. "
0					"repeatedly counts his fingers, but is unable to get a firm answer. "
0					"reaches into his pocket, produces a strip of beef jerky and chews on it for a while. "
0					"peeks through the jail cell window at the saloon across the street. It's clear he'd rather be there. "
0					"runs his hand through his sparse hair. "
0					"makes you nervous as he waves his gun back and forth, jerking the barrel up and shaping the words [quotation mark]Pow! Pow![quotation mark] with his lips. "
	
The Environmental stage business rule is listed last in the stage business rules.

This is the Environmental stage business rule:
	if a random chance of 2 in 20 succeeds:
		pick a phrase from the Table of Environmental Stage Business;
		say ".";
		the rule succeeds.
		
Table of Environmental Stage Business
times-used		verbage
0			"A fly buzzes past your ear and lands on the ceiling"
0			"A faint breeze wafts by"
0			"Outside, there is a brief cloudburst. The wind comes right behind the rain"
0			"A yellow-fringed surrey trots past the sheriff's office"
0			"A cockroach scrambles by, making a detour around Muddy. Cockroaches have noses, you figure"
0			"It feels cooler than it did last night"

Chapter Limbo
[A place for offstage stuff]

Limbo is a room.

The cigar is a prop in Limbo. The description of the cigar is "A stogie."

Section Can

The can of beans is a openable closed container in Limbo. Understand "metal", "metallic" or "bean" or "beans" or "can" as the can of beans. The description of the can of beans is "A[if the can of beans is open]n open[otherwise] closed[end if] metal can with a paper label saying [quotation mark]BEANS[quotation mark]. [if the spoon is in the can]One end of a spoon sticks out of the can. [end if]On the back, some fine print says, [quotation mark]Precooked beans. No claim is made regarding the cardioprotective nature of this product. May cause abdominal distension if ingested. No fitness of purpose is implied. No warranty is provided for personal or other injury, or injury or loss related directly or indirectly to the use of this product. By opening this can, you agree to the terms of service posted in town.[quotation mark]". The scent of the can of beans is "[if the can of beans is open]like beans. No surprise there[otherwise]delicious and yet somehow disgusting[end if]". The texture of the can of beans is "[if open][metallic][otherwise]slimy and gelatinous[end if]". The can of beans can be consumed. The can of beans is not consumed.

Instead of inserting something (called the item) into the can of beans:
	if the can of beans is not open:
		say "Impossible. The can of beans isn't open.";	
		the rule succeeds;
	if the can of beans is not consumed:
		say "You can't. The can is full of beans.";
		the rule succeeds;
	if the item is:
		-- the spoon:
			continue the action;
		-- tobacco:
			say "You don't want to chew any tobacco that tastes like beans!";
		-- berry:
			say "And ruin a perfectly good berry? You'd rather not.";
		-- the feather:
			say "It's a can, not an ink well.";
		-- otherwise:
			say "[The item] is too big to fit in the can."

Instead of opening the can of beans:
	say "What do you want to open it with?"

Does the player mean doing something with the can of beans:
	it is likely.

The bean counter [:-)] is a number that varies. The bean counter is zero.

The flatulometer is a number that varies. The flatulometer is zero.

This is the farting rule:
	if the flatulometer is greater than zero:
		if the flatulometer is:
			-- 5: 
				say "Muddy has an aura of well-fed contentment.";
			-- 4: 
				say "Muddy holds his belly and comments, [quotation mark]Got a bit of indigestion, I does.[quotation mark][paragraph break]";
			-- 3: 
				say "Muddy wraps his arms around his belly, and moans softly, [quotation mark]I might have overdone it with them beans.[quotation mark][if the deputy is in the office][paragraph break]The deputy looks up from his reading, curious. [end if][paragraph break]"; 
			-- 2: 
				say "Muddy doubles over, [quotation mark]Rick, you should get to high ground. I'm feeling a mite bloated after them beans, and I think you know what's coming![quotation mark][paragraph break][quotation mark]Where the Sam Hill do you think I'm going to run to, Muddy? We're locked up in a hoosegow![no line break][if the deputy is in the office] Deputy, if'n I was you, I would put some distance between Muddy and your nose. [end if][quotation mark][if the deputy is in the office][paragraph break]The Deputy looks concerned, but confused. [end if][paragraph break]";
			-- 1: 
				say "You hear nothing. The smell nearly knocks you out. Vision fades, the room spins.[paragraph break]Muddy whispers in that understated manner of his, [quotation mark]That were a silent but deadly.[quotation mark][paragraph break]";
				change the ambient odor to 100;
		change the block stage business flag to true;
		decrease the flatulometer by one.
		

[It is difficult to replace the library message about score, as the "x1" variable in
the English definition is buried rather deeply. It's easier to deactivate score notification when play begins and to generally use a custom function.]

To adjust points by (amount - a number):
	say "[bracket]Your score has just gone ";
	if amount is less than zero:
		say "down";
	otherwise:
		say "up";
	say " by [amount in words][close bracket][paragraph break]";
	change the score to the score plus amount.

Before eating the can of beans:
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
		-- 3: say "Give Muddy the damn beans. He likes them, but you can't stand to even look at them.";
		-- otherwise: say "No way. No how. But Muddy likes them well enough.";
	increase the bean counter by one;
	stop the action.
	
Before giving the can of beans to someone (called the receiver):
	if the player does not carry the can of beans:
		try silently taking the can of beans;
		say "(first fetching the can of beans)[command clarification break]";
	if the receiver is:
		-- Muddy:
			if the can of beans is open:	
				if the can of beans is consumed:
					say "Muddy looks into the empty can and says, [quotation mark]Even if there were more beans, I reckon I've done had my fill for the month.[quotation mark][paragraph break]";
				otherwise:
					say "Muddy takes the can and stares hungrily at the beans.[paragraph break]Even in the most dire situation, Muddy's appetite remains intact. He looks expectantly at you and says, [quotation mark]Rick, got a spoon?[quotation mark][paragraph break]";
					move the can of beans to muddy;
			otherwise:
				say "[quotation mark]I may be long in the teeth, but I can't use them to open cans -- hungry though I reckon I sorely am.[quotation mark]  Muddy grumbles, as he often does when he's hungry and growing ornery.";
		-- Pete:
			say "The offer of beans is not enough to wake him from his tormented dreams.";
		-- Deputy:
			say "[if the deputy is awake][quotation mark]Nope. I know where them has been.[quotation mark][paragraph break][otherwise]He doesn't stir.[end if]";
		-- Rick:
			say "No way. You hate beans.";
		-- Sheriff:
			say "[The receiver] [one of]looks at the can curiously and pushes it away. [quotation mark]I don't want your ten year-old can of prison beans.[quotation mark][or]waves away the can of beans. [quotation mark]Nope. On a diet.[quotation mark][or]says, [quotation mark]No thanks[quotation mark][stopping][paragraph break]";
		-- Marshal:
			say "Despite the excellent nutritional value of legumes, I am a meatatarian and only eat beef. It is good for the American economy.";	
		-- Flash:
			say "[quotation mark]Grrrrrrrrr![quotation mark][paragraph break]";
		-- Vulture:
			say "[quotation mark]Brrrrraaak![quotation mark][paragraph break]";
	stop the action.
	
Before giving the spoon to someone (called the receiver):
	if the player does not carry the spoon:
		try silently taking the spoon;
		say "(first fetching the spoon)[command clarification break]";
	if the receiver is Muddy:
		if Muddy carries the can of beans:
			say "Muddy cracks a gap-toothed smile and says, [quotation mark]Much obliged,[quotation mark] before digging into the can of beans like a miner hot on a fresh gold vein. A couple moments later, he finishes circling the inside of the can with the spoon, trying to get every last drop of bean juice into his mouth. Afterwards, he places the can and spoon on the floor and rubs his stomach with satisfaction.";
			now the can of beans is consumed;
			now the spoon is in the can of beans;
			now the can of beans is in the location;
			change the flatulometer to 5;
		otherwise:
			say "Muddy politely refuses your offer. [quotation mark]Thanks, Rick, but one spoon don't help. Now, if'n we had two, then we could make us some serious music[if the deputy is in the jailhouse]![quotation mark][paragraph break]Hearing this, the deputy becomes strangely conversant. He offers, [quotation mark]Yeah, I reckon you two could play the harmonica and the spoons, I could play the jug some, and there ain't nothing in the whole wide world the sheriff likes more than a good waterboarding[end if]!";
	otherwise:
		say "[The receiver] is puzzled by your offer and says that he already has a spoon of his own.";
	stop the action.
		
Instead of entering the stool when the flatulometer is 2:
	say "Muddy warns, [quotation mark]That ain't high enough to matter![quotation mark][paragraph break]".

Section Meat

The meat is an edible prop in Limbo. Understand "rancid", "rotting", "flesh", or "meal", "hunk of" as the meat. The description of the meat is "[if the deputy is in the jailhouse and the deputy is awake][one of]The deputy has been watching you and he smiles sardonically. [quotation mark]I see you found your dinner. Or was that last week's dinner? Har, har![quotation mark][paragraph break]You are distracted by his comment and forget what you were doing[or][yucky meat][stopping][otherwise][yucky meat][end if]." The scent of the meat is "like it should be buried". The texture of the meat is "sticky in some places, fuzzy in others". The indefinite article of the meat is "a hunk of".

To say yucky meat:
	say "A grayish half-chewed haunch of something only slightly less lucky than you. Between waxy fibers and greasy gristle, the surface of the meat teems with... you don't want to look closer. It's vulture food, not something you'd want to pass your lips".

Instead of taking the meat:
	if the player does not carry the meat:
		say "Yuck. You are holding the rancid meat.";
		continue the action;
	otherwise:
		say "You already have the hunk of meat."

Instead of dropping the meat:
	say "You'd rather not put it down anywhere you'll be spending time. It'd attract vermin."

Instead of putting the meat on something (called the target):
	if the target is not the barrel:
		say "You'd rather not put it down anywhere you'll be spending time. It'd attract vermin.";
	otherwise:
		say "The hunk of meat drops on top of the covered barrel that is just beneath the window. Almost immediately, a vulture drops from the sky, lands on the barrel, and begins tearing into the rancid meat.";
		move the vulture to the barrel;
		move the meat to the barrel.
	
Instead of putting the meat on anything that is enclosed by the jail cell:
	say "You'd rather not put it on anything that you might sit on."
	
Instead of throwing the meat at anything that is enclosed by the office:
	say "You'd rather put the meat somewhere you don't have to look at it."
	
Instead of inserting the meat into the hat:
	say "There ain't no way that rotting chunk of meat is coming anywhere near your fine hat." 
	
Instead of eating the meat:
	say "[meat-text]" as dialogue;
	increase the time of day by one hour;
	if the hours part of the time of day is greater than 7 and the hours part of the time of day is less than 9:
		change the time of day to 8 AM.
		
Instead of giving the meat to Muddy:
	say "[one of]Muddy reaches eagerly, but stops just short of taking it. You've never seen Muddy turn down food before, so you're not sure how this experiment will work out. He sniffs it tentatively, hoping that the smell will be better than the sight. His eyes cross and he staggers backward, fanning the air and loosening his collar. [quotation mark]I think I'll pass,[quotation mark] he says weakly[or][quotation mark]No thanks, Rick. I'm on a diet this week -- I'm trying to avoid vulture food[stopping].[quotation mark][paragraph break]" as dialogue. 

Section Spoon

The spoon is a prop in Limbo. Understand "bent" or "old" as the spoon. The description of the spoon is "A bent old spoon." The texture of the spoon is "cool".

Section Stain

The stain is scenery in Limbo. The description of the stain is "A dark brown stain." The texture of the stain is "rough". The scent of the stain is "like dirt".

Section Warrant

The warrant is a sheet. The description of the warrant is "A piece of paper with black printing and red handwriting." The warrant can be edited. The warrant is not edited. The texture of the warrant is "like expensive paper".
 The warrant can be recognized. The warrant is not recognized. [by muddy, as a cue for second plan]

The warrant can be acknowledged. The warrant is not acknowledged.[by the deputy after editing]

To say warrant-text:
	say "FEDERAL WARRANT. This warrant is issued this eleventh day of December in the year of Our Lord Eighteen Hundred and Seventy-One and duly executed by the hand of United States Army Major General Philip H. Sheridan of Fort Sill, the Indian Territory of these United States of America. The fugitives Mudlark Abercromby MacGyver alias [quotation mark]Muddy Charlie,[quotation mark] alias [quotation mark]Mudshoe,[quotation mark] alias [quotation mark]Pensicola Thelma,[quotation mark] and one Major Richard Carter, alias [quotation mark]Gentleman Rick,[quotation mark] alias [quotation mark]Poor Richard,[quotation mark] alias [quotation mark]Gumball Ricky,[quotation mark] both formerly of the Confederate States Army, having been implicated by observation and circumstance of innumerable delicta, dacoiteries, iniquities, infringements, infractions, and indeed immorality, as well as trangressions, trespassing and trainstopping, are considered deleterious and detrimental to the welfare of the State, and THEREFORE, ordered thereupon that a Mittimus be made out to keep them confined until such time as they be discharged for proper hanging[if the warrant is edited] of the Sheriff's portrait on the office wall[end if]"
	
Instead of showing the warrant to muddy:
	if the warrant is not recognized:
		try reading the warrant;
	otherwise:
		continue the action.
	
	
Instead of reading the warrant:
	say "[one of][quotation mark]Muddy, this here's a federal warrant![quotation mark][paragraph break][quotation mark]What's it say, Rick?[quotation mark][paragraph break]I'm a-reading it now: [warrant-text] -- It's signed by the General.[quotation mark][paragraph break][quotation mark]Mittimus?[quotation mark][paragraph break][quotation mark]I reckon it's after Thanksgiving, before Easter.[quotation mark] [paragraph break][or]It says: [warrant-text].[stopping]";
	change the block stage business flag to true;
	if the warrant is not recognized:
		change the current plan to two;
		change the ask-me counter to zero;
		now the warrant is recognized.

Instead of giving the warrant to Muddy:
	if Muddy carries the warrant:
		say "Muddy already has it.";
		the rule fails;
	if the warrant is edited:
		say "[quotation mark]I already done fixed it up, Rick.[quotation mark][paragraph break]";
		the rule fails;
	if the warrant is not recognized:
		say "Muddy asks, [quotation mark][one of]What's that paper you is waving in my face, Rick[or]What is it[stopping]?[quotation mark][paragraph break]";
		the rule fails;
	if the ask-me counter is not 6:
		say "Muddy brushes it aside and says, [quotation mark][one of]Wait a minute. I ain't told you my plan yet. Don't go all a-jumping in front of my wagon. Why don't you ask me about the plan[or]Could you ask my my plan first[stopping]?[quotation mark][paragraph break]";
		the rule fails;
	now Muddy carries the warrant;
	say "Muddy accepts the document and stares at it for a while, turning it this way and that.";
	try WarrantForging. 

Instead of giving the berry to Muddy during forgery:		
	if the ask-me counter is 6: [i.e., the idea about forging has been expressed]
		if Muddy is inked:
			say "Thanks, Rick, but I already got some fine ink. Don't need a heap of ink, you know.";
		otherwise:
			now Muddy is inked;
			now the berry is part of the vine;
			say "[quotation mark]Thank you kindly. I reckon that will make a right fine ink.[quotation mark][if Muddy carries the feather] Muddy dabs the feather in the berry, soaking up the berry juice. [end if][paragraph break]";
			try WarrantForging.
		
Instead of giving the feather to Muddy:
	say "[quotation mark]Thanks, partner. That'll make a right proper pen.[quotation mark][paragraph break]";
	now Muddy carries the feather;
	try WarrantForging.  
	
Instead of giving the tobacco to Muddy during forgery:
	if the ask-me counter is 6:
		if Muddy is inked:
			say "Thanks, Rick. But I already got me some ink.";
		otherwise:
			now Muddy is inked;
			now the tobacco is in the tin;
			say "Muddy reluctantly accepts the tobacco, saying, [quotation mark]Well, I suppose I could use the tobacco juice.[quotation mark][if Muddy carries the feather] Muddy chews the tobacco some more, fills his makeshift pen with the juice, and throws the wad out the window. [end if][paragraph break]";
		try WarrantForging.

Instead of doing something with the deputy when the warrant is edited and the warrant is not acknowledged and the deputy is not explicated:
	if the current action is examining:
		continue the action;
	otherwise:
		now the deputy is explicated;
		say "[get out of jail free]";
		now the gate is unlocked;
		now the gate is open.
		
Instead of showing the warrant to the deputy when the warrant is acknowledged:
	say "The deputy acknowledges the official-looking document with a yawn.";


Section WarrantForging

To say need-pen:
	say "something to serve as a pen";
	
To say need-ink:
	say "something to serve as ink".

WarrantForging is an action applying to nothing.

Check WarrantForging:
	if Muddy carries the warrant and Muddy carries the feather and Muddy is inked:		
		continue the action;
	otherwise:
		say "He continues, [quotation mark]To finish this business with the warrant, I'll need ";
		if Muddy does not carry the feather and Muddy is not inked:
			say "both [need-pen] and another [need-ink]";
		otherwise if Muddy carries the feather and Muddy is not inked:
			say "[need-ink]";	
		otherwise if Muddy does not carry the feather and Muddy is inked:
			say "[need-pen]";
		otherwise:
			say "the warrant itself";
		say ".[quotation mark][paragraph break]" instead.
				
Carry out WarrantForging:
	say "Muddy applies his quill to the paper and with a few flourishes, scrawls an additional sentence on the warrant. He blows gently on it to dry the [quotation mark]ink[quotation mark] and hands the warrant back to you for your inspection.";
	now Rick carries the warrant;
	now the warrant is edited.
	
Instead of doing something with the warrant when the warrant is edited:
	if the current action is dropping or inserting or putting on or throwing at:
		say "No way. That warrant is your ticket out of here.";
	otherwise:
		continue the action.


Chapter Jailhouse Region

The jailhouse is a region.  The office and jail cell are part of the jailhouse.

The ceiling is a fardrop in the jailhouse.  The description of the ceiling is "The stucco jailhouse ceiling is too high to touch. "

The walls are a plural-named backdrop in the jailhouse.  Understand "wall" as the walls.  The description of the walls is "The jailhouse walls are made of brightly painted white bricks. The bricks still smell like fresh paint."   The scent of the walls is "like fresh paint". The texture of the walls is "rough and a little bit powdery".

The sky is a fardrop in the jailhouse.  The description of the sky is "Outside the window, the moon [if the hours part of the time of day is less than 8]sets[otherwise]rises[end if] on a cloudless night. In the distance, a wake of vultures saw the air, circling their unfortunate prey."

Instead of touching the sky:
	say "Kind of makes you wonder if the world is hollow, don't it?"

The vultures are a plural-named fardrop in the jailhouse.  The description of the vultures is "They look hungry.  Why else would they circle like that?".

Chapter Office

The office is a room. The description of the office is "[one of]A one room jailhouse is fitting for this jerkwater town. [or][stopping]There's a big, wooden desk in the middle of the room[if introduction is happening and the cigar is not in the jailhouse], and behind it sits the deputy[end if]. Just behind the desk is a fancy cabinet, with real glass in the door[if the cabinet door is open], which is open[end if]. [if the portrait is hung up]An aesthetically questionable portrait of the sheriff hangs on the office wall[otherwise]Next to the cabinet, a large, framed picture of the sheriff stands on the floor[end if]. To the side of the desk, there is a weird looking contraption: clearly, some sort of steam boiler which is connected by pipes to a strange looking machine. On the opposite side of the room, two swinging doors lead back to town. [if Introduction is happening]Inexplicably, a metal[otherwise]Flash's empty dog food[end if] bowl is nailed to the floor just in front of your jail cell."

Instead of searching the office:
	try examining the office.
	
Instead of searching the bars:
	if the player is in the office:
		try examining the jail cell;
	otherwise:
		try examining the office.

Section Bell

The bell is a prop. The bell is on the hook. The description of the bell is "A shiny silver bell with a black handle[if the bell is on the hook]. It is hanging on a small hook by the doorway[end if]." The bell can be rung. The bell is not rung. The texture of the bell is "surprisingly heavy".

The hook is part of the swinging doors.  The hook is a supporter.  The description of the hook is "A small metal hook screwed into the door jamb.[if the bell is on the hook] A bell hangs from the hook[end if]."

Section Boiler

Position is a kind of value. The positions are whistleward, neutral, and coffeeward.

The boiler is a large furniture in the office. The description of the boiler is "Midway betwen the jail cell and the door to the sheriff's office stands a pot-bellied inferno. Through a small grate on its front, you can see flames burning within. Above the combustion chamber, there is a round, rivet-studded ball which in turn leads into a junction. One pipe runs sideways to the bronze machine behind the desk, while the main pipe runs straight up through the roof[if the Lever is not in Limbo]. There is a lever at the junction which looks like it could either swing towards the front door or towards the rear of the office. [lever position][end if]". Understand "combustion" or "chamber" or "furnace" as the boiler. The texture of the boiler is "[boiler-texture]". The scent of the boiler is "[boiler-scent]". 

To say boiler-texture:
	say "painfully hot".
	
To say boiler-scent:
	say "of soot and burning coal".

The junction is part of the boiler. The description of the junction is "A bulge in the the pipework coming out of the boiler. From the junction, a smaller pipe continues to the roof, while another branches off to the strange bronze machine. [if the lever is not in limbo]A lever projects from the junction, and it looks like it could regulate the flow of steam into the two output pipes[otherwise]When Flash ran away, he snapped off the lever that used to stick out of the junction[end if]." The scent of the junction is "[boiler-scent]." The texture of the junction is "[boiler-texture]."

The grate is part of the boiler. The description of the grate is "Through the grate, you can see the red-hot interior of the boiler." The texture of the grate is "hot enough to burn someone". The scent of the grate is "[boiler-scent]."

The ball is a large part of the boiler. The description of the ball is "A thick, cast iron ball filled with enough pressurized steam to blow you from here to kingdom come." Understand "iron" or "rivet" or "rivets" as the ball. The texture of the ball is "hot to the touch".

The lever is part of the boiler. The description of the lever is "A swinging metal arm that pivots on the pipe junction. The arm can swing towards either the door or the back of the office. [lever position]".  The lever has position. The lever is neutral. The texture of the lever is "[smooth] and warm". The lever can be whistling. The lever is not whistling.

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
	say ".[no line break]".

Section Cabinet

The cabinet is a large closed openable scenery container in the office. The top of the cabinet is a part of the cabinet. The top of the cabinet is a supporter that is part of the cabinet. The cabinet door is part of the cabinet. The description of the cabinet is "About three feet tall, and made of oak. The cabinet's top is covered with circular stains from drinking bottles, but the rest of the cabinet is in good shape[if the whiskey is on the cabinet]. A bottle of whiskey stands on the cabinet[end if]. Its [cabinet-door-details]." The texture of the cabinet is "fine-grained".

Does the player mean doing something with muddy:
	it is likely.

Does the player mean doing something with the cabinet:
	it is possible.

Does the player mean doing something with the cabinet door:
	it is unlikely.
	
Does the player mean doing something with the cabinet top:
	it is unlikely.
	
To say cabinet-door-details:
	if the cabinet is closed:
		say "door covers the front of the cabinet and opens on brass hinges. The contents of the cabinet are recognizable through the cabinet's uneven glass";
		if the cabinet contains something:
			say ". Despite the distortion, you see [if the cabinet contains the gunbelt]what looks like a gun belt [end if][if the cabinet contains the gun and the cabinet contains the banana]and [end if][if the cabinet contains the banana]some kind of shiny yellow object. Maybe gold, you think, hopefully[end if]";
	otherwise:
		say "wood and glass door is open and inside you see [a list of things in the cabinet]".
	
The description of the cabinet door is "The cabinet's [cabinet-door-details]."

Instead of putting something (called the item) on the cabinet:
	try putting the item on the top of the cabinet.

Instead of opening the cabinet door:
	try opening the cabinet.
	
Instead of closing the cabinet door:
	try closing the cabinet.
	
After opening the cabinet:
	say "[one of][loot in the cabinet][or]You open the cabinet[if the cabinet contains something] revealing [a list of things in the cabinet][otherwise], but it is empty[end if][stopping]."
	
[###CONSIDER: suppress disambiguation message]

The banana is an edible prop in the cabinet. The description of the banana is "[one of]Sometimes a banana is just a banana. This is one of those times[or]A bright yellow banana[stopping]." The texture of the banana is "soft and mushy". The scent of the banana is "fruity".

[TODO:  what happens when we point the banana at someone?  Put it in our ear?]

To say rawhide:
	say "like old rawhide. Rollin', rollin', rollin'.";

The gunbelt is a wearable prop. The gunbelt is in the cabinet. The printed name of gunbelt is "gun belt". The description of the gunbelt is "A leather gun belt with holster[if the gun is in the holster], which contains your trusty six-shooter[end if]." The texture of the gunbelt is "well broken-in and soft". The scent of the gunbelt is "[rawhide]". Understand "gun belt" as the gunbelt. [because compiler gets upset if we call it a gun-space-belt]

The holster is an open container that is part of the gunbelt. The description of the holster is "The leather pocket in which your trusty six-shooter [if the gun is in the holster]now sits[otherwise]would normally sit, but which is empty at the moment[end if]." The scent of the holster is "[rawhide]". The carrying capacity of the holster is one.

The gun is a prop in the holster. The description of the gun is "[one of]You quickly inspect your gun and are alarmed to discover that it's unloaded[or]A simple six-shooter pistol[stopping]." The indefinite article of the gun is "your". Understand "pistol" as the gun. The scent of the gun is "like machine oil and gunpowder". The texture of the gun is "solid and heavy".

After taking the gunbelt:
	say "You strap on your gun belt.";
	now the player wears the gunbelt.
	
After eating the banana:
	say "You eat the banana, peel and all. Because cowboys are made of stern stuff and need the fiber."
	
After taking the gun:
	say "It feels good in your hand."

Section Chair

The chair is a large furniture in the office. The description of the chair is "A heavy chair of polished maple[one of]. The sort of chair you used to have in your dining room[or][stopping]. It looks out of place in this run-down office[if the deputy is in the office and the deputy is sitting]. The chair is occupied by the deputy[end if]." [###CONSIDER implementing a description of what incidental activity the deputy is performing; could be used both here and in the deputy description.]

The scent of the chair is "like an amalgam of the butts that have sat on it over the years. Not pleasant". The texture of the chair is "like an expensive piece of furniture".

Section Desk

The desk is a large furniture in the office. The description of the desk is "A beat-up old wooden desk with time-worn corners, and a pitted, scratched surface[if the player is in the office]. The rear of the desk has a drawer with a small lock[end if]." The texture of the desk is "old and battered".

The drawer is part of the desk. The drawer is a closed openable lockable locked container. The description of the drawer is "A small, [if the drawer is closed]closed[otherwise]open[end if] drawer built into the back of the desk. It has a small lock." The drawer can be recognized. The drawer is not recognized. The matching key of the drawer is the small brass key. The scent of the drawer is "like cedar. Maybe this is where they keep their hamsters?" The drawer can be rewarded. The drawer is not rewarded.

Does the player mean examining or attacking or unlocking or opening or picking the small lock:
	if the player is in the office:
		it is likely.

The small lock is a privately-named part of the drawer. The description of the small lock is "A simple small lock on the desk drawer." Understand "small" or "lock" as the small lock when forgery has happened.
	
Instead of inserting the brass key into the small lock:
	try opening the drawer with the brass key.
	
Before doing something other than examining with the small lock:
	change the noun to the drawer;
	continue the action.

After opening the drawer with the brass key:
	say "You slide the drawer open revealing [a list of things in the drawer].";
	if the drawer is not rewarded:
		now the drawer is rewarded;
		adjust points by 1.
	
The folder is an openable closed container. The folder is in the drawer. Understand "cardboard" or "manila" as the folder.

Instead of examining the folder:
	if the folder is not open or the player does not carry the folder:
		say "(first ";
		if the player does not carry the folder:
			say "taking ";
		if the player does not carry the folder and the folder is closed:
			say "and ";
		if the folder is closed:
			say "opening ";
		say "the folder)[command clarification break]";
	now the folder is open;
	now the player carries the folder;
	say "A manila cardboard folder [if the folder contains something]containing [a list of things in the folder][otherwise]that is empty[end if].";
		
Instead of inserting something (called the item) into the folder:
	if the item is not a sheet:
		say "The folder is only made to hold papers.";
	otherwise:
		continue the action.
		
Instead of searching the folder:
	now the folder is open;
	continue the action.
	
The telegram is a sheet in the folder. The description of the telegram is "A yellow paper on the stationary of the Western Union telegraph company. The message on the telegram is addressed to the sheriff and reads:[telegram-text]." Understand "paper", "yellow", and "message" as the telegram. The texture of the telegram is "like cheap, almost tissue-thin paper".

To say telegram-text:
	say "[quotation mark]AGREE TO YOUR OFFER [bracket]STOP[close bracket] WILL SUPPLY MACHINE PARTS IN EXCHANGE FOR 5000 US DOLLARS IN SILVER COIN [bracket]STOP[close bracket] CONGRATULATIONS ON WINNING LOTTERY [bracket]STOP[close bracket] SIGNED JEFFRIES & BRAND STEAMWORKS CO LTD [bracket]STOP[close bracket][bracket]END[close bracket][quotation mark]".
	
Instead of reading the telegram:
	say "It says: [telegram-text]."

The patent is a sheet in the folder. The description of the patent is "A thick technical document describing the coffee machine invented by the sheriff[one of]. Reading through it, you can see his plans to make these machines in factories and to sell them throughout the country. Your mind reels in horror at the prospect of coffee shops on every street corner selling fancy, steamed beverages[or][stopping]." The texture of the paper is "like a crisp, freshly printed document".

Instead of reading the patent:
	say "It's a long, complicated document, and you don't have the time or inclination to sit down and study it right now. It's obvious that the sheriff has big plans for his coffee invention and that the cost of putting his plan into action is way beyond what any small town sheriff could afford."

The note is a sheet in the folder. The description of the note is "The note is written in a flowing cursive script. It reads:[paragraph break][note-text]."

Instead of reading the note:
	say "You read the note aloud.[paragraph break][note-text].[paragraph break]Muddy [one of]shakes his head with enjoyment and shouts, [quotation mark]Bully for you Ella[or]nods in agreement. [quotation mark]That's telling him[stopping]![quotation mark][paragraph break]"

To say note-text: 
	say "[quotation mark]Dear Sam, I can't go on like this. When you were just a plain old sheriff that was one thing, but since you started inventing stuff, I can see what you are made of. A man that kicks my dog isn't cut out for marrying anyone. I thought you were an honest lawman, but I can see what you've become. Don't come around no more or my pa might just take a disliking to you. I was going to send you my ring, but I found out it was glass. Why am I not surprised? You are a scoundrel and not fit to wear that uniform.[paragraph break]Explicitly not yours,[paragraph break]Ella[quotation mark]". 
	
The receipt is a sheet in the folder. The description of the receipt is "A receipt from Jeffries & Brand Steam Works Co Ltd of Witchita Falls. The receipt is for four hundred dollars worth of pipes and fittings purchased by Sheriff Sam Cheney of Crawdad's Gulch. At the bottom of the note, written in red is the following postscriptum: [postscriptum]."

To say postscriptum:
	say "[quotation mark]Your account with us is severely in arrears. No further credit will be extended. Remit all payments immediately or we will take legal or [italic type]other actions[roman type] as required.[quotation mark]".
	
Instead of reading the receipt:
	say "[quotation mark]Well, Muddy,[quotation mark] you say, [quotation mark]it's a business receipt of some kind, from J&B Steam Works down in Witchita Falls. Looks like the Sheriff Cheney done gone himself deep into debt on account of his coffee invention.[quotation mark][paragraph break]Muddy looks at the receipt and replies, [quotation mark][one of]I reckon, he's got more debt that we ever had loot[or]I don't twig how a jerk water town two-bit sheriff like Cheney could get that kind of greenery[or]Indeed[stopping].[quotation mark][paragraph break]".
	
Section Food Bowl

The food bowl is a fixed in place container in the office. "A metal food bowl sits on the office floor, only a few feet from the jail bars." The description of the food bowl is "A beat up mining pan full of dents and scratch marks. The bowl seems to be nailed [one of](yes, nailed!)[or][stopping] to the office floor." The carrying capacity of the food bowl is 1. Understand "mining" or "pan" as the food bowl. The food bowl can be first-held. The texture of the food bowl is "uneven and pitted". The scent of the food bowl is "like dog food".

Instead of taking the food bowl:
	if the food bowl is not first-held:
		now the food bowl is first-held;
	continue the action.
	
Section Outdoors

The outdoors is a fardrop. The outdoors is everywhere. The description of the outdoors is "Oh, what a beautiful [if the hours part of the time of day is greater than 12]evening[otherwise]morning[end if]. Lush farm fields, the endless cattle range -- except that you're going to be hanged at 8 a.m. That puts a damper on things." Understand "outside" as the outdoors.

The range is a fardrop. The description of the range is "[if the deer is in a room]The deer and the antelope are playing.[otherwise]The skies are not cloudy.[end if]". The range is everywhere. Understand "cattle" as the range.

The fields are a plural-named fardrop. The description of the fields is "Corn, mostly." The fields are everywhere. Understand "lush" or "farm" or "field" as the fields.

The deer is an ungulate. The deer is everywhere.

The antelope is an ungulate. The deer is everywhere.

Instead of examining an ungulate:
	say "The [noun] stares back at you momentarily and then runs off with the [if the noun is the deer]antelope[otherwise]deer[end if]. Ungulates are very private, you know.";
	remove the deer from play;
	remove the antelope from play.
		
The corn is a fardrop. The corn is everywhere. The description of the corn is "Tall enough that elephants who value their eyesight do not walk through it."	

Section Portrait

The portrait is a large scenery prop in the office. The portrait can be hung up. The portrait is not hung up.  Understand "picture" as the portrait.  The description of the portrait is "[if the portrait is well-hung]Hanging on the wall, there is a[otherwise]A[end if] bombastic portrait of the sheriff, who is dressed in a Napoleonic uniform save for the ten gallon hat. In the background, dogs play poker." The scent of the portrait is "like oil paints". Understand "painting" as the portrait. The portrait can be well-hung. The portrait is not well-hung.

Section Protocappuccinomatic

The protocappuccinomatic is a large furniture in the office. The description of the protocappuccinomatic is "All bronze and shiny, with lots of pipes, valves, grommets, and flanges, the word [quotation mark]Protocappuccinomatic[quotation mark] is written on the main body of the machine. The device stands about five feet high and must weigh a ton. A sturdy iron pipe runs from the machine to the boiler." The printed name of the protocappuccinomatic is "machine". Understand "machine", "device", "strange", "bronze" or "contraption" as the protocappuccinomatic. The scent of the device is "like coffee beans". The texture of the protocappuccinomatic is "[smooth] and warm".

The iron pipe is a large part of the protocappuccinomatic. The description of the iron pipe is "Heavy-duty fitted steam pipes, like they use on locomotives." Understand "pipes" as the iron pipe. The texture of the iron pipe is "hot". Understand "pipes" or "output" as the iron pipe.

The cup is in Limbo. The description of the cup is "A white porcelain mug[if the coffee is in the cup] containing hot coffee[end if][if the coffee is tainted], which has been laced with the juice of the Peruvian Snoozeberry[end if]." The texture of the cup is "[if the cup contains coffee]warm[otherwise]cool[end if]". The scent of the cup is "of [if the cup contains coffee]fresh[otherwise]stale[end if] coffee".

Rule for printing room description details of the the cup:
	do nothing.

The coffee is in the cup. The description of some coffee is "Steaming hot, black joe." The indefinite article of coffee is "some". The coffee can be tainted. The coffee is not tainted. The scent of the coffee is "[one of]delicious[or]inviting[or]irresistable[or]tantalizing[at random]". The texture of the coffee is "steaming hot".  The coffee can be spiked.  The coffee is not spiked.

The nozzle is part of the protocappuccinomatic. The description of the nozzle is "A tapering outlet." Understand "outlet" as the nozzle. The scent of the nozzle is "like coffee". The texture of the nozzle is "ridged and tapering".

The chute is part of the protocappuccinomatic. The description of the chute is "A chute that runs down the side of the machine." Understand "tube" as the chute. The texture of the chute is "[smooth]".

To make coffee:
	now the coffee is in the cup;
	move the cup to the protocappuccinomatic.

Section Swinging Doors

The swinging doors are a large plural-named scenery door in the office. The swinging doors are east of the office. The description of the swinging doors is "Two swinging louvered doors meet in the middle at chest height. You can see out the door, towards the open range and some farm fields.  A hook hangs next to the door[if the bell is on the hook], with a bell hanging on it[end if]." The texture of the swinging doors is "dry and splintery".

Section Whiskey

The whiskey is prop on the top of the cabinet. The printed name of the whiskey is "bottle of whiskey". The scent of the whiskey bottle is "like the cheapest whiskey you could imagine, and then a dollar cheaper still." The texture of the whiskey bottle is "cool and [smooth]".

Chapter Jail Cell

The Jail Cell is west of the jail door.   The jail cell is connected with office.   "[if unvisited]Why are you not surprised to have landed right back in the hoosegow after another one of Muddy's dubious plans? Will you ever learn? How did it come to this? [paragraph break][end if]The small jail cell is brick on three sides, metal bars on the other, with [if the gate is locked]a tightly locked[otherwise]an unlocked[end if] gate. A small window is set into the brickwork above your head. Through the jail bars you can see the sheriff's office."

The jail cell contains the player.

Instead of inserting something inedible into the mouth:
	say "That ain't hardly something to go putting into your mouth."
	
After inserting something into the mouth:
	say "You pop [the noun] into your gaping maw."

	
Section Floor

The floor is a backdrop in the jail cell. The description of the floor is "Rough, dirty[if the stain is on the floor], and stained[end if] concrete." The scent of the floor is "remarkably like every other jail house floor you have ever taken the time to examine closely". The texture of the floor is "gritty".

Section Gate

The gate is a large door.  The gate is scenery.  The gate is west of the office and east of the Jail Cell.  The gate is lockable and locked.  The description of the gate is "[if the gate lock is locked]A metal gate stands between you and freedom. [end if]The gate is set into the metal bars which surround your cell, and its hinges must be internal. The gate has a massive padlock [if the gate is locked]that clicked definitively behind you when you were thrown into the cell[otherwise]of great antiquity[end if]. You've seen banks with poorer locks. At least this is a quality institution." The texture of the gate is "cold and unyielding".

Does the player mean unlocking or attacking or examining or opening or picking the gate lock:
	if the player is in the jail cell:
		it is likely.

The gate lock is part of the gate. The description of the gate lock is "A cast iron padlock of diabolical ingenuity. It is like no lock you've ever seen." Understand "padlock" or "diabolical" as the gate lock.

Instead of opening the gate lock:
	try opening the gate.
	
Instead of opening the gate with the brass key:
	say "The key is way too small to fit the medieval lock which imprisons you."
	
Instead of opening the gate when the gate is locked:
	say "There is not so much as a hair's breadth of play in the prison gate. It is locked but good."
	
Instead of attacking the gate:
	say "[one of]You bruise your knuckles. The gate is non-nonplussed[or]Ow[stopping]".
	


Section Stool & Bench

The stool is a large portable enterable supporter in the jail cell. "[if the socket is not occupied]A broken stool lies on the floor.[otherwise]A repaired stool stands upright.[end if]". The description of the stool is "A small stool, with legs a couple of feet long.[if the socket is not occupied] It's three-legged by design, but two-legged in practice, hence its inability to stand upright.  There's an empty socket where the third leg should be.[otherwise] One of its three legs is a piece of gray jail bar, but it seems relatively solid.[end if] All of the paint has been worn off the seat by your illustrious predecessors who inhabited this cell. Those same occupants carved every square inch of the stool's seat with their initials (and the initials look intriguing!)  A small bronze plate has been nailed to the bottom of the stool. ". The texture of the stool is "like it has been worn [smooth] over the years". 

The bronze plate is part of the stool.  Understand "plate" as the bronze plate.  The description of the bronze plate is "You read aloud the engraving on the bronze plate: 'Donated to the Crawdad's Gulch Municipal Hoosegow by the Gunslinger's Widows Association, Chapter Forty-One.'".

Instead of reading the bronze plate:
	try examining the bronze plate.

After examining the plate for the first time:
	say "Muddy shakes his head, 'They sure are an upstanding organization.'".

The seat is part of the stool.  The description of the seat is "The top of the wooden stool's seat is covered by intriguing initials, some old, some new. [if the socket is not occupied]When you flip it over, it is immediately apparent that the stool is missing a leg. In its place, there is just an empty socket.[end if]".

The initials are part of the stool.
The initial-counter is number that varies.  The initial-counter is zero.

Instead of reading the initials:
	try examining the initials.

Instead of examining the initials:
	if the initial-counter is:
		-- 0:
		say "[first initials]";
		-- 1:
		say "[second initials]";
		-- 2:
		say "[third initials]";
		-- 3:
		say "The rest of the initials are all blended together and indistinct.";
		-- otherwise:
		say "You can't make out any more initials.";
	increase the initial-counter by one.

The socket is part of the seat.  The socket is a container. The socket can be occupied.  The socket is not occupied.  The description of the socket is "[if the socket is not occupied]Once upon a time, a stool leg about two feet long must have occupied the now empty hole in the stool seat. Without that leg, the stool isn't much good.[otherwise]A nice piece of gray jail bar is wedged into it, acting as a third leg.[end if]".

Instead of inserting something (called the filler) into the socket:
	if the filler is the gray bar:
		say "You flip the stool over and wiggle the hollow gray tube into the empty socket. It fits perfectly and remains in place when you let go of the bar, but you think you could yank the gray bar out again if you needed it. You now have a stool with three even legs: two wood, one metal.";
		now the socket is occupied;
		now the gray bar is part of the stool;
	otherwise:
		say "Putting [the filler] into the socket don't make a lick of sense.  Not likely to fit well anyway.".

Instead of inserting something (called the filler) into the stool:
	try inserting the filler into the socket instead.

The broken-stool-sit-count is a number that varies.  The broken-stool-sit-count is zero.

Does the player mean climbing the stool:  it is very likely.

Instead of climbing the stool:
	try entering the stool.

Instead of entering the stool:
	if the socket is not occupied: [stool is broken]
		if the broken-stool-sit-count is:
			-- 0:
			say "[if the deputy is not in limbo]The deputy folds down the warrant he is reading and smiles encouragingly, 'Please, go ahead. The stool is stronger than it looks.'[paragraph break][end if]You carefully climb onto the precariously balanced two-legged stool and subsequently find yourself face down on the dusty jail floor. Muddy helps you up and brushes you off. [paragraph break][if the deputy is not in limbo]The deputy laughs himself hoarse. 'I declare, that were powerful entertaining!' The deputy continues to chuckle to himself, even as he turns back to his newspaper, 'I said, please go ahead, and he sits on it. That were rich. Maybe he'll try again.'[end if]";
			-- 1:
			say "You teeter momentarily on the stool and then topple face first into the floor, like a blacksmith's hammer striking the anvil. This is getting old real fast now. [if the deputy is not in limbo][paragraph break]The deputy shakes his head. 'You done it again! You know what they say in Texas? I'm a-telling you. They says, 'Fool me once, shame on — shame on you. Fool me — you can't get fooled again.'[paragraph break][end if]";
			-- otherwise:
			say "[if the deputy is not in limbo]You are tired of entertaining the deputy. [end if]You ain't gonna get onto the stool unless it stands solidly on three good legs.";
		increase the broken-stool-sit-count by one;
	otherwise: [stool is repaired]
		continue the action.
		
After entering the stool:
	if the stool is in the jail cell:
		now the player is tall;
		say "Muddy holds it steady as you climb up. Your head is now even with the top of the window.";

Instead of getting off the stool:
	say "You jump down to the ground again.";
	move the player to the location of the stool;
	now the player is not tall.

The bench is a large furniture in the jail cell.  The description of the bench is "A long wood bench made of rough, splintery planks[if pete is on the bench]. You ignore the man with the black suit who is lying on the bench[end if][if the bench is not investigated]. [bench sekrits][end if]." The bench can be investigated. The bench is not investigated. The texture of the bench is "like rough wood".

Instead of entering the bench:
	say "You can't! A pastor is passed out on it. There's no room for you."

Instead of searching the bench:
	if the bench is not investigated:
		say "[bench sekrits].";
	otherwise:
		say "You peek under the bench but don't find anything new."
	
To say bench sekrits:
	say "Under the bench, you notice the remnants of a meal: a piece of questionable meat, a spoon and a metallic can";
	move the meat to the jail cell;
	move the spoon to the jail cell;
	move the can of beans to the jail cell;
	now the bench is investigated.

To say first initials:
	say "You notice a set of initials. 'It says here, 'RH''.[paragraph break]Muddy nods knowingly, 'That'd be Ricochet Howard. Cattle rustling, hog hauling and snake twizzling'.[paragraph break]'Snake twizzling?'[paragraph break]'All right, I made that one up. But the rest is true.'[paragraph break]A couple other other sets of initials catch your eye.".

To say second initials:
	say "'Here's some more initials, Muddy:  S.X.'[paragraph break]Muddy smiles slyly, 'Oh sure. That's Sixshooter Xavier, the roughest Friar west of the Mississipi. An ornery character with a taste for mead, and he plays a mean five-card stud.'[paragraph break]'What'd he do?'[paragraph break]'Knocked over the Tulsa Casino, but donated it to orphans.'[paragraph break]'That don't sound so bad.'[paragraph break]'They wasn't orphans when he started.'[paragraph break]One other set of initials catches your eye.".
	
To say third initials:
	say "'Hey, how about this one, Muddy: MTO. That's a strange one.'[paragraph break]'That's got to be Tymme O'Malley, or the Leprechaun Kid like they call him in Kansas. Wicked fast with a rifle.'[paragraph break]'Nah, I said MTO, must be someone else.'[paragraph break]'Nope, that's him all right. Dyslexic as all get out. Feds caught him red-handed with a bag of tool.'".
 

Section Harmonica

The jail cell contains a harmonica.  The harmonica is a prop.  The description of the harmonica is "The harmonica is attached to the wall by a silvery chain.  In the fading light from outside the window, you can barely make out some kind of inscription on it.".  The harmonica can be discussed.  The harmonica is not discussed.  The harmonica can be first-heard-by-deputy.  The harmonica is not first-heard-by-deputy. The scent of the harmonica is "like last week's saliva". Understand "inscription" as the harmonica. Understand "engraving" as harmonica.

The play-counter is a number that varies.  The play-counter is zero. [Number of times harmonica is played AFTER deputy has left.]

Instead of examining the harmonica for the first time:
	if the harmonica is not discussed:
		say "[initial harmonica]" as dialogue;
	now the harmonica is discussed;
	try examining the harmonica.
	
Instead of taking the harmonica for the first time:
	if the harmonica is not discussed:
		say "[initial harmonica]" as dialogue;
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
			say "The deputy cringes, as you blow not only the notes that are built into the harmonica, but every note in between as well. He stands up, shoves the warrant into his pocket, and grabs a bottle of whiskey off the cabinet.[paragraph break]'I declare: that's just the worst thing I ever heard in my life. It's enough to drive a man to drink.' To prove it, he takes a mighty swig from the whiskey bottle and wipes his mouth with the back of his sleeve. The deputy puts his fingers in his ears and tries to ignore you.[paragraph break]You keep playing.[paragraph break]The deputy balls his hands into fists and trembles with annoyance, 'I'm going to the saloon to listen to some real music, from some real talented lady folk of the female persuasion.' The deputy walks out the front door in a huff.[paragraph break]'You should hear me play piano,' you remark, but he's already out of earshot.[paragraph break]"; 
			now the deputy is harmonicated;
			move the deputy to limbo;
			adjust points by one;
			say "Muddy says, 'Nice one.  Hey -- I reckon I saw that screw up there wiggle a bit when you played the harmonica. I didn't say nothing on account what the deputy was here.'  He points to a screw holding in one of the cell bars.";
	otherwise:  [no deputy present]
		if the play-counter is:
			-- 0:
			say "Tentatively, you blow a few notes. The bars in the jail cell rattle sympathetically.[paragraph break]'Look at that, boy', Muddy laughs, 'I swear that screw up there holding that bar is wiggling loose!'";
			-- 1:
			say "Again, the room resonates with the rich and vibrant tones of a bagpipe connected to the blowhole of a baluga whale.[paragraph break]Muddy points excitedly towards the top of the gray bar, 'When you played, that screw worked its way out more. It's like you got some kind of sonic screwdriver or something! I think one more time will do it.'[paragraph break]";
			-- 2:
			say "The screw vibrates out of the ceiling, rebounds off the concrete floor in a shower of sparks and rolls under the deputy's desk. A hollow gray tube falls loose from the upper reaches of the jailbars and lands at your feet.[paragraph break]'You done it!' shouts Muddy.[paragraph break]";
			move the screw to limbo;
			move the gray bar to the jail cell;
			move the gap to the jail cell;
			now the gap is part of the bars;
			-- otherwise:
			say "You blow a few more notes, but you're not getting any better.";
		increase the play-counter by one.

The inscription of the harmonica is "'Donated to the Crawdad's Gulch Municipal Hoosegow by the Gunslinger's Widows Association, Chapter Forty-One'". The texture of the harmonica-textbox is "lightly engraved".

Instead of reading harmonica for the first time:
	say "[initial harmonica inscription]" as dialogue.
	
The chain is part of the harmonica.  The description of the chain is "The harmonica is tethered by a heavy chain embedded directly into the wall. It looks like they're dead serious about making sure this harmonica doesn't sprout legs and walk away."

Instead of pulling the harmonica:
	say "You give the harmonica a little tug, and then you pull harder, putting your back into it. The fine silver chain pulls taut, but is well-crafted and doesn't give at all."

Instead of pulling the chain:
	say "The chain won't break, it's powerful strong.".

Instead of going when the player is in the jail cell:
	if player is carrying the harmonica:
		move the harmonica to the jail cell;
		say "As you leave to go, the harmonica is yanked away from you by the wall-chain.[paragraph break]";
	continue the action.

Section Bars

The bars are plural-named scenery in the jail cell.   Understand "bar" as the bars. The description of the bars is "[one of]You look across the street at the saloon. Oh wait, did you mean the prison bars? Yeah, probably. Anyhow, the bars to your cell reach from floor to ceiling and are made of matte black metal. [if the gray bar is part of the bars]All except one, which is sort of gray in color and as short as a table leg. [end if]They are a bit under an inch thick, and they are reinforced by three tiers of horizontal bars. The gate to your cell is framed in the same black metal and inset into this meshwork of bars.[or]Your jail cell is bordered by freshly painted brick walls on three sides and metal bars on the fourth. The bars are matte black[if the gray bar is part of the bars], except for one which is slightly lighter in color -- a gray one[otherwise] with a tiny gap where a gray bar used to be[end if].[stopping]". The texture of the bars is "[metallic]".

Instead of doing something with the bars during introduction:
	if the current action is examining:
		continue the action;
	if the current action is searching:
		continue the action;
	otherwise if the current action is attacking:
		say "[one of] stands back as you let loose with your full fury and pound on the metal bars.[if the gray bar is part of the bars]As you beat them senseless, you notice that one of them sounds hollow. But which was it? You're not sure[end if][or]You can hit all the bars you want after you get out of jail[stopping].[paragraph break]";
	increase the angerometer by one;
	warn about the noun.
		
The gray bar is part of the bars.  The gray bar is a transparent portable container.  The carrying capacity of the gray bar is 1.  Understand "grey bar" as the gray bar. The description of the gray bar is "The gray [if the gray bar is part of the bars]bar is just a shade lighter than the surrounding jail bars[otherwise]tube is about two feet long -- not quite long enough to reach anything useful outside the cell, unfortunately[end if].[if the gray bar is part of the bars] You notice that the gray bar is held to the ceiling by a screw the size of a railroad spike.[end if][if the player holds the gray bar] It doesn't weigh much at all.[end if][if the gray bar contains something] Inside it is [contents of gray bar].[end if]". The texture of the gray bar is "lighter than it looks".  The gray bar can be blowgun-discussed.  The gray bar is not blowgun-discussed.  The gray bar can be first-held.  The gray bar is not first-held. The printed name of the gray bar is "gray [if the gray bar is part of the bars]bar[otherwise]tube[end if]". Understand "hollow" or "tube" as the gray bar.

Rule for printing room description details of the gray bar:
	do nothing.

The gap is scenery in limbo.  The description of the gap is "You don't pay no mind to the gap -- it ain't big enough to even get your arm through."

Instead of taking or pulling the gray bar:
	if the gray bar is carried by the player:
		say "You already have it.";
	otherwise:
		if the gray bar is part of the bars:
			say "The gray bar is loose, but still held in place by a large screw that connects it to the ceiling.";
		otherwise:
			if the gray bar is part of the stool:
				say "You yank the bar out of the stool's socket.";
				now the socket is not occupied;
			move the gray bar to the player;
			if the bar is not first-held:
				say "You grab the bar.[if the gray bar is not blowgun-discussed][paragraph break]You hold it lengthwise and stare down its hollow shaft at Muddy. He looks back at you. [paragraph break][quotation mark]Don't that just beat all,[quotation mark] ponders Muddy.[end if]";
				adjust points by one;
				now the bar is first-held;
			otherwise:
				say "You pick up the gray bar.".
		
Instead of inserting something (called the ammo) into the gray bar:
	if the ammo is the berry:
		if the gray bar is not carried by the player:
			say "You don't have the gray bar in hand.";
		otherwise:
			say "You drop the berry into the gray tube.";
			move the berry to the gray bar;
			if the gray bar is not blowgun-discussed:
				say "[paragraph break]'Oh, I get it!' nods Muddy, 'You're making some kind of berry gun. I seen the Injuns do something like that, except you ain't got no darts in there to blow at people.'";
				now the gray bar is blowgun-discussed;
	otherwise:
		say "You don't reckon there's much point in that."

[It's safe to say the screw is holding the bar in place because if the bar weren't in place, the screw wouldn't be visible. When the screw is dislodged, it bounces away and is out of play for the rest of the game.]
The screw is part of the gray bar.  The description of the screw is "A large, rusty screw.  It's holding a gray bar in place.".

Instead of taking the screw:
	if the player is tall:
		say "You try to grab it, but it won't budge.";
	otherwise:
		say "The screw is too high for you to reach.".
		
Instead of searching the gray bar:
	say "The bar is a hollow tube, with an inner diameter of about a half inch. If you look carefully, you can see a spiral groove running up the length of the inside of the shaft, kind of like a rifle[if the gray bar contains something]. Inside it is [contents of gray bar][end if]."
	 
Section Window and Street

The street is a room.  "This is a dusty road with a few buildings lining it, including the sheriff's office."

[Taken from example 20]
The cell window is a door.  The cell window is scenery.  The description of the cell window is "About seven feet up, as wide as your shoulders, and secured by four vertical iron rods as thick as your thumb. And you have thick thumbs. The green tip of a vine pokes in from outside."  The cell window is west of the jail cell and east of the street.  The cell window is locked.

The rods are plural-named part of the cell window. The description of the rods are "The rods are firmly embedded in the solid brick walls."

Instead of doing something with the rods during introduction:
	if the current action is examining:
		continue the action;
	increase the angerometer by one;
	warn about the noun.

Understand "look out [something]" as searching.
Instead of searching the window:
	if the player is tall:
		say "The jail is at the end of a long street. Directly across the street is a saloon, which is open, unlike the stores on both sides of the street that have pulled down their shades for the evening. Below the window there is a covered barrel; you can almost touch its top. [if something is on tophe barrel]On the barrel you see [contents of barrel]. [end if]Just to the left of the window, a berry-covered vine has grown up the side of the building. [if the vulture is not on the barrel][paragraph break]Up in the sky, you notice a couple of hungry, circling vultures.[paragraph break][end if]";
	otherwise:
		say "From down here, all you can see is the evening sky and the [if the deputy is in the office]dark[otherwise]illuminated[end if] window of the upper story of the saloon across the street. The roof of the saloon is bathed in the light of the evening's full moon. [if a random chance of one in three succeeds]In the distance, you watch a hawk making lazy circles in the sky. [end if]You'd have to climb up to the window to get a better view of the street.";
	
Understand "climb through [something]" as climbing. Understand "jump through [something]" as climbing.

Instead of climbing the window: 
	try entering the window.
	
Instead of going through the window:
	if the introduction is happening:
		try touching the rods;[to set off deputy warning.]
	otherwise:
		if Rick is tall:
			say "You are already high enough up to reach through the windows.";
			the rule fails;
		if mud-lifted is less than 4:
			say "[lifting text]" as dialogue;
			increase mud-lifted by one;
			now Rick is tall;
			Muddy whimpers in one turn from now;
			[could adjust this to a random number from one to two turns from now]
		otherwise:
			say "Those rods aren't going anywhere; at most, you can maybe reach your hand through them."
			
At the time when Muddy whimpers:
	say "[whimper text]" as dialogue;
	Rick falls in one turn from now.
			
At the time when Rick falls:
	now Rick is not tall;
	say "[falling text]" as dialogue.

Instead of opening the window:
	say "There is no glass in the window; it is already open."
Instead of closing the window:
	say "You feel around for shutters, but you don't find none. Just rods."

The barrel is a furniture in the street.  The barrel is a supporter.  The description of the barrel is "It's a weathered oak barrel. You can't tell what inside it, if anything.[if something is on the barrel] On the barrel you see [contents of barrel].[end if]".

Instead of touching the barrel:
	say "You can't quite reach it. You could maybe drop something on it, though.".

The vine is scenery in the jail cell.  The description of the vine is "The leafless tip of a wiry vine pokes into the cell through the window.[if the player is tall] It's covered with small red berries.[end if]".

Instead of taking the vine:
	say "You yank on the wiry vine and it yanks back. It's too tough to break off.".

Rule for reaching inside the street:
	if the player is tall, allow access;
	otherwise deny access.

After deciding the scope of the player when the location is the jail cell:
	place the vine in scope; [so it can be examined]
	if the player is tall:
		place the barrel in scope;
		if the vulture is on the barrel:
			place the vulture in scope.

Visibility rule when in the jail cell:
	if examining the vine:
		there is sufficient light;
	if examining the barrel and the player is tall:
		there is sufficient light.

The berry is a prop.  The berry is part of the vine.  Understand "berries" as the berry.  The description of the berry is "Each berry is plump and red, and got no short of mystery about it. Don't look so edible." The scent of the berry is "sweet, but onerous".  The berry can be first-held.  The berry is not first-held. The berry can be almost-eaten. The berry is not almost-eaten.

Instead of taking the berry:
	if the player carries the berry:
		say "You already got a mighty nice one.";
	otherwise:
		if the player is not tall:
			say "You can't reach it!";
		otherwise:
			move the berry to the player;
			say "You pluck a plump juicy red berry from the part of the vine growing outside the window.";
			if the berry is not first-held:
				now the berry is first-held;
				adjust points by one.

Instead of inserting the berry into the mouth:
	try eating the berry.

Instead of eating the berry:
	if the berry is not almost-eaten:
		say "Muddy stops you, 'Don't be a coward -- if'n you eat that, you'll sleep clear through to the afternoon -- and we only got till eight in the 'A' of 'M' to get out of here.'";
		now the berry is almost-eaten;
	otherwise:
		say "[8AM-text]" as dialogue;
		change the endgame to hanged;
		end the game in death.

The saloon is a fardrop. The saloon is everywhere. The description of the saloon is "Looking out the jail cell window, you can see the saloon across the street[if the deputy is not in the office]. The light is on in the upper story window[end if]."

Chapter Characters

Section Army

The army guards are a person in Limbo. The army guards are plural-named. The army guards are fixed in place. The description of the army guards is "A number of well-armed young frontier men in regimental uniforms. They look tough." Understand "men" or "young" as the army guards.

Section Deputy

Angerometer is a number that varies. The angerometer is zero.

Consciousness is a kind of value. The consciousnesses are awake, drugged, and asleep.

The deputy is a man in the office. Understand "Jim" or "Jimbo" as the deputy. The deputy can be either standing or sitting. The deputy is sitting. The deputy carries the brass key. The description of the deputy is "[deputy-description]." The scent of the deputy is "of cigar smoke and cheap perfume". The texture of the deputy is "warm and alive".  The deputy can be harmonicated. The deputy is not harmonicated. The deputy has consciousness. The deputy is awake.  The deputy can be singing-sensitive. The deputy is not singing-sensitive. The deputy can be explicated. The deputy is not explicated.[explicated keeps track of whether the deputy has been given the explanation about how the warrant really says that the prisoners need to be released]

To say deputy-description:
	if the consciousness of the deputy is:
		-- awake:
			say "Big and strong, but lacking numerically in ancestors";
		-- drugged:
			say "The deputy is only barely awake. His face is blanker than usual, and his eyelids are heavy";
		-- asleep:
			say "[one of]You are relieved to find that the deputy is unconscious, but breathing. He is wearing only a pair of pants -- no shirt, no gun belt, no boots[or]He's lying unconscious on the floor, just next to the jail cell[stopping]".
			
To warn about the (cylinder - a thing):
	change the block stage business flag to true;
	if the angerometer is:
		-- 1:
			say "The deputy looks up from the warrant, annoyed at the distraction. [quotation mark]Them [if the cylinder is the bars]jail bars[otherwise]window rods[end if] is solid iron, boys. Now stop messing with them. I would surely hate to have to shoot you tonight and ruin tomorrow's hanging.[quotation mark][paragraph break]";
		-- 2:
			say "The deputy shifts forward in his seat, [quotation mark]I done told you once, don't mess with the metal bars, not the jail bars, and not them rods in the window. It ain't like it's going to help you none anyhow, but it don't seem proper, what with me sitting here. Keep it up, and I may have to shoot some lead in your direction. That's a [italic type]metaphor[roman type]. It means, I'm going to have to shoot you, in case you don't know what a [italic type]metaphor[roman type] is. See. Lead is what's in bullets, so in this case, lead is a symbol for... um, lead. I can see I'm wasting my time explaining this to the likes of you.[quotation mark][paragraph break]";
		-- 3:
			say "The deputy rubs his head with his palms and growls, [quotation mark]I'm a-warning you first instead of a-shooting you first because I got myself a bad headache and I don't need the extra noise. Keep messing with them [if the cylinder is the bars]jail bars[otherwise]window rods[end if] and I will scratch my itchy trigger finger.[quotation mark][paragraph break]Muddy raises his eyebrows at you to get your attention and whispers, [quotation mark]He ain't kidding, Rick. We best not push him too far. He's a rattlesnake in a bottle of tequila.[quotation mark][paragraph break][quotation mark]What the blazes does that mean, Muddy?[quotation mark][paragraph break][quotation mark]Just metanymy, I reckon.[quotation mark][paragraph break]";
		-- 4:
			say "Without bothering to get up from his comfortable position behind the desk, the deputy draws his mean-looking nine-shot LeMat revolver and squeezes off a lazy shot in your direction, only looking afterwards to see if he hit anything. [quotation mark]I said, stop messing around in there, or the vultures are going to dine early tonight.[quotation mark][paragraph break]";
		-- 5:
			say "The deputy folds down his paper and leers at you, [quotation mark]Don't tempt me. I could do with some target practice.[quotation mark][paragraph break]Muddy shakes his head, motioning you back. [quotation mark]Rick, this guy's one stagecoach stop short of the fort, if you know what I mean. We best to find a way to get him out of the picture, or we ain't never going to get out of here.[quotation mark][paragraph break]";
		-- 6:
			say "The deputy rolls his eyes, [quotation mark]You is about the dumbest, stupidist, most corn-starched spit-lickingest idiotic pie-brained goat-galooting criminals I did ever see.[quotation mark][paragraph break]He pulls his gun out from under the desk and uses it for punctuation, mainly of the ceiling. [quotation mark]Listen, you![quotation mark] (Bang.) [quotation mark]When I said--[quotation mark] (bang) [quotation mark]--don't--[quotation mark] (bang) [quotation mark]--go messing--[quotation mark] (bang) [quotation mark]--with stuff--[quotation mark] (bang) [quotation mark]--I meant it.[quotation mark] (Bang, bang.) [quotation mark]Now, do you understand me-- [quotation mark] (bang). The last bang rises slightly in pitch to convey that it was a question.[paragraph break]The bullets ricocheting off the jailhouse walls every which way are enough to shake up even Muddy, who hisses, [quotation mark]Stop messing with him Rick, the clock's ticking and we got to get out here by morning, or we'll be wearing hemp neckties for the rest of our lives. Rick, you got to figure us a way to get him out of here, so we can get busy with some proper jail-breaking.[quotation mark][paragraph break]";
		-- 7:
			say "The deputy leaps up, this time angry, his face flushing. He stuffs the paper in his pocket and levels his gun at your head. [quotation mark]I had enough of you! (click)[quotation mark] He stares stupidly at his gun before realizing that he has to reload it. [quotation mark]Lucky for you, I reckon.[quotation mark] He begins plucking bullets from his belt and loading them one by one into the cylinder. [quotation mark]You so much as [italic type]sing[roman type], and I'll have to see to your killing.[quotation mark][paragraph break]A look of fear washes over Muddy's face, [quotation mark]Don't do it, Rick. Don't do it.[quotation mark]";
			now the deputy is singing-sensitive;
			the deputy desensitizes in five turns from now;
		-- 8:
			say "The deputy swaggers as he levels his overgrown pistol at your head. [quotation mark]I reckon you touched one [if the cylinder is the bars]jail bar[otherwise]window rod[end if] too many for what was good for you. Shame ever body ain't going to have the chance to see you swinging like a regulator clock.[paragraph break]Nine bullets and one buckshot round later, you find yourself walking down a dark tunnel towards a bright light. Muddy is right behind you. You hear a train appraoching.[paragraph break]Muddy holds up his hand and the train's brakes scream, sparks fly from its undercarriage and steam spills to each side of the locomotive. Muddy says, [quotation mark]I guess it worked after all. C'mon, Rick. All aboard![quotation mark][paragraph break]";
			change the endgame to shot;
			end the game in death. 
			
At the time when the deputy desensitizes:
	now the deputy is not singing-sensitive.
	
Instead of singing when the deputy is singing-sensitive:
	say "The deputy sighs, raises his gun and fires. You catch the bullet smack dab in forehead.[paragraph break]As the lights fade, Muddy bends over you and closes your eyes, whispering, [quotation mark]I ain't gonna give you up, I ain't gonna let you down...[quotation mark][paragraph break]";
	change the block stage business flag to true;
	change the endgame to rolled;
	end the game in death. 

Rule for reaching inside a room when doing something with the deputy and introduction is not happening:
	allow access.
	
Instead of searching the deputy when the deputy is not awake:
	if the deputy carries the warrant:
		say "You rifle through his pants pockets and find a federal warrant. You also find a small brass key. Naturally, you take both.";
		now the player carries the brass key;
		now the player carries the warrant;
	otherwise:
		say "You don't find anything else but pocket lint."
		
Instead of doing something with the deputy when the deputy is asleep or the deputy is drugged:
	if the sheriff is in the jailhouse:
		say "[wake-deputy]" as dialogue;
		now the deputy is awake;
		the rule fails;
	if the current action is searching or examining or shooting:
		continue the action;
	otherwise:
		change the consciousness of the deputy to drugged;
		the deputy zonks out in two turns from now;
		say "The deputy stirs slowly, his eyes half-shut."
		[###TODO add any other drugged deputy behaviors here.]
		
At the time when the deputy zonks out:
	say "The deputy[one of] slides back down to the floor and passes out again[or]'s eyes slowly close and he drifts back to sleep[or] yawns and snuggles up to the jail bars, already asleep[at random].";
	change the consciousness of the deputy to asleep.
	
Section Flash
[dun dun dun FLASH! Wa-oooouughhhh, he'll save every one of us...]

Flash is a male animal in Limbo. Flash is proper-named. Flash can be spat upon. Flash is not spat upon.

The collar is part of Flash. The description of the colar is a "A simple leather collar of the sort that you once wore briefly during an embarrassing episode of poor judgement in New Orleans. But, as they say, what happens in New Orleans, stays in New Orleans." Understand "leather" as the collar.

The leash is part of the collar. The description of the leash is "A simple bit of hemp rope, more than strong enough to keep old Flash at bay. The leash runs from Flash's collar up to the metal lever on the steam boiler. The rope is an unpleasant reminder of what awaits you and Muddy if you don't manage to bust out of jail by eight in the morning."

Section Marshal

The marshal is a person in Limbo. The scent of the marshal is "of authority". The description of the marshal is "A no-nonsense man in this late thirties, with an intense face and ramrod straight posture. His uniform is immaculately pressed. He is so by-the-book and lawful that it hurts your eyes just to look at him." Understand "marshall" as the marshal.[for people like me who for some reason can't accept that marshal is spelt with one 'ell']

Section Muddy

Mud-lifted is a number that varies. Mud-lifted is zero.

Muddy is a man in the jail cell. Muddy is proper-named.  "Muddy leans against the wall[if Muddy carries the harmonica] tapping a harmonica on his arm[end if].".  The description of Muddy is "Muddy is well... muddy. His dated tweed three-piece suit is tattered, and doesn't at all match his formal frock coat, which is covered with dust and mud. [one of]In short, he hasn't changed a jot since the day you were both picked up for desertion and thrown in the stockade.[or]He's a bit short and pudgy, but always more nimble than you'd expect for someone of his age.[or]He hasn't shaved for days, and when he grins you notice one of his front teeth is missing.[or][stopping]". Muddy can be inked. Muddy is not inked. 

The scent of Muddy is "[one of]unwashed[or]like he's in need of a bath[or]like you feel[at random]". The texture of muddy is "rough and gritty".

After examining Muddy:
	change the current plan to one.
	
The frock coat and suit are worn by muddy. The description of the frock coat is "A fancy coat that was stylish in its day." The description of the suit is "A three-piece suit, which due to wear and tear is now about a two-and-a-half piece suit." The scent of the frock coat is "faintly of moth balls". The texture of the frock coat is "soft".

Instead of searching muddy:
	say "Muddy squirms. [quotation mark]Hey, cut that out Rick. This ain't no time to be tickling me.[quotation mark][paragraph break]".
	
[This is meant to be over-ridden by more specific insteads]
Instead of giving something (called the item) to Muddy:
	say "Muddy glances at [the item] and says, [quotation mark]I ain't got no idea what I'd do with [an item]. No thanks.[quotation mark][paragraph break]".
	
[Make sure Rick and Muddy end up in the same places.]
After going a direction:
	move Muddy to the location;
	continue the action.

Section Pete

Pete is a man in the jail cell. Pete is proper-named.  "In the corner of the cell, a disheveled man in a black suit is stretched out on a crude wooden bench and is snoring loudly, oblivious to your presence."  Understand "disheveled", "man", "pastor", "priest", or "drunk" as Pete.  The description of Pete is "The man crumpled in the corner wears a black suit and a pastor's neck tie. He'd almost look respectable, if it weren't for the immediate environment. He reeks of booze and snores loudly[if Pete encloses the pamphlet]. A pamphlet is sticking out of his pocket[one of]. You don't consider yourself a common pickpocket, but it makes you wonder what else he might have on him[or][stopping][end if][if the pamphlet is not in the pocket and the tin is in the pocket]. The pocket where you found the pamphlet gapes open. Priests are the trusting sort, you guess[end if]." Pete can be recognized. Pete is not recognized. The scent of Pete is "[one of]musty[or]like chewing tobacco[or]like a camp fire[or]like bourbon[or]strongly of gin[at random]". The printed name of Pete is "[if Pete is recognized]Pastor Pete[otherwise]the disheveled man[end if]". 

Instead of doing something with pete:
	if the current action is examining or searching:
		continue the action;
	otherwise:
		if Pete is recognized:
			follow the Pete's stage business rule;
		otherwise:
			say "Suddenly the man leaps up and rants, [quotation mark]";
			pick a phrase from the Table of Pete's Rants;
			say "[quotation mark]. He then collapses on the bench again and falls fast asleep."	

The pocket is part of Pete. The description of the pocket is "A deep pocket sewn into Pete's suit."

Instead of taking the pamphlet when the pamphlet is in the pocket:
	say "You carefully slip the pamphlet out of the sleeping man's pocket.  He almost wakes up, but doesn't.[paragraph break]'Whatizit?', Muddy rasps.";
	move the pamphlet to the player.

Check examining the pamphlet:
	if the player does not carry the pamphlet,  say "You need it in your hand first." instead.
	
Check reading the pamphlet:
	if the player does not carry the pamphlet,  say "You need it in your hand first." instead.
	
The pamphlet is a sheet in the pocket. The description of the pamphlet is "The pamphlet depicts God in a cowboy hat roasting sinners over a camp fire. A sermon is printed below the picture." The texture of the pamphlet is "like cheap newsprint". Understand "sermon" as the pamphlet. The inscription of the pamphlet is "[one of]You read it aloud:[paragraph break][pamphlet sermon][paragraph break][initial pamphlet][or][second pamphlet][or][pamphlet sermon][stopping]". 

Instead of giving the pamphlet to muddy:
	try showing the pamphlet to muddy.

Instead of showing the pamphlet to muddy:
	if Pete is not recognized:
		say "[Hot diggity dog]" as dialogue;
		now Pete is recognized;
	otherwise:
		say "[quotation mark]Yeah, I seen. It's Pastor Pete, sure as a sawbuck,[quotation mark] remarks Muddy."

The tin is a closed portable openable container in the pocket.  The carrying capacity of the tin is 1. The texture of the tin is "[metallic]". The scent of the tin is "like tobacco".

Rule for printing room description details of the tin:
	say " (which is [if the tin is open]open[otherwise]closed[end if])".

Instead of inserting something (called the item) into the tin:
	if the item is tobacco or the item is the berry:
		continue the action;
	otherwise:
		say "[The item] won't fit in the tin."

Instead of reading the tin:
	try examining the tin instead.

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

Instead of searching the tin:
	if the tin is closed:
		say "(first opening the tin)[command clarification break]";
		now the tin is open;
	say "It's full of chewing tobacco."

The tin contains the tobacco.  The tobacco is edible. The description of tobacco is "Some [tobacco-appearance]". To say tobacco-appearance: say "shredded black chewing tobacco". The tobacco can be ingested. The tobacco is not ingested. The chew count is a number that varies. The chew count is zero. The indefinite article of tobacco is "a wad of". Tobacco can be commented. Tobacco is not commented. The scent of the tobacco is "leafy and aromatic". The texture of the tobacco is "flaky". Understand "wad", "leaf", and "chaw" as tobacco.
	
After taking tobacco:
	say "You take a pinch of tobacco."

After eating tobacco:
	if the tobacco is ingested:
		say "Nope. Once was enough.";
		move the tobacco to the player;
	otherwise:
		now the tobacco is ingested;
		say "[swallowed chaw]" as dialogue;
		move the tobacco to the tin.
		
Before inserting the tobacco into the mouth:
	if the tobacco is in tin and player carries the tin:
		say "(first taking a pinch of tobacco)[command clarification break]";
		move the tobacco to the player;
		continue the action.
		
After inserting the tobacco into the mouth:
	say "You stick the tobacco in your mouth and get ready to chew it some."
			
Section Rick

The player is Rick. Rick is a man in the jail cell. Rick is proper-named. The scent of Rick is "familiar". 

Rick can be tall.  Rick is not tall.  [unless he's on a stool or on Muddy's shoulders]

The mouth is part of Rick. The indefinite article of the mouth is "your". The mouth is a container. The carrying capacity of the mouth is one. Understand "maw", "pie hole", "kisser" as the mouth. The texture of the mouth is "parched". The scent of your mouth is "neither minty nor mediciny".

Instead of inserting something inedible into the mouth:
	say "That ain't hardly something to go putting into your mouth."
	
After inserting something into the mouth:
	say "You pop [the noun] into your gaping maw."

Instead of examining the Rick, say "[if the player wears the left boot or the player wears the right boot]Big boots,[otherwise]Denim[end if] pants[if the player wears the hat or the player carries the hat], a plains hat[end if], a tattered overcoat, and some attitude.  Not so different from the uniform you once wore, just more lived-in."

The Rick carries a pocketwatch.   The pocketwatch is a prop.  Understand "watch" and "timepiece" and "pocket watch" as the pocketwatch. The description of the pocketwatch is "It's the wind-up timepiece you received when you were commissioned as an officer in the Confederate Army. [one of]You may have lost everything else in that war, but at least you have this fine pocket watch.[or]It is some small consolation that your jailers were so incompetent as to overlook your one treasure.[or][stopping] It currently reads [time of day + 1 minute in words] in the [if the hours part of the time of day is greater than 12]evening[otherwise]morning[end if]  -- [remaining time]." The indefinite article of the pocketwatch is "your". The texture of the pocketwatch is "[metallic]".

To say remaining time:
	let H be the hours part of the time of day;
	let M be the minutes part of the time of day;
	if H is 7:
		let D be 60 minus M;
		say "only [if D is one]one single minute[otherwise][D in words] minutes[end if]";
	otherwise:
		if H is less than 24 and H is greater than 12:
			let D be 32 minus H;
		otherwise:
			let D be eight minus H;
		say "[if M is zero]about[otherwise]less than[end if] [D in words] hours";
	say " until you and Muddy are [one of]hanged[or]pushing up daisies[or]six feet under[or]wearing hemp collars[or]to be put on permanent disability[or]dead as a door nail[at random]".[###TODO more dead euphemisms]

Rick wears a hat. The hat is a player's holdall.  The description of the hat is "An unusually capacious, wide-brimmed hat to protect you from the sun." The indefinite article of the hat is "your". The texture of the hat is "like coarse fabric". The scent of the hat is "like your head".

To say doffhat:
	say "(First taking off the hat)[command clarification break]".

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
	say "[if the hat contains something]In the hat you can see [contents of hat][otherwise]Ten gallons of nothing. You sure could shove a lot of loot in there you reckon[end if]."   Instead of eating the hat, say "If you don't get out of this place, you sure will!"
	
Rick wears some pants. The description of the pants is "Rugged, blue denim." The indefinite article of the pants is "your". The scent of the pants is "grubby". The texture of the pants is "abrasive".

Instead of taking off pants:
	say "Etiquette, if not just plain old common sense, suggests that you keep them on in a jail cell."

Inventory-done is a truth state that varies. Inventory-done is false.

Instead of taking inventory: [purloined from Persephone, example 62 in I7 documentation]
	say "You're carrying [a list of things carried by the player][if the player wears something]. You are wearing your [list of things worn by the player][end if]. [paragraph break]";
	if inventory-done is not true:
		say "Your revolver was confiscated, it seems.";
		change inventory-done to true.
	

Rick carries a scrap of paper.   The scrap of paper is a prop.  Understand "scrap" and "paper" as the scrap of paper.  The description of the scrap of paper is "Muddy's scribbled instructions for holding up the train, which you carried out faithfully before the Sheriff showed up." The inscription of the scrap of paper is "In smeared scribbles: 'DEER RICK, 1. GET DYNA-MITE FROM MTNSIDE, 2. INSERT SPARKER, 3. BLOW UP TUNNEL, 4. WAIT FOR ME'[one of].[paragraph break]That was Muddy's cunning plan, and unlike most of his plans, it went off without a hitch: you got the silver, nobody got hurt. Yup, not a single hitch -- except for getting caught[or][stopping]." Understand "instructions" as the scrap of paper.

Rick wears an overcoat. The indefinite article of the overcoat is "your". The description of the overcoat is "[one of]The gray riding coat reminds you of past adventures with Muddy Charlie: the speckled holes on the side where you caught a shotgun blast when a bank transaction gone awry, the hole on the the other side from the time you and Muddy got to fooling around with a bow, an arrow, and a bottle of whiskey, and the charred, frayed edges of the coat from the time you and Muddy were almost burnt as witches. Each flaw in the garment reminds you of one of Muddy's plans, each of which sounded so reasonable at the time...[or]A gray riding coat that has been cut, stabbed, perforated, flayed, frayed, spindled, and mutilated. Many fond memories[stopping]." The scent of the overcoat is "ripe". The texture of the overcoat is "weatherbeaten". Understand "coat" as overcoat.

Instead of searching the overcoat:
	say "[one of]Your hands slip into where your pockets used to be. Nothing is left of your pockets, except holes. Not that your overcoat needed more holes[or]You don't find anything[stopping]."
		
Instead of taking off the overcoat:
	say "Your overcoat is so threadbare it doesn't matter if it's on or off."
	
The footwear is privately-named backdrop in the jail cell. Understand "boots" and "shoes" and "shoe" as footwear. The description of the footwear is "Black boots that have seen better days. [if the spur is part of the right boot]The left boot is missing its heel spur[otherwise]Both boots are missing their heel spurs[end if]." The scent of the footwear is "horrible". The texture of the footwear is "leathery".

Instead of doing something other than examining with the footwear:
	say "You need to say the left one or the right one."

Rick wears the left boot. The description of the left boot is "A cowhide boot that has been rubbed [smooth]. The heel is worn-down, and the spurs have broken clear off." The scent of a the left boot is "better on the outside". The indefinite article of the left boot is "your". The texture of the left boot is "[smooth]".

Rick wears the right boot. The description of the right boot is "A cowhide boot that has been rubbed [smooth][if the spur is part of the right boot]. A metal riding spur is about ready to fall off the worn-down heel[end if]."

A spur is part of the right boot.  The description of the spur is "A sharp, round disc that rotates within a mount[if the spur is part of the right boot]. The spur is loosely attached to the heel of the right boot[end if]." The mount is part of the spur. The description of the mount is "The mount is part of the spur." The scent of a the right boot is "better on the outside". The indefinite article of the right boot is "your". The texture of the right boot is "[smooth]". Understand "spurs" as the spur.


[Note -- attempts to make a shoe class ran afoul of I7 somewhere -- apparently, it creates another right boot due to the spur which is part of the right boot. Some kind of namespacecollisiony unpleasnantness. Hence the duplication of effort here and the need to make a "bootlike" adjective by definition to treat things that are booklike as a pseudoclass.]

To say smelly feet warning:
	say "[one of]Oh, you really don't want to do that. Not indoors at least[or]In some states that would be a felony[or]There are people within a thousand yards[at random]. Are you sure?[paragraph break](yes or no) >>";
		
Before dropping a bootlike thing that is worn:
	say "You can't drop it -- you are wearing it.";
	the rule succeeds.

Instead of taking off a bootlike thing (called the slipper):
	if the slipper is not worn:
		say "You're not wearing [a slipper].";
		the rule fails;
	say "[smelly feet warning]";
	if the player consents:
		say "[debootage][deshoed]";
		move the slipper to the location;
		change boot activity to true;
	otherwise:		
		say "Muddy [one of]murmurs a prayer of thanks to whatever he sometimes prays to when he's running away from something bigger or badder than he is[or]breathes a sigh of relief[or]stops holding his breath[at random]."
		
After wearing a bootlike thing:
	change boot activity to true;
	continue the action.
	
Instead of touching the spur:
	say "Sakes alive, that's sharp! You whip your hand back."

Instead of taking or pulling or attacking or taking off the spur when the spur is part of the right boot:
	now the player carries the spur;
	say "You yank the spurs off your right boot, careful not to cut yourself in the process."

Section Sheriff

The sheriff is a man in Limbo. The scent of the sheriff is "like trouble". The description of the sheriff is "An older, balding man with a perpetual smirk."

Chapter Scripted Conversations

To say (verbage - some text) as dialogue:
	say "[verbage]";
	change the block stage business flag to true.

To say initial harmonica:
	now the player holds the harmonica;
	say "'I ain't never seen you play the mouth organ, Muddy.'[paragraph break]Your partner turns the harmonica back and forth, and a chain rattles. 'That's [apostrophe]cuz I ain't never learned how,' he replies.[paragraph break]Muddy hands the harmonica to you."

To say initial harmonica inscription:
	say "'Lookie here, Mud. There's some fancy engraving on the harmonica.'[paragraph break]'Don't that beat all. What do it say?'[paragraph break]'Let's see. I could do with more light. You got a lantern?'[paragraph break]'Nope.'[paragraph break]'Torch?'[paragraph break]'Unh-uh.'[paragraph break]'Matches?'[paragraph break]'Nary one.'[paragraph break]'Dang. Didn't we say that next adventure we'd bring [apostrophe]em?'[paragraph break]'I reckon we did, at that.'[paragraph break]'Well, the moon's up, I can see a little. It says, --Donated to the Crawdad's Gulch Municipal Hoosegow by the Gunslinger's Widows Association, Chapter Forty-One.--'[paragraph break]'These is some Ace-high accomodations we got us, I'll say.'".

To say initial pamphlet:
	say "Muddy, who had been staring intently at his boot tips, looks up, eye brows knit in concentration. 'I don't get it. Why would anything need two hundred ninety-one thousand, eight hundred and forty eyes?'[paragraph break]'What?' you remark, looking up from the pamphlet. 'Are you kidding me? How could you figure that out?'[paragraph break]'Don't rightly know. Just something I do. Same way as I know there's 69,105 railroad ties between here and Muskogee. Ma said I was some kind of idiot savage.'[paragraph break]Dumbfounded, you stop reading halfway through the pamphlet to stare incredulously at Muddy, who picks his nose. 'Yeah, go on. What else's it say?'".

To say second pamphlet:
	say "You straighten out the pamphlet and skim it, paraphrasing for Muddy.[paragraph break]'Well let's see. It keeps going on like that for a ways without really saying much. By and by there's this part about a revival meeting. Some kind of doxology works, but out in the open, like under a circus tent. It says they'll be some preaching, some healing and even some dancing. I'd allow it sounds like a right pleasant shindig, it do.'[paragraph break]Muddy pauses. 'Can I see that pamphlet a minute?' asks Muddy".

To say pamphlet sermon:
	say "'The Prairie Gospel Church of Uncanny Righteousness'[paragraph break]'For lo, the impetuous and retributive spirit of FINAL JUDGEMENT is stirring in the heart of the unfaithful, and a FIERY thunderhead of retribution is gathering across the plains of the undeserving, the bereft of propriety, and promulgators of heresy, and the scalding hot sparks of TRUTH are spraying forth, catching light the arid and HIGHLY FLAMMABLE and veritably kerosene-soaked sawdust of the weak-willed. And into this fray, the unwholesome BEAST shall arise and the earth shall tremble. Its body shall tower above like a mountain, and upon the body shall be nineteen heads, each like unto a serpent. Upon each head, twelve horns, like that of the ram, the bull, and the elephant, say four of each. And upon each horn, sixteen stalks, not unlike celery in some respects, yet more flexible, more like the arms of an octopus, except being twice as numerous. And upon each stalk, eighty eyes, or forty pairs of eyes, if you prefer!'".
	
To say swallowed chaw:
	say "[quotation mark]Glmph.[quotation mark][paragraph break][quotation mark]You didn't just swallow that chaw, did you?[quotation mark] asks Muddy incredulously.[paragraph break][quotation mark]I reckon I done just that -- and it didn't go down pretty.[quotation mark][paragraph break]You galoot. You're supposed to chew it. Hain't I learned you nothing?[quotation mark][paragraph break]".
	
To say hot diggity dog:
	say "Muddy grabs it from you, squinting and sounding out words silently with his mouth. His eyes open wide in amazement.[paragraph break][quotation mark]Pete? Wait a gosh darn... PASTOR Pete? That really him? Hot diggity![quotation mark][paragraph break]Muddy jumps to his feet, runs to the bench and shakes Pete wildly; Pete screams and throws his hands into the air, gesticulating to heaven as he's awoken from his dream --[paragraph break][quotation mark]BEGONE, devils! God shall SMITE thee! He who brushes the Lord's horses shall not clean the stables of HEAVEN![quotation mark][paragraph break]The grubby preacher collapses back on the bench, eyes closed and snoring before either of you can take a step."
	
To say debootage:
	say "You rock back and forth on the floor, locked in a death struggle with your foot. Beads of sweat form on your head, as you struggle to twist and pull the boot off. With a sudden sucking pop, the boot relents and you tumble backwards.[paragraph break]".
	
To say deshoed:
	say "Muddy's eyes water as he complains, [quotation mark][one of]Ain't you got no sense of smell in that head of yours?[quotation mark][paragraph break]To which you reply, [quotation mark]Not after I been downwind of you around feeding time, nope. This ain't nothing next to what you can do with a can of beans[or]Not again! My poor nose[or]Man, them feets of yours stinks powerful bad[stopping]![quotation mark][paragraph break]".
	
To say reshoed:
	say "Muddy smiles and says,[quotation mark][one of]That's much better[or]What a world of difference[or]Phew[at random].[quotation mark][paragraph break]".

To say hello cigar:
	say "[one of]The deputy wrinkles his nose in distaste and produces a fat cigar from his pocket. He reaches over to the office's steam boiler, lights the cigar, walks right up to the jail bars and blows the smoke directly into your face. The stench of the cigar is evenly matched against the reek of your feet[or]The deputy withdraws the cigar from his pocket and waves it in front of you. [quotation mark]Two can play at that game,[quotation mark] he says. He lights the cigar again and blows it in your face. Muddy coughs[or][quotation mark]Oh, you want more of [apostrophe]ol Stogie, do you?[quotation mark] sneers the deputy. [quotation mark]Well fine.[quotation mark] He again lights his cigar[stopping].";
	
To say goodbye cigar:
	say "The deputy snorts and says, [quotation mark][one of]That's better[or]Learned you that lesson, I reckon[or]At least I'm getting my exercise[or]I ain't smoked so many cigars in years[or]This is getting old[stopping].[quotation mark] He stuffs the half-smoked cigar into his pocket sits down at the desk and [one of]tilts the chair backwards as he reclines[or]and loosens his collar[or]rests his feet on its scratched surface[or]and watches you with an annoyed expression[at random]."
	
To say doubledeshoed:
	say "The Deputy's cigar seems to shrivel and hang limply in his mouth, as its prodigious odor is astronomically outclassed by the combined stench of your two feet. [run paragraph on]"
	
To say driven out by smell:
	say "Suppressing the urge to throw up from the smell, the deputy reaches over to the whiskey bottle and half drains it on his way out the door.[paragraph break]"
	
To say semistinky:
	say "Flash wakes with a start and sneezes loudly. The fur on his back bristles and he opens his eyes to stare in horror at your feet. He backs away, towards the front door. The leash pulls taut. He seems caught in the balance between an urge to run away from your stinky foot and his own laziness which holds him to the spot.";
	
To say two foot dog:
	say "One foot was bad enough, but two is more than the old dog can handle. [run paragraph on]";
	
To say repel the dog:
	say "Trying not to sniff the air, Flash turns tail and breaks for the door, straining against his leash which is tied to the steam pipe lever. The lever swings towards the door, and from the roof you hear the ear-splitting drone of a railway steam whistle.[paragraph break]";
	
To say happy doggie:
	say "Flash breathes a sign of relief, walks back towards his warm spot and lies down.";
	
To say deputy resets the whistle:
	say "The Deputy slams through the swinging doors to the office, lurching to the side as he struggles to put his other leg into his pants. He is bare-chested and empty-handed, aside from a nearly empty bottle of whiskey[if the coffee is spiked]. Flash is so scared that yanks the leash and snaps the lever clear off the machine[end if].[paragraph break]The deputy thunders, [quotation mark]What the [one of]hoot-hollering[or]cluster chucking[or]saddle sore slapping[or]cow-poking sheep-sheering bear-baiting turkey-trotting[at random] blazes is the matter here?[quotation mark] The deputy surveys the office quickly and then rattles the gate to make sure it is still locked[if the gray bar is not part of the bars]. In his drunk rage, he doesn't notice the missing metal bar[end if]. [paragraph break][if the coffee is not spiked]Satisfied that you haven't escaped, he pushes the lever back to the middle position and warns, [quotation mark][one of]I don't know what you were up to what made old Flash trigger-happy, but don't let it happen again[or]You understand that I don't like having to come back here when I got better things to do now, right? You just stay put now[or]I am getting fed up with this whistle business. Damn machines. They is supposed to make ever body's life better, but every ten minutes this dang whistle is going off. I ain't cut out for modern times, I do fancy[or]Let me be clear: that whistle is for official use only, and I am the official. If you set it off one more time, there's going to be some answering for it[or]You has pushed me to my limit, and I mean it. Next time I come through that door, I might just have a mind to shoot you both dead as potatoes[stopping].[quotation mark][end if][paragraph break][quotation mark]Dumb dog,[quotation mark] he mumbles, [quotation mark]I was doing important business.[quotation mark] [if the coffee is spiked]He looks around for Flash, but the dog has already slid out of the office. [end if]The deputy [one of]spits on the ground once[or]grumbles to himself[or]gives you a mean look[or]shakes his head in frustration[or]waves his fist at you[or]checks the gate again[at random] and sets off again towards the door.[paragraph break]".
	
To say deputy responds to whistle:
	say "The deputy pokes his head back in the office and remarks, [quotation mark]I've about had enough of you characters. You can stew in your own juices here. I got important things to do over yonder in the saloon. But I reckon I would be dairy licked to leave you jokers alone.[quotation mark][paragraph break]The deputy grabs a dinner bell from the hook where it hangs next to the office door, and he rings the bell slowly a few times. Nothing happens. He rings it again. Minutes go by and the deputy waits impatiently. Finally, a fat bloodhound waddles leisurely through the door way, tempted by the dinner bell.[paragraph break]The deputy reaches into his pocket and retrieves a scrap of beef jerky. He pitches it into the dog's bowl and the bloodhound gobbles it down. The deputy leads his mangy old dog towards the office's strange looking steam boiler and ties him to it with a leash.[paragraph break][quotation mark]This here's Flash, my hunting dog. I got to warn you that he can be vicious when he gets riled up, so don't cross him.[quotation mark] Flash slowly slumps down next to the boiler, enjoying the heat. His heavy eyes close and drool drips from his toothless mouth.[paragraph break][quotation mark]Flash here's apt to rip your throat out if you so much as look at him funny, but I got him hooked up here to the sheriff's fancy steam contraption.[quotation mark] The deputy narrows his eyes distrustfully. [quotation mark]If you boys were so stupid as to make for the jailhouse door, [apostrophe]ol Flash would yank that lever and set off the steam whistle on the roof. The sheriff installed it special for me, so as I can come when he wants me. I can hear that half way across town, and if'n I do hear it, then you'll have to deal with me *and* Flash.[quotation mark] The deputy gives Flash one last pat on the head, swigs the whiskey one more time, and departs for the saloon.";
	
To say deputy drinks some spiked coffee:	
	say "The deputy brightens. [quotation mark]Ummm. I do smell me some coffee.[quotation mark] The deputy drains the mug with a single gulp. [quotation mark]That's good. I got to wake me up some.[quotation mark][paragraph break]Almost immediately, the deputy spins on his heel and drops to the floor just in front of your jail cell."

To say deputy drinks some normal coffee:	
	say "The deputy brightens. [quotation mark]Ummm. I do smell me some coffee.[quotation mark] The deputy drains the mug with a single gulp. [quotation mark]That's good. I got to wake me up some.[quotation mark][paragraph break]The deputy looks at the two of you.  [quotation mark]Enough is enough.  You jokers stay put, I'll be back again in a bit.[quotation mark][paragraph break]Flash slinks back to his spot near the boiler and lays down again."
	
To say get out of jail free:
	say "The deputy groans deeply and curls up into a ball, rolling towards you and blinking quickly. His half-focused eyes drift from you to Pastor Pete and finally fix on Muddy who gives him a full-toothed (as many as Muddy still has, at any rate) grin.[paragraph break]The disoriented deputy asks, [quotation mark]What? What in tarnation happened?[quotation mark][paragraph break]Muddy takes the initiative, [quotation mark]I reckon you must've drunk some potent firewater, deputy. You plumb passed out. Now, why don't you get up and let us out, we got work to do -- just like it says on that federal warrant.[quotation mark][paragraph break]The dull-witted deputy, still stunned by the recent turn of events stares at the warrant.[paragraph break]Muddy leans forward and points out, [quotation mark]Down there, near the bottom. It says that we should be discharged to hang up the sheriff's portrait, don't it?[quotation mark][paragraph break]The deputy yawns and rubs his eyes, [quotation mark]I reckon it do. But I thought you was criminals.[quotation mark][paragraph break][quotation mark]Oh [italic type]shucks, no[roman type], deputy.[quotation mark] Muddy puts on his most endearing smile. [quotation mark]Don't you remember the sheriff asking you to take care of his [italic type]guests[roman type]? We were just staying here overnight. Now, why don't you let us out? The sheriff's going to be mad at us all if that picture ain't hung by morning.[quotation mark][paragraph break]The deputy reaches down and does something arcane to the lock. You don't quite see what he did, but it clicks open. He slumps wearily against the jail bars and the gate swings open, permitting passage eastward into the office."
	
To say rather not hang around:
	say "[quotation mark]I reckon,[quotation mark] agrees Muddy. [quotation mark]I ain't keen to hang around here no more neither.[quotation mark] You walk out into the pitch dark night, poor but free.[paragraph break]From somewhere ahead of you, Muddy offers, [quotation mark]You know, Rick. While we were in there I did some thinking, and this time I reckon I got a plan that can't fail...[quotation mark][paragraph break]".
	
To say loot in the cabinet:
	say "The cabinet opens to reveal two gun belts and a banana.[paragraph break][quotation mark]Come to papa![quotation mark] beams Muddy, as he reaches for his gun belt and straps it on".

To say pre-crunch:
	say "Sheriff Cheney surges forward pointing his finger at you and Muddy, [quotation mark]It were these two what blown up that train tunnel! They's escaping when we walked in! [if the deputy is not awake]Look, they done killed my deputy! [end if]We should drop [apostrophe]em where they stand.[quotation mark][paragraph break]The marshal looks uncertain and waves the army guards forward. They train their pistols on you. [if the deputy is not awake][paragraph break]The marshal rests his hand on the sheriff's trigger arm and says, [quotation mark]Sheriff, without any evidence to substantiate your accusation regarding the train robbery, I was reluctant to see these men hanged without a trial. Given the corpse of a lawman in front of us, though, even I have to agree that justice should be swift and definitive in this instance.[quotation mark][end if] [paragraph break]".
	
To say wake-deputy:
	say "Seeing the sheriff, the deputy sobers up immediately and jumps to his feet. [quotation mark]I was just resting my eyes for a moment, sir, and helping these gentlemen hang your portrait up.[quotation mark][paragraph break]The marshal looks confused and asks the deputy, [quotation mark]Hang up his portrait?[quotation mark][paragraph break][quotation mark]Well sure, mister marshal, sir. The sheriff done told me they was our welcome guests and that he wanted his picture hung up.[quotation mark][paragraph break]The marshal raises his eyebrows suspiciously, [quotation mark]You had federal suspects tidying up your office? Sheriff Cheney, I have to say that seems quite sloppy, and not in keeping with the public trust inherent in your position.[quotation mark][paragraph break]". 
	
To say talk only to me:
	say "The marshal interjects, [quotation mark][one of]I am the senior lawman present. The prisoners will address their remarks to me[or]Address your remarks to me[stopping].[quotation mark][paragraph break]".
	
To say talk is cheap:
	say "The marshal says, [quotation mark][one of]Talk is cheap. All I'm interested in is evidence of your guilt or innocence[or]If you have something to show me, show me. Otherwise, the prisoners will remain silent, awaiting prosecution[stopping].[quotation mark][paragraph break]";
	
To say show-telegram:
	say "You show the telegram to Marshal McLuhan, telling him that [if silver-found is false]he'll find the sheriff's[otherwise]the sheriff had instructed his men to hide the[end if] stage coach full of stolen silver just behind the jail.[paragraph break][if silver-found is false][forgot-coach][end if]".
	
To say forgot-coach:
	say "Sheriff Cheney wipes his brow nervously, [quotation mark]I forgot that's where we left that coach. I do reckon I'm always forgetting where I park. I was going to mention the silver as evidence any second now.[quotation mark][paragraph break]".
	
[can only get to this phrase if lacking either the receipt or the patent]
To say need-more-evidence-than-telegram:
	say "The marshal strokes his chin. [quotation mark]You're saying that the sheriff intended to abscond with these funds instead of turning them to state's evidence? Can you show me any additional evidence that would corroborate this grave accusation? I'm not inclined to distrust an officer of the law[if receipt-found is true]. I appreciate that the marshal was in some degree of debt, but I don't understand why he would need that much money[otherwise]. It is true that the sheriff had some personal business concerns, but I have seen nothing to make me suspect that he was lacking for funds[end if].[quotation mark][paragraph break]". 
	
To say show-receipt:
	say "You show the marshal the receipt and suggest that the sheriff is quite in debt, and might turn to illegal activities to pay it off. [paragraph break]";
	
[can only get to this phrase is lacking either the silver or the patent]
To say need-more-evidence-than-receipt:
	say "The marshal looks disappointed and says, [quotation mark]Being in debt is no crime, although it does eat away at the soul. Once, I went an entire week owing more then five dollars, and I regret it to this day. However, there is nothing to suggest that the sheriff [if silver-found is true]had any sort of plan that would have required this much money[otherwise]has resorted to any illegal measures to fund his plans[end if].[quotation mark][paragraph break]".
			
To say note not enough:
	say "The marshal reads the note and then looks up. He says evenly, [quotation mark]While this does speak unkindly of the sheriff, his personal life does not interest me. The content of this note is not germane to the matter at hand.[quotation mark][paragraph break]The sheriff wholeheartedly agrees, [quotation mark]Exactly. You is exactly right, marshal.[quotation mark][paragraph break]The marshal looks back at the sheriff with a hint of annoyance." 
	
To say show-patent:
	say "You show the patent to marshal, and intimate that the sheriff had extensive business plans, far beyond his his mandate as a public servant. [paragraph break]"
	
To say need-more-evidence-than-patent:
	say "The marshal flips through the patent for the sheriff's invention and looks at you questioningly.[paragraph break][quotation mark]So?[quotation mark] he asks. [quotation mark]It seems like a clever enough invention, and I presume this work was not done on public time, or using town resources[if silver-found is false]. I also would guess that he will need some big-time investors to put a plan like this into action, but I don't see anything wrong with that. The sheriff's a businessman pure and simple. There isn't anything more American than a man willing to make a profit, when the profit is there for the taking[otherwise]. It isn't like the sheriff is in debt. I am sure a man of his caliber can find some associates to invest in his fine invention[end if].[quotation mark][paragraph break]". 
	
To say happy-ending:
	say "[if sent-for-silver is not true]The marshal dispatches two guards to search behind the office, and when they return with corroboration about the stolen silver, the marshal[otherwise]Marshal McLuhan[end if] instructs his guards to restrain and disarm the sheriff, concluding, [quotation mark]So, now it is clear. The sheriff took advantage of the railway incident to rob the train's silver himself in order to finance the development of his invention into a business. He framed these two itinerant laborers to shift the blame. No wonder he wanted them killed so quickly.[quotation mark][paragraph break]The marshal rips the gold star off the Sheriff Cheney's shirt and instructs the guards, [quotation mark]Place Mr. Cheney behind bars.[quotation mark][paragraph break]Pastor Pete yawns and walks out of the cell as the guards wrestle the sheriff past him. [quotation mark]I do reckon I slept like the dead last night. Thank you for a peaceful night, deputy,[quotation mark] and he walks out the front door.[paragraph break]The marshal raises his eyebrows, but continues, [quotation mark]Deputy James Smith Bush, by the power invested in me as federal marshal of this district, I hereby promote you to Sheriff of the Town of Crawdad's Gulch. Congratulations.[quotation mark] The newly appointed sheriff grins and shakes his hand. The marshal almost pins the star to Jimbo's bare chest, but stops short and just hands it to him. The marshal advises him, [quotation mark]James, you'll probably want to get yourself some deputies -- men you can trust.[quotation mark][paragraph break]Sheriff Jim looks over to you and Muddy. The color drains from Muddy's face."

To say capital-charges:
	say "The marshal advises, [quotation mark]Citizens, I am required by federal law as it applies to the Territory to advise you that CAPITAL CHARGES have been filed against you, and summary execution will take place, unless evidence to the contrary can be brought to light.[quotation mark][paragraph break]The sheriff rolls his eyes, [quotation mark]For the sake of the all that's Hog-Tied and Rightful, whyn't we shoot [apostrophe]em dead right here?[quotation mark][paragraph break]The marshal looks at Sheriff Cheney and answers, [quotation mark]Because [italic type]some[roman type] of us believe in maintaining some semblance of due process.[quotation mark][paragraph break]".

To say silver-discovered:
	say "An excited looking army guard burst into the room and tells the marshal, [quotation mark]We just found a whole wagon of silver around the back of the jail. Looks like it was stolen from that train.[quotation mark][paragraph break]The sheriff winces, but remains quiet.";
	
To say death-note:
	say "Several hours later, from your high platform, you and Muddy have an excellent view of the area around Fort Sill.[paragraph break]Muddy turns to you, [quotation mark]Well, reckon we'll be seeing each other real soon now. It was an honor and a pleasure, sir.[quotation mark]There is a creaking sound followed by a falling sensation."
	
To say 8AM-text:
	say "Eight in the morning comes faster than you expected, and the sheriff and marshal show up punctually. You, Muddy and Pete are loaded into a wagon and escorted to Fort Sill. The three of you are marched up the gallows, and ropes are tightened around your necks.[paragraph break]From the other side of the preacher, Muddy yells over to you, [quotation mark]Rick...Rick....[quotation mark][paragraph break]You ignore him. You're just not in the mood.[paragraph break]Muddy persists. [quotation mark]Rick... Rick....[quotation mark][paragraph break][quotation mark]What?[quotation mark] you huff. [quotation mark]I hope this ain't another of your plans. It would be a little late.[quotation mark][paragraph break][quotation mark]Nope, no plan Rick. I just wanted to mention that from up here, I can see our house.[quotation mark][paragraph break]The floor falls away, and everything goes dark."
	
To say meat-text:
	say "[one of]When your eyes refocus, you can see Muddy leaning over you, his face an expression of concern.[paragraph break][quotation mark]You done fainted, Rick. Flat out like a board. Didn't say nothing, at all. Just went down like a hog at a rodeo[quotation mark][or]After some time, you pick yourself off the ground, where you have collapsed. Muddy just shakes his head, incredulous of your inability to learn from your mistakes. Like he should talk[or]You wake up with a pain in your [one of]head[or]back[or]leg[or]arm[or]neck[or]feet[at random], having once again passed out[stopping].[paragraph break]". 
	
To say muddy-clues:
	say "Muddy whispers, [quotation mark][one of]Rick, we ain't got long. I reckon that marshal is someone what can be reasoned with[or]We got to show that marshal something. I reckon maybe we could make up some kind of excuse or shift the blame, maybe[or]Rick, we're almost out of time. You got to convince that marshal that we ain't no more crooked than that sheriff[stopping].[quotation mark][paragraph break]"

To say whistled-to-death:
	say "The deputy stumbles in from the street, barely able to stand. Regarding you through bloodshot and unfocused eyes, he whines, [quotation mark]I done told you enough times not to set off that whistle and did you listen? Heck, no. Well, maybe this will teach you a lesson![quotation mark][paragraph break]He staggers forward and draws his gun. The first shot goes into the pipe above the steam boiler, puncturing the pipe and sending a jet of hot steam into the Deputy's face. The deputy howls in pain and shoots again, hitting the dinner bell. Flash darts forward, tripping the deput and sending him sprawling on the floor. The deputy curses and fires a volley of three more shots into the ceiling, which showers him with concrete fragments, blinding him. The next shot goes wide, straight out the jail cell window and brings down a hawk which had been circling overhead. With his final shot, the deputy shoots the floor just in front of his left boot.[paragraph break]By some quirk of physics and happenstance, the exact nature of which is debated to this very day, the bullet ricochets off the wooden cabinet, clips the ends of the portrait frame, rebounds off the bricks above Pastor Pete's bench, vibrates rapidly between the jail bars, kicks the bean can into the air, and flies in a final straight line which includes both your head and Muddy's."
	
To say lifting text:
	say "[one of][quotation mark]Muddy, give me a hand up,[quotation mark] you ask. Muddy stretches his back and boosts you up to the window[or]Muddy knows the drill, and bends down to give you a boost, saying, [quotation mark]Go gentle. I got a bad back, you know. Age ain't kind to them that is in our profession.[quotation mark][or]Muddy rubs his back but lifts you up[or]Muddy looks like his back hurts; he's walking kind of bent over now, but still gives you a boost up to the window[stopping]."
	
To say falling text:
	say "[one of]Muddy trembles and jumps back. You fall to the floor. Muddy apologizes, [quotation mark]Sorry, Rick. My hands slipped.[quotation mark][or]Muddy slips and you hop off, none the worse for the effort. [or][quotation mark]Timber![quotation mark] yells Muddy, as his shaky grip fails and you once again plummet to the floor of the jail cell. [quotation mark]I think you just about done my back in that time, Rick.[quotation mark][or]Muddy's grip fails and you drop. He shakes his head. [quotation mark]I ain't got it in me to do no more lifting, and I ain't fixing to do no climbing neither. Can you climb up on something else (besides me, that is)?[quotation mark][stopping][paragraph break]";
	
To say whimper text:
	say "Muddy [one of]grunts[or]shifts with a whimper[or]moves his feet to get in a better position[or]breathes heavily[or]strains to keep you aloft[or]shakes and quivers with effort[or]puts his back into it[or]mutters something under his breath about how much beef you've been putting away lately[or]wonders if he would have had a better life as a dentist[at random]. [quotation mark][one of]I'm fine[or]No problem[or]doing okay, Rick[or]Hanging in there for now, Rick[or]This ain't so bad[or]I think I got you[or]I hope you got a good view up there[or]This might just work[at random],[quotation mark] he [one of]grunts[or]mutters[or]yells[or]says[or]whines[or]remarks[or]adds[or]observes[or]declares[at random], [quotation mark]but [one of]I'd appreciate it rightly if you'd be quick about it[or]you might consider cutting back on the victuals after this[or]why am I always the one doing the lifting? I guess on account of you is taller[or]don't dally up there[or]my back ain't gonna last much longer[or]there's got to be a better way of climbing up there[or]I wish you could climb on something else instead[or]I wish they put that window down lower[at random].[quotation mark][paragraph break]".
		
Section Vulture

The vulture is a male animal in limbo. Understand "bird" and "buzzard" as the vulture.  The description of the vulture is "A scrawny black bird, with a bald head, sharp yellow beak and white-tipped tail feathers[if the meat is on the barrel]. Its head is plunged into the putrifying piece of meat on the barrel, and tail waves provocatively in your face, just below the window[end if].";

Instead of taking the meat when the meat is on the barrel:
	if the vulture is on the barrel:
		say "The vulture won't let you. You almost lose a hand.";
	otherwise:
		continue the action.

The tail is part of the vulture.  The description of the tail is "The vulture's tail plumage consists of several long, black feathers with white stripes." Understand "plumage" as the tail.


The feather is part of the tail. Understand "feathers" as the feather.  The description of the feather is "[if the feather is part of the vulture]The vulture's tail plumage consists of several long, black feathers[otherwise]A long, black feather[end if] with white stripes."  The feather can be first-had.  The feather is not first-had.
	
Instead of taking the feather:
	if the feather is part of the tail:
		say "You pluck a feather from the vulture's tail, and it twists its head momentarily to glare at you before plunging back to its task of devouring the rotting meat.";
		adjust points by one;
		move the feather to the player;
	otherwise:
		continue the action.


Chapter Muddy's Cunning Plans

[with due deference to Black Adder]

[The current plan is the plan that Muddy has in mind, whether he's said it or not.]
The current plan is a number that varies. The current plan is zero. 

[The ask-me counter tracks the number of times that Muddy has prompted Rick to ask him about his plan. If it is zero, he hasn't prompted at all. He will prompt 4 times and then blurt the idea (i.e, when ask-me reaches 5. Ask-me is set to 6 when the idea has been expressed.]
The ask-me counter is a number that varies. The ask-me counter is zero.

At 7:30 PM:[insurance in case Muddy is not examined early in the game.]
	if the current plan is zero:
		change the current plan to one.

This is the Muddy's plan rule:
	[prompt for plan if prompts have not been exhausted]
	if the current plan is not zero:
		if the ask-me counter is less than six:
			increase the ask-me counter by one;
		if the ask-me counter is less than 5:
			say "[the plan-askme corresponding to the plan-number of the current plan in the Table of Plans][paragraph break]";
		otherwise if the ask-me counter is 5:
			say "[the plan-blurt corresponding to the plan-number of the current plan in the Table of Plans][paragraph break][the plan-text corresponding to the plan-number of the current plan in the Table of Plans]";
			change the block stage business flag to true.
		[no statement is needed for a ask-me value of six.]
			

Understand "plan" or "his plan" or "the plan" or "his idea" or "the idea" or "idea" as "[muddyplan]".

Before asking Muddy about "[muddyplan]":
	if the current plan is zero:
		say "Muddy says, [quotation mark]Rick, I'm ashamed to admit it, but I ain't got one at this very moment.[quotation mark][paragraph break]";
	otherwise:
		if ask-me counter is six:
			say "I already done told you -- [the plan-reminder corresponding to the plan-number of the current plan in the Table of Plans].";
		otherwise:
			say "[the plan-text corresponding to the plan-number of the current plan in the Table of Plans]";
			change the ask-me counter to six;
			change the block stage business flag to true;
	stop the action.

[
plan-number: which plan in sequence
plan-askme: four 'one of' phrases in which Muddy cajoles Rick to ask him about his plan
plan-text: the text of the plan, duh.
plan-blurt: the failsafe in case the player doesn't ask Muddy his plan, Muddy blurts it out, unable
            to control himself.
plan-reminder: if Muddy is asked his most recent plan, a quick summary
]

Table of Plans
plan-number		plan-askme			plan-text			plan-blurt			plan-reminder
1					"[plan1-askme]"		"[plan1]"		"[plan1-blurt]"		"we got to bust out"
2					"[plan2-askme]"		"[plan2]"		"[plan2-blurt]"		"we got to forge that warrant"

To say plan1:
	say "[quotation mark]Let's keep this between us, though[quotation mark], he whispers.[paragraph break][if Pete in not recognized]He notices the sleeping man in your cell for the first time. [quotation mark]Don't know about him.[quotation mark] Muddy jerks his thumb towards the sleeping figure. [quotation mark]Might be a spy.[quotation mark][paragraph break][end if]Muddy leans towards you, his face barely an inch from your ear and his buzzard-worthy breath even less so from your nose. [quotation mark]Okay, Rick, I'm a-going to tell my plan.[quotation mark] Muddy pauses dramatically. [quotation mark]Here it is: we got to break out of this jail before we get strunged up.[quotation mark][paragraph break][quotation mark]That's it? That's your whole damn plan? That don't count as no plan![quotation mark] you fume.[paragraph break][quotation mark]Keep it down, Rick![quotation mark] Muddy's gaze darts over to your third cellmate. [quotation mark]Yeah, that's it for now. It takes time to cook up a good plan. You need lots of ingredients.[quotation mark][paragraph break][quotation mark]Muddy Charlie,[quotation mark] you retort, [quotation mark]I heared you was the worst cook in the Confederate Army. Your cooking like as did more damage than Sherman's March.[quotation mark][paragraph break]Muddy gives you a hurt look and sulks in the corner. After a while, you regret being so quick-tempered with your old buddy."

To say plan1-askme:	
	say "[quotation mark][one of]Ain't you gonna ask me about my plan?[quotation mark] Muddy whispers. [or]This time my plan is sure fire -- go ahead, ask me. C'mon.[quotation mark] Muddy jibes quietly. [or]Ain't you even a speck curious to ask me about my plan?[quotation mark] taunts Muddy. [or]Truthful, Rick,[quotation mark] whispers Muddy solemnly, [quotation mark]this ain't like all my other plans, this one is iron-clad. Ask me about it. Go ahead.[quotation mark] [or]I hope you ain't still angry about my last plan. It worked fine except for the last part.[quotation mark]Muddy's eyes gleam. [quotation mark]This new plan's even more slicker![quotation mark] [stopping]".
	
To say plan1-blurt:
	say "Muddy vibrates with excitement and gushes, [quotation mark]I got to tell you, Rick, or this new plan of mine is going to drive me plumb crazy![quotation mark] "
	
To say plan2:
	say "Muddy says excitedly, [quotation mark]Here's my idea: I reckon I could take that warrant and forge a different ending. Maybe trick them into releasing us.[quotation mark][paragraph break][quotation mark]That's a great idea, Muddy, let me get my pen and some ink. Oh, wait a minute. I don't have either![quotation mark] You glare at Muddy.[paragraph break][quotation mark]Oh, yeah. I suppose. I didn't think of that.[quotation mark] Muddy considers the matter. [quotation mark]Maybe we could make one. If you can find something that I can use as a pen, I reckon we can squish something or other up to make some kind of ink for it.[quotation mark][paragraph break]". 
	
To say plan2-askme:
	say "[one of]Muddy gives you that familiar old look that always leads to trouble. [quotation mark]I got me another cunning plan. C'mon, ask your old buddy Muddy...[quotation mark] Muddy leans forward, clearly impatient for you to ask him about his latest stroke of (in his opinion) genius.[quotation mark] [or][quotation mark]No, really. This plan is a winner. I'm dying for you to ask me about it. You'll see. This one will work.[quotation mark] Muddy looks desperate to prove himself to you. [or][quotation mark]I know some of my plans haven't panned out entirely, but I see a way clear out of this jail. Go on, ask me.[quotation mark] It's like the years have caught up to Muddy, and he wants this one more chance to do right by you. [or][quotation mark]Rick, will you trust me on this one? Ask me my plan.[quotation mark] Muddy looks at the ground, despondent that you are ignoring him. [stopping]".
	
To say plan2-blurt:
	say "Muddy fidgets. No longer unable to contain himself, he blurts out, [quotation mark]Oh for the sake of criminy, I got to tell you![quotation mark] "

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
"Critters"	--		"We don't take kindly to the presence of critters what we ain't wrote ourselves, but sometimes they show up anyhow. If'n you run across one, we'd be a might obliged if you'd report it to us. Y'all can file a bug report at the open sores web site for the project, what is: http://code.google.com/p/hoosegow, or you can send us a telegram at hoosegow@red-bean.com. When we hear from you, we'll round up our posse and see that justice is served."	--
"Thanks"			Table of Thanks		--		--
"License"	--	"We done released this here game under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States of America license. On account of that, you are free as a parakeet in a tornado to copy, distribute, display, and use this work and to make derivative works under the following conditions:[paragraph break]Attribution. You must attribute such works mentioning our names [story author] and the title of this work [quotation mark][story title][quotation mark]. We reckon that this can appear in the title, with the Release Information, or in the acknowledgements section of a menu system (if'n you got one). Attribution don't suggest our endorsement of them derivative works or their authors.[paragraph break]Noncommercial. You may not use this work for commercial purposes. We don't set much store by commercial purposes, nohow.[paragraph break]Share Alike. If you alter, transform, or build upon this here work, you may distribute the resulting work only under the same or similar license to this one.[paragraph break]If[apostrophe]n you would like a copy of the Inform7 source for this game, it is available via the repository at http://code.google.com/p/hoosegow/source/checkout."		--	

Table of Thanks
title	subtable		description	toggle
"The Posse"	--	"We got us a powerful fine posse, and I reckon it would do some fine justice to tip our hats to them that waded through the cow patties to pretty up this here game. They is:[paragraph break][list of testers]"		--
"Legends of the West"		--	"We ain't the first people to explore this territory, and it seems right be me to mention some of the pioneers that mapped out this land when it was savage. Names like Graham Nelson and Emily Short, who done wrote the IF language Inform 7, and other members of their posse like David Kinder and Eric Eve, who wrote the extensions that we use."	--

Chapter Credits

To say list of testers:
	say "John Lodder[line break]Conrad Cook[line break]Sam Ashwell[line break]Sarah Morayati[line break]Yoon Ha Lee[line break]Duncan Bowsman[line break]Jenni Polodna[line break]Jacob Lee[line break]Adrian Colley[line break]";

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
"PC"	--	"The sheriff's wheelchair rolls up the front ramp, and he enters the office with his multicultural posse, who represent the diverse members of the community of Endangered Arthropod Valley. Two of the named women in his posse discuss a subject other than men. The sheriff draws a nonlethal weapon that has not been tested on animals, and waves it in a non-threatening manner at you and your partner.[paragraph break]The deputy finishes his yoga stretches and stands up, draining his bottle of health water and setting the recyclable bottle on the renewable hardwood desk. [quotation mark]Sheriff, we had a right pleasant evening, and I reckon these gentlemen is sincerely regretful of their wrongs.[quotation mark][paragraph break]The sheriff agrees, [quotation mark]I do reckon, but they still got to repay their crime, even if the blame for that crime ultimately rests on society itself, and is the result of a poor educational system and the lack of adequate social welfare and state institutions.[quotation mark][paragraph break]The deputy nods sagely, [quotation mark]How about some community service? The Gunslinger's Significant Other Association runs a camp for autistic spectrum disorder orphan Native Americans on the outskirts of town. I reckon they could use a hand running their cruelty-free all-vegetarian farm.[quotation mark][paragraph break]There is a murmur of agreement from the posse, and the sheriff claps the deputy on his back. [quotation mark]That's mighty forward thinking of you, James.[quotation mark][paragraph break]Muddy gives you a distressed look and asks the sheriff, [quotation mark]I reckon I'd prefer the hanging. Is that still an option?[quotation mark]"	--
"A Flare For Design"	--	"The sheriff strolls into the office and immediately notices the portrait. Arms on his hips, he admires the painting. [quotation mark]I declare, that *do* make the office. It breaks up that entire space. That wall were so stark and empty before you done hung it. I owe you two a debt of sincere gratitude.[quotation mark][paragraph break]Muddy considers the painting as well and then looks around the room. [quotation mark]That seemed the right place to hang it, considering you got all them wood tones in the desk and the cabinet, and yonder doorway gives that area a bright, natural light most of the day.[quotation mark][paragraph break]The deputy stirs. [quotation mark]Yeah,[quotation mark] he adds. [quotation mark]It's a shame we don't got no windows in the office, excepting in the jail cell. I reckon we could knock out that front wall and put in a bay window, maybe add a window treatment that would soften the a room jot. Also, how about a stencil? Something rustic, running as a trim, just below the ceiling.[quotation mark][paragraph break]You brew four cups of dark, whole-bodied espresso, sprinkling the top with nutmeg. The steam curls upward and fills the room with rich aroma. You settle down on the plush wraparound couch that has appeared in the office and join the sheriff, the deputy and Muddy in browsing through a book of fabric swatches."		--	
"Range Rover"	--	"The waving fields of wheat are incinerated in the actinic flame of fusion rocket exhaust as a quarter-mile long football-shaped metal ship extends its landing pylons and sets down across the street from the sheriff's office.[paragraph break]The sheriff is transfixed by the sight, and the marshal faints outright.[paragraph break]A gangplank extends and a massive cargo door rolls open. A woman in a blue flight suit is followed down the ramp by an energetic white dog with black spots. She walks to the office and stares at Muddy.[paragraph break][quotation mark]Janet?[quotation mark] croaks Muddy dryly. [quotation mark]I didn't expect to see you around these parts.[quotation mark][paragraph break][quotation mark]I bet you didn't,[quotation mark] she replies matter-of-factly. [quotation mark]We have a situation in The Belt, grab your saddle bag.[quotation mark][paragraph break][quotation mark]I got a buddy, Janet. He's real good with a gun and plays a mean harmonica.[quotation mark] Muddy turns to you, [quotation mark]Janet, this here is Rick.[quotation mark][paragraph break]Janet nods and is already walking back to the ship before you can so much as say [quotation mark]howdy[quotation mark].[paragraph break][quotation mark]What's with her?[quotation mark] you ask.[paragraph break]Muddy sighs. [quotation mark]It's complicated, I reckon.[quotation mark] "	--
"Just Visiting"	--	"The sheriff walks into the office, followed closely by the marshal. The marshal trains his pistol on you while the sheriff examines the deputy, who is stretched out on the floor.[paragraph break][quotation mark]He ain't dead,[quotation mark] the sheriff observes. [quotation mark]But he like as hit his head on the bars. Wait a minute.[quotation mark] The sheriff leans closer to the prone body. [quotation mark]This ain't right. Where he lost some skin, I see scales. Like he were a lizard, or something.[quotation mark][paragraph break]The marshal hisses and swings his gun to cover the sheriff. The hissing is echoed by the cadre of soldiers behind the marshal.[paragraph break]The marshal replies, [quotation mark]A regrettable observation, earthman.[quotation mark] He beckons some guards forwards. [quotation mark]Glulx, take the sheriff and lock him up. Glk and Zil, you go out back and take charge of those iridium discs in the stage coach.[quotation mark] Swinging the gun back to you and Muddy, he drawls, [quotation mark]Now, as for you two...[quotation mark][paragraph break]Muddy laughs lightly and pushes the gun aside, [quotation mark]Heck, Zilch, it's me, Ifmud, and this here's Rixyzzy. We was sent after that iridium our own selves, but we got captured by the earthmen. Good thing I had a back up plan![quotation mark] "	--


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
LibMsg <undo succeeded>		"You done backtracked some.[paragraph break]"  
LibMsg <undo failed>			"[apostrophe]Undo[apostrophe] failed real miserable-like. [bracket]Not all interpreters got the cajones to get undid[dot][close bracket]"
LibMsg <undo not provided>		"[bracket]Your 'terp don't provide [apostrophe]undo[apostrophe]. [apologies].[ExMark][close bracket]"  
LibMsg <cannot undo nothing>		"[bracket]You can't [apostrophe]undo[apostrophe] what ain't been did none[ExMark][close bracket]"   
LibMsg <oops failed>			"That were so balled up, ain't nothing can fix it.[paragraph break]"
LibMsg <oops no arguments>		"[aintNothing].[paragraph break]" 
LibMsg <cannot do again>		"You can't hardly repeat that.[paragraph break]"   
LibMsg <command not understood>	"Is you talking plain English? I ain't following the words coming out of your lips. Mayhaps it's your accent.[line break]"  
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
LibMsg <whom disambiguation>		"Who all are you talking to?[paragraph break]"   
LibMsg <pronoun not set>		"I don't rightly twig what who your talking about.[paragraph break]"  
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
LibMsg <cannot take something you are within>		"You[apostrophe]d have to scoot off of [the main object] first.[paragraph break]"  
LibMsg <cannot take something already taken>		"Sakes alive. You already done got that.[paragraph break]"    
LibMsg <cannot reach within closed containers>		"[The main object] ain't open.[paragraph break]"  
LibMsg <cannot take scenery>		"That ain't hardly what a body would aim to carry about.[paragraph break]"  
LibMsg <cannot take something fixed>	"That's planted real good and not going anywhere, I do reckon.[paragraph break]"
LibMsg <report player removing>		"Snatched.[paragraph break]"  
LibMsg <cannot remove something not within>		"But it ain't there now.[paragraph break]"  
LibMsg <report player dropping>		"Ditched.[paragraph break]"  
LibMsg <cannot drop not holding>		"[youAint]got that.[paragraph break]"  
LibMsg <cannot give what you have not got>		"[youAint]holding [the main object].[paragraph break]"
LibMsg <block giving>			"[The main object] don't seem interested.[paragraph break]"  
LibMsg <cannot show what you have not got>		"[youAint]holding [the main object].[paragraph break]"  
LibMsg <cannot enter something not enterable>		"That ain't something what you can loiter on.[paragraph break]"  
LibMsg <cannot exit when not within anything>		"[youAint]in anything at the moment.[paragraph break]"
LibMsg <cannot get off things>		"[youAint]on [the main object] at the moment.[paragraph break]"  
LibMsg <cannot go up through closed doors>		"[youAint]able to climb [the main object].[paragraph break]"  
LibMsg <brief look mode>			" is now 'brief' printing mode, what gives long descriptions of places you ain't visited before and short descriptions otherwise.[paragraph break]"  
LibMsg <superbrief look mode>		" is now in its 'superbrief' mode, what gives short descriptions of locations (even if a body ain't been there before).[paragraph break]"  
LibMsg <verbose look mode>		" is now in its 'verbose' mode, which always gives long descriptions of locations (even if you been there plenty).[paragraph break]"  
LibMsg <cannot search unless container or supporter>	"You don't find nothing at all.[paragraph break]"  
LibMsg <cannot search closed opaque containers>		"[youAint]able to peek inside, seeing as how [the main object] is closed.[paragraph break]"  
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
[Note: In thinking about hint activation, remember that the set up of the extension is such that once a hint is deactivated, the activation rule will not reset it. The table row is deleted, so one doesn't need to worry about recurrent activation of a hint. Still, it's good to make the activation rules specific.]


Table of Active Hints (continued)
title		subtable			description			toggle
text		table-name		text					a rule

Table of Potential Hints (continued)
title													subtable
"How can I open the can?"						Table of Can Opening
"Getting rid of the deputy."						Table of Deputy Repulsion
"Finding stuff in the jail cell."				Table of Finding Stuff Inside
"What's this berry good for?"					Table of Trap Setting
"Getting the deputy to drink the coffee."	Table of Deputy Luring
"How does that steam contraption work?"		Table of Machine Operation
"The deputy's out cold. Now what?"				Table of Post-knockout Hints
"Where to find a pen?"							Table of Pen Hints
"Where to find some ink?"						Table of Inklings
"Uh oh. The marshal!"								Table of Evidence Hints
"Fixing the wobbly stool."						Table of Stool Fixing


A hint activation rule (this is the opening the can of beans hint activation rule):
	if attempted-can is true and the can of beans is not open:
		activate the Table of Can Opening.
		
A hint deactivation rule (this is the opening the can of beans hint deactivation rule):
	if the can of beans is open:
		deactivate the Table of Can Opening.


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

A hint activation rule (this is the getting rid of the deputy hint activation rule):
	if introduction is happening then activate the Table of Deputy Repulsion.
	
A hint deactivation rule (this is the getting rid of the deputy hint deactivation rule):
	if introduction is not happening then deactivate the Table of Deputy Repulsion.
	
Table of Deputy Repulsion
hint												used
"It's hard to get stuff done with that deputy in the office."
"The deputy is in a perpetual bad mood and has a headache, which got worse the moment you two arrived. He was looking forward to a quiet evening in the saloon, but all that's gone out the window now."
"The deputy's headache is teetering on the edge of a full-blown migraine, and the whiskey can only help so much. The last thing he needs is any kind of sensory overload."
"Certain loud sounds and unplesant smells bother the deputy."
"The deputy is not a big fan of the harmonica, and has attempted on several occassions to rip it out of the wall."
"The deputy dislikes strong odors as well."
"Since the deputy is basically lazy, it may take more than one attempt to drive him out of the office."
"You and Muddy have a couple ways of producing unpleasant odors, but it may take more than one step."
"[if the can of beans is not in Limbo]You've already seen something [otherwise]If you look around the office a little more, you might find something[end if] that has the potential to smell bad if eaten."
"[if the player wears the right boot and the player wears the left boot]You have been told on occassion by some not very tactful acquintances of yours that your feet have a distinct scent[otherwise]If one boot is bad, imagine two[end if]."
"Two debooted feet, one consumed can of beans (and subsequent side effects) or a few times playing the harmonica should be enough to convince the deputy that he'd rather spend his evening somewhere else."

A hint activation rule (this is the finding stuff inside hint activation rule):
	if the turn count is greater than ten and (the can of beans is in limbo or the tin is in the pocket or the pamphlet is in the pocket):
		activate the Table of Finding Stuff Inside.
		
A hint deactivation rule (this is the finding stuff inside hint deactivation rule):
	if the can of beans is not in limbo and the tin is not in the pocket and the pamphlet is not in the pocket:
		deactivate the Table of Finding Stuff Inside.
		
Table of Finding Stuff Inside
hint												used
"To get out of the jail cell, you're going to need to make the best use of what's at hand."
"There are a few items in the jail cell that are not immediately apparent and may require some looking around."
"It is fair game to LOOK UNDER large items, to SEARCH people (if they'll permit you to do so), and to OPEN up things that are closed."
"You can start by [if inventory-done is not true]seeing what INVENTORY you are carrying and by EXAMINING yourself and your own clothes[otherwise]seeing if your third cell mate has any interesting possessions.You're in jail to start with, what do you have to lose? Go on, don't be shy[end if]."
"[if the can of beans is in Limbo]Did you look under all the big pieces of furniture (there aren't many. It's a jail -- not a hotel)?[otherwise]Have you picked up everything you can see and EXAMINEd it, SHOWn it to Muddy, or ASKed him about it?[end if]"
"[if the can of beans is in Limbo]Thanks to the deputy's poor housekeeping skills, there are some items under the bench[otherwise]Make sure you've availed yourself of any possessions the stranger may have in his pockets. He's not using them for the moment, anyhow[end if]."


A hint activation rule (this is the stool fixing hint activation rule):
	if the broken-stool-sit-count is greater than zero:
		activate the Table of Stool Fixing.
		
A hint deactivation rule (this is the stool fixing hint deactivation rule):
	if the socket is occupied then deactivate the Table of Trap Setting.


Table of Stool Fixing
hint												used
"With only two legs, the stool is not usable."
"If you look at the seat, you'll see that something is missing."
"The stool is missing a leg. It would be nice to find a replacement."
"Have you EXAMINEd the seat of the stool?"
"On the bottom surface of the seat there is a socket."
"You need to put a substitute leg in the socket to fix the stool."
"You have [if the gray bar is not part of the bars]already[otherwise]not yet[end if] found the substitute leg."
"[if the gray bar is part of the bars]One of the jail bars is different from the others. You can use sound to help find the one that you need[otherwise]Try putting the gray tube into the socket[end if]."

[

[Getting to the window during flashing if window attempted]

A hint activation rule (this is the accessing the window hint activation rule):
	

A hint deactivation rule (this is the accessing the window hint deactivation rule):
	

Table of Window Hints
hint												used
"filler"

]

A hint activation rule (this is the setting the trap hint activation rule):
	if the berry is first-held and flashing is happening:
		activate the Table of Trap Setting.
		
A hint deactivation rule (this is the setting the trap hint deactivation rule):
	if flashing is not happening or the coffee is spiked then deactivate the Table of Trap Setting.
	
Table of Trap Setting
hint												used
"So, you have a juicy little red berry, do you? Have you asked Muddy's opinion? Maybe if he takes a look at the berry, he can give you some advice."
"You could, at your own risk, see what happens if you eat one of those berries. Eating random berries may not be the best idea."
"Did you SHOW the berry to Muddy? If so, does its name suggest any uses for the berry?"
"You can use the snooze berry to drug the deputy."
"You'll have to find a way of getting the deputy to ingest the berry. He's not the most cooperative guy, so you'll have to be clever."
"There probably isn't any good way to convince the deputy to eat the berry. You can try, but he isn't much on conversation."
"He does like coffee, though."
"Is there any way to get the berry into the coffee?"
"It's a tough shot to get the berry into the coffee cup. You'll need some kind of way of aiming the berry."
"Does the gray bar have any special qualities? Maybe something that might explain why it vibrated differently that the other bars?"
"The gray bar is hollow."
"Have you tried putting things in the gray bar?"
"You can use the gray bar as a blow gun. It's very accurate."
"You can BLOW the berry ATthe coffee."


A hint activation rule (this is the luring the deputy back hint activation rule):
	if the coffee is spiked:
		activate the Table of Deputy Luring.
	

A hint deactivation rule (this is the luring the deputy back hint deactivation rule):
	if the deputy is asleep:
		deactivate the Table of Deputy Luring.
	
Table of Deputy Luring
hint												used
"How clever. You've doped the deputy's coffee, so if he drinks some, it will put him to sleep instead of waking him up. Now the question is -- how to you get him back to the jail house?"
"The deputy said he'd know if you were making a break for it."
"Before the deputy left, he did something with Flash."
"To make the coffee, you had to attract Flash towards the jail cell or his food bowl. His leash then pulled the lever in that direction, turning on the coffee machine."
"He tied Flash to the lever so that if you went towards the door and old Flash gave chase (for a few feet), Flash would set off the train whistle as an alarm."
"What happens if Flash goes in the other direction -- away from the jail cell and towards the door that leads to the street?"
"Flash, a bloodhound of unquestionable lineage, has a fine sense of smell."
"To get Flash to back away from the jail cell, you need to create a stink."
"There are a couple ways to produce a bad smell[if the can of beans is consumed]. You've already used up your beans, so you'll have to find another way[end if]."
"Taking off your boots is sure make Flash want to give you some distance."
"One boot may not be enough." 

A hint activation rule (this is the operating the strange machine hint activation rule):
	if Flashing is happening:
		activate the Table of Machine Operation.

A hint deactivation rule (this is the operating the strange machine hint deactivation rule):
	if Flashing is not happening:
		deactivate the Table of Machine Operation.
	
Table of Machine Operation
hint												used
"The deputy mentioned that the sheriff is an inventor, and there's this big old boiler in the middle of the sheriff's office. The deputy's dog, Flash, is tied to a lever on that machine."
"The lever looks like it could either swing towards or away from you."
"The deputy said he was tying Flash to the lever so that if you made a break for the door, Flash would set off the train whistle on the roof."
"The lever is attached to a junction in the pipe and it looks like it can direct the flow of steam either upwards towards the roof or across the office and into the strange machine."
"Flash can move the lever by either walking towards or away from the jail cell."
"If Flash walks away from the jail cell, he'll pull the lever and set off the train whistle."
"If Flash walks towards the jail cell, he'll pull the lever in the other direction and direct steam to the machine."
"When have you seen Flash move quickly? Is there anything that motivates him?"
"The food bowl is near the jail cell. How can you make Flash walk towards it?"
"How did the deputy let Flash know he a some food for him?"
"Flash has been conditioned to respond to the dinner bell by running towards his food bowl."
"The dinner bell is hanging on a hook near the front door, inconveniently distant for someone stuck in a jail cell."
"To ring the bell, you'll need to hit the bell with something."
"[If the tin is not in the pocket or (the berry is first-held and the gray bar is not part of the bars)]From what you've already discovered in the cell, you already have at least one[otherwise]You need to look around a bit more to find some[end if] means of ringing the bell."
"You could spit something at the bell."
"Have you found the chewing tobacco?"
"Alternatively, you could try to shoot the bell, if you had something that you could aim accurately."


A hint activation rule (this is the what now after knockout hint activation rule):
	if the deputy is not awake and the deputy has the warrant:
		activate the Table of Post-knockout Hints.

A hint deactivation rule (this is the what now after knockout hint deactivation rule):
	if forgery is happening:
		deactivate the Table of Post-knockout Hints.

Table of Post-knockout Hints
hint												used
"Now that the big oaf has clapsed next the jail cell, you can reach him."
"He's even less talkative that usual in this state, so witty repartée is probably not going to get you very far."
"Does the deputy have anything that might be of use to you?"
"You can SEARCH people to see what they are carrying. The deputy is too sedated to take exception to your searching."

A hint activation rule (this is the pen finding hint activation rule):
	if Forgery is happening and the current plan is two and the ask-me counter is six and Muddy does not carry the feather:[muddy has told his plan about forging the warrant]
		activate the Table of Pen Hints.
	
A hint deactivation rule (this is the pen finding hint deactivation rule):
	if Forgery is not happening:
		deactivate the Table of Pen Hints.

Table of Pen Hints
hint												used
"Muddy's plan was, as is often the case, short on practical details. He did say that you'd need some kind of writing implement and ink."
"It doesn't look like there's anything obvious in the jail cell to use as a pen, and you can't reach most of the stuff in the office."
"Maybe you can find something that is pen-like outside."
"A feather would work well as a pen, but you don't have one."
"Through the jail cell window, you may have either seen or heard birds outside."
"If you could lure a bird to the window, you might be able to take a feather. On the other hand, it doesn't seem very likely that you'd convince a hawk to just visit your jail cell out of the blue."
"[if the meat is in limbo]You need to look around your room a little more to find something that would be useful in luring a bird. Make sure you LOOK UNDER large pieces of furniture.[otherwise]Do you have anything that might be of interest to a bird?[end if]"
"Vulture feathers would work just as well as hawk feathers."
"What would attract a vulture?" 
"That hunk of meat is kind of putrid."
"Vultures like putrid."
"If you drop the piece of meat on the barrel, the vulture may come to visit."
"You can pluck a feather."
"Don't forget to give the feather to Muddy."

A hint activation rule (this is the ink finding hint activation rule):
	if Forgery is happening and the current plan is two and the ask-me counter is six and Muddy is not inked:[muddy has told his plan about forging the warrant]
		activate the Table of Pen Hints.

A hint deactivation rule (this is the ink finding hint deactivation rule):
	if Forgery is not happening:
		deactivate the Table of Pen Hints.
		
Table of Inklings
hint												used
"Muddy went light on the details of his plan. Somewhere, you're supposed to come up with some ink."
"[if the berry is first-held or the tin is not in the pocket]You've already found at least one item that can serve as ink of a sort[otherwise]You have not yet located an item that would serve as ink. Consider looking around either inside the cell... or outside of it[end if]."
"Have you seen anything that would stain clothing?"
"How about a vegetable dye?"
"When you find something suitable, give it to Muddy."

A hint activation rule (this is the showing evidence hint activation rule):
	If the PlusQueDenouement is happening:
		activate the Table of Evidence Hints.

Table of Evidence Hints
hint												used
"It'll take some fast and fancy talking to not end up snared like a rabbit. The clock is ticking."
"[if the drawer is not rewarded]You need to find something in the office to[otherwise]Is that anything from that drawer that could[end if] take the marshal's mind of hanging you and Muddy."
"As a lawman, the marshal holds other lawmen to a high standard."
"If you can convince the marshall that the sheriff is crooked, you might just come out of this with your skins."
"Is there some evidence from the desk drawer that might indicate that the sheriff has engaged in some questionable business practices?"
"Show the evidence to the marshal."
"Show the marshall the telegram, the receipt, and the patent."

		
Book 2  Scenes
 
Chapter Introduction

Introduction is a scene. Introduction begins when play begins. Introduction ends when the Deputy is not in the office.

Boot activity is a truth state that varies. Boot activity is false.

The introduction stink rule is listed in the nasal reaction rules.

This is the introduction stink rule:
	if introduction is happening:
		if boot activity is true:
			change boot activity to false;
			[I'm darn impressed that the next line works in terms of grammar]
			if the number of bootlike things that are worn is:
				-- 0:[when returning to the state of both shoes worn...]
					say "[doubledeshoed]" as dialogue;
				-- 1:[deputy lights his cigar whenever only one shoe is worn]
					say "[hello cigar]" as dialogue;
					now the deputy carries the cigar;
				-- 2:[Rick puts on both shoes, de-escalating]
					say "[goodbye cigar]" as dialogue;
					move the cigar to Limbo;
		if the ambient odor is 100:[for any reason]
			decrease the ambient odor by ten;
			say driven out by smell;
			if the number of bootlike things that are worn is zero:
				say "After he leaves, you give in to Muddy's desperate pleas to put your boots back on.[paragraph break]";
				now rick wears the left boot;
				now rick wears the right boot;
			say "The fragrance gradually improves as the universe cools.";
			move the deputy to limbo;
			adjust points by one.
		
When introduction ends:
	move the cigar to limbo;
	move the whiskey to the deputy;
	change the angerometer to 10.
				
Chapter Flashing

Flashing is a scene. Flashing begins when introduction ends. Flashing ends when the deputy is not awake.

When flashing begins:
	The deputy returns in one turn from now;
	Muddy comments about departure in two turns from now.
	
At the time when the deputy returns:
	say deputy responds to whistle;
	now Flash is in the office.
	
At the time when Muddy comments about departure:
	say "[quotation mark]That worked out well,[quotation mark] says Muddy proudly.[paragraph break]";
	if the deputy is not harmonicated:
		if the can of beans is consumed:
			say "[quotation mark]For you maybe,[quotation mark] you reply. [quotation mark]But I near as lost my lunch what with that stench.[quotation mark][paragraph break]To which Muddy counters, [quotation mark]Ain't much worse than your feet, I reckon.[quotation mark][paragraph break]";
		otherwise:
			say "[quotation mark]And that was just my feet -- imagine how fast he would have run if you got into them beans.";
	otherwise:
		say "[quotation mark]Yeah,[quotation mark] you agree, [quotation mark]but my ears are still buzzing from that sound.[quotation mark][paragraph break]".		
		
The flashing stink rule is listed in the nasal reaction rules.

This is the flashing stink rule:
	if flash is in the office and flashing is happening:
		if boot activity is true:
			change boot activity to false;
			if the number of bootlike things that are worn is:
				-- 0:[when returning to the state of both shoes worn...]
					say "[two foot dog]" as dialogue;
				-- 1:[deputy lights his cigar whenever only one shoe is worn]
					say "[semistinky]" as dialogue;
					now the deputy carries the cigar;
				-- 2:[Rick puts on both shoes, de-escalating]
					say "[happy doggie]" as dialogue;
					move the cigar to Limbo;
		if the ambient odor is 100:[for any reason]
			say repel the dog;
			if the number of bootlike things that are worn is zero:
				say "You agree with with Muddy that the deputy is not likely to be in a good mood when he arrives, so you put your boots back on.";
				now rick wears the left boot;
				now rick wears the right boot;
			change the position of the lever to whistleward.
			
Every turn during flashing:
	if the position of the lever is whistleward:
		change the position of the lever to neutral;
		increase the angerometer by one;		
		if the angerometer is 16:
			change the block stage business flag to true;
			say "[whistled-to-death]";
			change the endgame to shot;
			end the game in death;
			the rule succeeds;
		say deputy resets the whistle;
		if the office encloses the coffee:
			now the coffee is in limbo;
			if the coffee is spiked:
				say deputy drinks some spiked coffee;
				now the cup is in limbo;
				now flash is in limbo;
				now the lever is in limbo;
				move the deputy to the office;
				now the deputy carries the warrant;
				now the deputy carries the brass key;
				now the deputy is asleep;
				adjust points by one;
			otherwise: [deputy drinks coffee then leaves again]
				say deputy drinks some normal coffee.
				
				
Chapter Forgery

Cue the vulture is a number that varies. Cue the vulture is zero.

Forgery is a scene. Forgery begins when Rick has the warrant. Forgery ends when the warrant is edited.

When forgery begins:
	Muddy gets curious in ten turns from now.
	
At the time when Muddy gets curious:
	if the warrant is not recognized:
		say "Muddy asks, [quotation mark]Hey Rick, what were that paper you picked off the deputy? It looked real official-like.[quotation mark][paragraph break]";
		change the block stage business flag to true.
		
Every turn during forgery:
	increase the cue the vulture by one;
	if cue the vulture is 30 and vulture is not on the barrel:
		say "A vulture lands outside the window and pokes its head into the jail cell to see if anything has died recently. It looks hopefully at the deputy, but then realizes that he's still breathing. Next, it sniffs the air [if the meat is in limbo]and cranes its neck to look under the bench, but can't quite see far enough into the cell[otherwise]and its eyes draw a bead to the hunk of rotting meat[end if]. It licks it's beak in anticipation and then flies upward, circling the jailhouse."

Chapter Denouement

Denouement is a scene. Denouement begins when Rick is not in the jail cell. Denouement ends when the drawer is open.

When denouement begins:
	now the drawer is recognized.

Instead of exiting when (the denouement is happening or the PlusQueDenouement is happening):
	say "Which way? West to the jail cell, or east towards the open range?"
			
Instead of going a direction (called the way) during the denouement:
	if the way is east:
		if the player is in the office:
			say "[one of]Muddy holds up a hand, [quotation mark]Now rein in them horsies one minute, Rick. If we’re a-staying to search for loot, by gum and sticky black tarnation, I mean to take me a good long gander. There’s just got to be another hidey-hole around here somewheres. You sure you want to just ride on out of here[or][quotation mark]You sure, Rick[stopping]?[quotation mark][paragraph break](yes or no) >>"; 
			if the player consents:
				say "[rather not hang around]" as dialogue;
				change the endgame to escaped;
				adjust points by 3;
				end the game in victory;
				the rule succeeds;
			otherwise:
				say "That's more like it, partner. Let's look for some silver linings.";
			the rule succeeds;
		otherwise:
			continue the action;
	if the way is west:
		if the player is in the office:
			continue the action;
		otherwise:
			say "You can't go any further west than the jail cell.";
			the rule succeeds;
	otherwise:
		say "You can [if the player is in the office]either go west back into the cell, or exit through the swinging doors to the east[otherwise]only go east, into the office[end if]."
	
Chapter PlusQueDenouement

The PlusQueDenouement is a scene. The PlusQueDenouement begins when the denouement ends.[This scene continues until end of game.]

Instead of going a direction (called the way) during the PlusQueDenouement:
	if the way is east:
		if the player is in the office:	
			say "[one of]Muddy relents and says, [quotation mark]All right, Rick. I reckon we done what we can done. Let's make for the hills.[quotation mark][paragraph break]As you head out of the office, two men appear in the door way: Sheriff Cheney and Federal Marshal McLuhan. They are followed by a small detachment of U.S. Army guards[or]The army guards block your exit[stopping].";
			now the marshal is in the office;
			now the sheriff is in the office;
			now the army guards is in the office;
			the rule succeeds;
		otherwise:
			continue the action;
	if the way is west:
		if the player is in the office:
			continue the action;
		otherwise:
			say "You can't go any further west than the jail cell.";
			the rule succeeds;
	otherwise:
		say "You can [if the player is in the office]either go west back into the cell, or try to exit through the swinging doors to the east[otherwise]only go east, into the office[end if]."
		
Chapter Crunch Time

Silver-found is a truth state that varies. Silver-found is false.
Receipt-found is a truth state that varies. Receipt-found is false.
Patent-found is a truth state that varies. Patent-found is [patently] false.
Sent-for-silver is a truth state that varies. Sent-for-silver is false..

Crunch Time is a scene. Crunch Time begins when the sheriff is in the office.[and runs until the end of game, overlapping with the plus que denouement]

The crunch counter is a number that varies. The crunch counter is zero.

Every turn during crunch time:
	change the block stage business flag to true;[supress entirely for end of game]
	if silver-found is true and receipt-found is true and patent-found is true:
		say "[happy-ending]";
		change the endgame to won;
		adjust points by 5;
		end the game in victory;
		the rule succeeds;
	increase the crunch counter by one;
	if the crunch counter is:
		-- 1:
			say "[pre-crunch]";
		-- 2: 
			say "[muddy-clues]";
		-- 3:
			say "[capital-charges]";
		-- 4:
			say "[muddy-clues]";
		-- 5:
			say "Sheriff Cheney walks behind the office desk[if the drawer is unlocked] and is alarmed to see that the drawer has been unlocked[end if].";
		-- 6:	
			say "[muddy-clues]";
		-- 7:
			say "[silver-discovered]";
			change sent-for-silver to true;
		-- 8:
			say "The marshal advises the sheriff that he will need the federal warrant to take you and Muddy to the Fort for hanging.";
		-- 9:
			say "The sheriff searches the office in vain for the federal warrant for your arrest, and not finding it, sends a guard to fetch a copy from the telegraph office. He continues to search, though, as if looking for some other papers.";
		-- 10:
			say "The sheriff looks nervously around the office.";
		-- 11:
			say "The sheriff looks in his cabinet and behind the portrait.";
		-- 12:
			say "The sheriff looks through everything in the jail cell, still searching.";
		-- 13:
			say "An army guard enters the office and hands a yellow telegram form to the federal marshal.";
		-- 14:
			say "The marshal telegram, shaking his head sadly.";
		-- 15:
			say "The marshal commands his men to take you into custody and escort you out to the waiting coach.";
		-- 16:
			say "[death-note]";
			change the endgame to hanged;
			end the game in death;
			the rule succeeds.
		
Instead of asking someone (called the auditor) about some topic (called the issue) during the plusquedenouement:
	if the auditor is:
		-- Muddy:
			continue the action;
		-- the marshal:
			say "[talk is cheap]";
		-- otherwise:
			say "[talk only to me]".	

Instead of telling someone (called the auditor) about some topic (called the issue) during the plusquedenouement:
	if the auditor is:
		-- Muddy:
			continue the action;
		-- the marshal:
			say "[talk is cheap]";
		-- otherwise:
			say "[talk only to me]".
		
Instead of showing something (called the evidence) to someone (called the spectator) during the plusquedenouement:
	if the spectator is:
		-- Muddy:
			continue the action;
		-- the marshal:
			if the evidence is:
				-- the warrant:
					say "The marshall examines the warrant briefly and says, [quotation mark]This warrant is real, although that last ludicrous bit is obviously forged. How could you ever hope to find anyone stupid enough to fall for such an obvious trick?[quotation mark][paragraph break]";
					say "[death-note]";
					change the endgame to hanged;
					end the game in death;
				-- the note:
					say "[note not enough]";
				-- the receipt:
					say "[show-receipt]";
					if silver-found is false or patent-found is false:
						say "[need-more-evidence-than-receipt]";
					change receipt-found to true;
				-- the telegram:
					say "[show-telegram]";
					if receipt-found is false or patent-found is false:
						say "[need-more-evidence-than-telegram]";
					change silver-found to true;
				-- the patent:
					say "[show-patent]";
					if receipt-found is false or silver-found is false:
						say "[need-more-evidence-than-patent]";
					change patent-found to true;
				-- otherwise:
					say "The marshal looks at [the evidence] briefly, but does not seem impressed.";
		-- otherwise:
			say "The marshal demands, [quotation mark]As the senior lawmen present, all evidence must be presented to me.[quotation mark][paragraph break]".
	
	
Chapter Time Out

At 8 AM:
	say "[8AM-text]" as dialogue;
	change the endgame to hanged;
	end the game in death.

Chapter The End

Rule for printing the player's obituary:
	if the endgame is:
		-- escaped:
			say "*** ESCAPED ***";
		-- hanged:
			say "*** HANGED ***";
		-- shot:
			say "*** SHOT ***";
		-- rolled:
			say "*** YOU'VE BEEN ROLLED, RICK ***";
		-- won:
			say "*** YOU WIN ***".
			
Rule for amusing a victorious player:
say "Congratulations, partner. That sure could have turned a whole mess more ugly, but you same out of it with your neck. Before you ride off into the sunset, why don't you rest your eyeballs on some of the stuff in the game that maybe you ain't run into:[paragraph break]";
say "[if flash is not spat upon]* Did you try chewing the tobacco and spitting at everything in sight? How 'bout old Flash?[paragraph break]";
say "* There are three ways of driving the deputy out of the jail, how many did you find?[paragraph break]";
say "* Did you try reading the initials engraved on the stool?  Repeatedly?[paragraph break]";
say "Some other random trivia:[paragraph break]";
say "* The game is set in the Indian Territory, which would later become the Oklahoma territory and subsequently the state. How many references can you find to the musical 'Oklahoma!'?[paragraph break]";
say "* In the real West, it wouldn't have made any sense to put beans in a can. They were a cheap staple, transported dry, likely in sacks.[paragraph break]";
say "* Boot spurs were referred to as [quotation mark]can openers[quotation mark] in the Old West. Really.[paragraph break]";
say "* The transcontinental railroad was completed in 1869, but it crossed two states above Oklahoma. The first railroads in Oklahoma were built in 1870, and the state wasn't crossed until 1871.[paragraph break]";
say "* The espresso machine was invented in 1901 in Italy, but we figured that so many Old West movies came from Italy, that it would look natural enough in our story.[paragraph break]";
say "* The slang 'hoosegow' comes from the Spanish [italic type]juzgado[roman type], which was a type of judge tribunal.[paragraph break]";
say "Finally, if you've read this far down the page, you deserve to know about the [quotation mark]EASTER EGG[quotation mark] command, which will reveal several alternate endings to the story. Explore them at your own risk."
	
