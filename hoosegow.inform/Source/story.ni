"Hoosegow" by Ben Collins-Sussman and Jack Welch

The story headline is "A Wild West Wreck".
The release number is 1.
The story creation year is 2010.
The story genre is "Western".
The story description is "Muddy's plan done landed you and yer par'ner in the hoosegow. Now yer fixin' to rectificate th' matter before the Marshall introduces you to the business end of a hangin' rope at dawn.".

The intro-text is a text that varies.  Intro-text is "September, 1869.  A red sun hangs low in the sky, casting long shadows across the dusty plains of western Oklahoma.

The Sheriff angrily twists your arms behind your back and you feel the rusty clink of cuffs snapping together. Muddy Charlie, your dubious conspirator, winks at you as the two of you are shoved into the paddywagon, a two horse coach with barred windows.

'Hang tight, par[apostrophe]ner! You done good blowin[apostrophe] up that tunnel, and we dang stopped that train jus[apostrophe] I like I planned. Didn't plan on the Sheriff gettin[apostrophe] word ahead of time, tho[apostrophe]. That were powerful bad luck.'

The Sheriff climbs onto his horse, spits, and you begin to rumble forward.  'You boys really got it comin[apostrophe] this time!', he yells back cheerfully.

Muddy shakes his head. 'No offense, Sheriff, but ah thinks you got the wrong men. We was just on our way to the thee-ate-ter.'

The Sheriff disagrees. 'The only place you boys are headin[apostrophe] is straight to the [paragraph break]".

Include Menus by Emily Short.
Include Plurality by Emily Short.
Include Default Messages by David Fisher.

Use full-length room descriptions, american dialect and the serial comma.
Use memory economy.

[Release along with cover art.   ###TODO: Cover art]



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

The player carries a pocketwatch.  Understand "watch" and "timepiece" and "pocket watch" as the pocketwatch. The description of the pocketwatch is "It's a rusty wind-up timepiece, handed down from your uncle.  It currently reads [time of day + 1 minute]."

Time-checking is an action applying to nothing.  Understand "time" as time-checking.
Carry out time-checking:
	if the player carries the pocketwatch and the pocketwatch is not concealed
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

Chapter Class Definitions

A prop is a kind of thing. It is usually portable. [If props can be carried out of their initial room, they should not be in the room description, but appear in the room contents list.]

A furniture is a kind of supporter. It is usually scenery and fixed in place. [In general, furniture descriptions should be integrated into room descriptions.]

Chapter General Routines
		
[borrowed from example I7 documentation, example 424 Odins:]
After printing the name of something (called the target): 
    change the last mentioned thing [quotation mark][paragraph break][quotation mark]to the target.

To say is-are: 
    if the last mentioned thing is plural-named, say "are"; 
    otherwise say "is".

To say it-they: 
    if the last mentioned thing is plural-named, say "they"; 
    otherwise say "it".

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
	
Chapter General Insteads

Chapter Not Ready For Prime Time - Not for release

When play begins:
	change library message debug to on.
	
Chapter Initialize

The maximum score is 10. [change this later]

When play begins:
	say the intro-text;
	change the time of day to 7:15 PM;
        	change the left hand status line to "[the player's surroundings]";
        	change right hand status line to "Score: [score]/[maximum score]".
	
After printing the banner text:
	say "Type [quotation mark]help[quotation mark] for instructions, credits, and license -- or just roll into town guns ablazin[apostrophe].[paragraph break]";
	say "In the twilight, you sight the Sheriff's single story office near the edge of town. As dust and tumbleweeds waft lazily past the coach, you notice the bright coat of fresh whitewash on the outside of the sturdy brick structure.[paragraph break]Muddy notices too, and shakes his head. 'That's mighty fine construction. Mighty fine indeed.' [paragraph break]The horses stop short, the coach grinds to a halt, and the posse dismounts. A thick arm reaches into the dark coach and yanks you roughly from your seat. With your arms bound, you land awkwardly in the rutted street, and the Deputy holds you in place with the heel of one boot while he similarly extracts Muddy from the coach. The two of you are manhandled into the Sheriff's office and before you get a good chance to look around, you and Muddy are shoved towards a ten by ten foot holding cell.[paragraph break]As you bustle into the office, the Deputy wakes with a start, and seeing the Sheriff whips his dusty boots off the desk, stands, and tucks his shirt back into his pants. The Sheriff gives him a brief, judgemental glance and offhandedly tosses your arrest warrant on the desk. The Deputy stares at it for a moment and stuffs it into his pocket. With you behind bars, the Sheriff turns towards the door and instructs the Deputy.[paragraph break]'Picked up these two down near the train. A federal marshall will be comin[apostrophe] for them at eight o'clock tomorrow morning. There's goin[apostrophe] to be a hangin[apostrophe]!'.[paragraph break]The deputy nods, this torrent of information overwhelming his limited comprehension.[paragraph break]The Sheriff sarcastically adds, 'Please take care of our... guests. I got some business in the next county to take care of, so you is in charge.'[paragraph break]After a moment, the Deputy brightens, as he realizes he's the acting Sheriff. The Sheriff crushes his mood immediately, though, by concluding 'Jimbo, don't screw up,' as he heads out the door.[paragraph break]".


Chapter Office

The Office is a room.  "An efficiently trimmed office, ready for all manner of bureaucracy."  The office contains a desk.  The desk is a supporter and fixed in place.  On the desk is a pen.


Chapter Jail Cell

The jail door is a door.  Jail door is west of the Office and east of the Jail Cell.  The door is locked.

The Jail Cell is west of the jail door.   The jail cell is connected with office.   "[if unvisited]Ah, the clink. Your home-away-from-home, just like you left it a year ago. [paragraph break][end if]The cell sports brick walls on three sides (which have been recently repainted), and the fourth wall is solid iron bars about two and a half inches apart. Through the bars you can see the rest of the Sheriff's office, full of all sorts of interesting things.  A tiny barred window is buried in a brick wall about two feet over your head."

The jail cell contains the player.  The jail cell contains a stool.  The stool is a supporter and portable.

The Street is a room.  "A dusty road with a few buildings lining it."

[Taken from example 20]
The cell window is a door.  The cell window is west of the jail cell and east of the Street.

Instead of searching the window: 
    say "Through the window, you make out [the other side of the window]."


Chapter Menus

Understand "help" or "about" or "info" as asking for help.

Asking for help is an action out of world.

Carry out asking for help:
	change the current menu to the Table of Options;
	carry out the displaying activity;
	clear the screen;
	try looking.

Table of Options
title				subtable			description	toggle
"What the Sam Hill is this?"	--	"Ah don[apostrophe]t set much by book learnin[apostrophe] and I don[apostrophe]t reckon that explainin[apostrophe]s half as good as doin[apostrophe], but let me give yer the skinny on this here piece of fictional work, so as a body can understand what's goin[apostrophe] on hereabouts. This is what them high-falutin[apostrophe] dudes out East call a [quotation mark]interactive fiction[quotation mark], but me and the boys, we like to call it an [quotation mark]adventure game[quotation mark].[paragraph break]In this story, you is the main character, and you get to sez what yer doin[apostrophe]. See, on account of you bein[apostrophe] in charge, it ain[apostrophe]t boring like reading a book or goin[apostrophe] to church. Ever time you see one of these arrow head things [quotation mark]>[quotation mark]  you can write what you[apostrophe]d like to do. Don't use no big sentences or nothin' cause that'll just mix everything up real bad. But you can say things like [quotation mark]drink whiskey[quotation mark], [quotation mark]smoke cigar[quotation mark] and [quotation mark]play cards[quotation mark] -- you know, all the kinds a thing a body might hanker to do. Then, you see what happens. Ah reckon yer goal is to not end up wearing a hemp necktie."		--
"How do it work?"	--	"Ever turn, you type in yer command, and then something happens. That's how it works. Time is ticking along, alright, but not while yer cogitating about what to type. Take as long as you want.[paragraph break]The game is real simple like, so iff'n it don[apostrophe]t understand what you said, try saying it different. Don[apostrophe]t use no punctuation neither. That[apostrophe]s just asking for a heap of trouble. The one exception is iff[apostrophe]n you is asking or telling somebody something. Fer that, you can say their name followed by a comma (that[apostrophe]s looks like a bullet hole, but then it[apostrophe]s got some little bit that dangles down), and then yer command. It ain[apostrophe]t no good to [apostrophe]jes say that, so ah[apostrophe]m gonna give you an example: You could say [quotation mark][fixed letter spacing]Sheriff, give me the gun[variable letter spacing][quotation mark]. You could say that, mind, but he don[apostrophe]t got to."		--
"Gettin[apostrophe] stuff done"		--	"If you ain[apostrophe]t a greenhorn, chances are you already know a bunch of the ever day commands used in this game. If not, take a gander:[paragraph break]
[fixed letter spacing]   look         - [variable letter spacing]look around[line break]
[fixed letter spacing]   examine      - [variable letter spacing]look at something real hard[line break]
[fixed letter spacing]   go           - [variable letter spacing]followed by a direction[line break]
[fixed letter spacing]   take/drop    - [variable letter spacing]pick up or drop something[variable letter spacing]"	--
"Stuff you do a lot"		--	"We made it easy to do some stuff without typing a whole lot. You can use the letter in [fixed letter spacing]<brackets>[variable letter spacing] instead having to spell out the whole word, which is good on account some folk don[apostrophe]t spell so good:[paragraph break]
[fixed letter spacing]   <i>nventory      - [variable letter spacing]what are you carrying?[line break]
[fixed letter spacing]   <l>ook           - [variable letter spacing]look around[line break]
[fixed letter spacing]   e<x>amine        - [variable letter spacing]look real hard at somethingl[line break]
[fixed letter spacing]   <z>zzzz          - [variable letter spacing]cool yer heels[line break]
[fixed letter spacing]   a<g>ain          - [variable letter spacing]do what you done, again[line break]
[fixed letter spacing]   <o>ops           - [variable letter spacing]iff[apostrophe]n you make a spellin[apostrophe] mistake[variable letter spacing]"		--
"Talkin' with folk"		--		"Here are a ways to talk to people:[paragraph break]
[fixed letter spacing]   SAY  [variable letter spacing]something[line break]
[fixed letter spacing]   TELL [variable letter spacing]someone[fixed letter spacing] ABOUT [variable letter spacing]some topic[line break]
[fixed letter spacing]   ASK  [variable letter spacing]someone[fixed letter spacing] ABOUT [variable letter spacing]some topic[line break]
[fixed letter spacing]   SHOW [variable letter spacing]someone something[line break]
[fixed letter spacing]   SHOW [variable letter spacing]something[fixed letter spacing] TO [variable letter spacing]someone[paragraph break]."		--
"Readin[apostrophe] & Writin[apostrophe]"		--	"Iff[apostrophe]n you got room in yer saddle bag, you can save games and then reload them later. You can make multiple save files. You can also restart a game (but it[apostrophe]ll beef your current game). If yer desperate, you turn tail and cut.[paragraph break]
[fixed letter spacing]   SAVE      - [variable letter spacing]save the game at the current point[line break]
[fixed letter spacing]   RESTORE   - [variable letter spacing]load and then continue the game[line break]
[fixed letter spacing]   RESTART   - [variable letter spacing]start over again[line break]
[fixed letter spacing]   QUIT      - [variable letter spacing]a last resort, iff[apostrophe]n yer yeller!"		--
"Dang. Ah is in a fix."	--		"Here are some rules of thumb:[paragraph break]* Try everything you can think of. If that don[apostrophe]t work, try something else.[line break]* Reread what you read before [apostrophe]jes in case you missed something.[line break]* We don[apostrophe]t reckon you can get stuck. That is to say, you might get hanged, but the game shouldn[apostrophe]t.[line break]* If you are really really stuck deputize yerself a partner.[line break]* If you are really and truly stuck, the upstanding authors of this here work done wrote a walk-through what for showing you how it can be solved. Iff[apostrophe]n you ain[apostrophe]t man enuf to solve it yerself, that is."		--
"Critters"	--		"We don[apostrophe]t take kindly to the presence of critters what we ain't wrote ourselves, but sometimes they show up anyhow. Iff'n you run across one, we'd be a might obliged if you[apostrophe]d report it to us. Y'all can file a bug report at the open sores web site fer the project, what is: http://code.google.com/p/hoosegow/issue, or you can send us a telegram at hoosegow@red-bean.com. When we hear from you, we[apostrophe]ll round up our posse and see that justice is served."	--
"Thanks"			Table of Thanks		--		--
"License"	--	"We done released this here game under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States of America license. On account of that, you are free as a parakeet in a tornado to copy, distribute, display, and use this work and to make derivative works under the following conditions:[paragraph break]Attribution. You must attribute such works mentioning our names [story author] and the title of this work [quotation mark][story title][quotation mark]. We reckon that this can appear in the title, with the Release Information, or in the acknowledgements section of a menu system (iff'n you got one). Attribution don't suggest ourn endorsement of them derivative works or their authors.[paragraph break]Noncommercial. You may not use this work for commercial purposes. We don't set much store by commercial purposes, nohow.[paragraph break]Share Alike. If you alter, transform, or build upon this here work, you may distribute the resulting work only under the same or similar license to this one.[paragraph break]Iff[apostrophe]n you would like a copy of the Inform7 source for this game, it is available via the repository at http://code.google.com/p/hoosegow/source/checkout."		--	

Table of Thanks
title	subtable		description	toggle
"The Posse"	--	"We got us a powerful fine posse, and ah reckon it would do some fine justice to tip our hats to them that waded through the cow patties to pretty up this here game. They is: list_of_names."		--
"Legends of the West"		--	"We aint the first people to explore this territory, and it seems right be me to mention some of the pioneers that mapped out this land when it was savage. Names like Graham Nelson and Emily Short, who done wrote the IF language Inform 7, and other members of their posse like David Kinder who wrote one of the extensions that we use."	--


Chapter Default Messages

To say apologies:
	say "Mah apologies".

To say fixedObject:
	say "It ain't goin[apostrophe] nowhere."

To say notAbleTo:
	say "Nohow -- you ain[apostrophe]t able to."

To say notNeighborly:
	say "That warn[apostrophe]t be neighbor-like."

To say youAint:
	say "You ain[apostrophe]t ".

To say aintNo:
	say "ain[apostrophe]t no ".

To say aintNothing:
	say "ain[apostrophe]t nothin[apostrophe] ".

Table of custom library messages (continued)
Message Id				Message Text
LibMsg <confirm Quit>			"Fer real? Give up now [apostrophe]jes when things is gettin[apostrophe] hoppin?"
LibMsg <you have died>			"You done cashed it in."
LibMsg <you have won>			"You has won."
LibMsg <player self description>		"yerself"
LibMsg <unimportant object>		"That/they ain't summit what you gotta pay heed to 'round these parts."
LibMsg <empty line>			"Sorry cit'zen, I didn't hear you rightly. What?"  
LibMsg <confirm Quit>			"I didn't mark you fer a quitter. You sure?"  
LibMsg <yes or no prompt>		"Ain't you got no manners? Answer yes or no."  
LibMsg <restrict answer>			"Enough of yer blatheration. Give one of them answers from above."  
LibMsg <page prompt>			"[bracket]Press SPACE iffn' you wanna go on a pace.[close bracket]"  
LibMsg <undo succeeded>		"[bracket]You done backtracked[dot][close bracket]"  
LibMsg <undo failed>			"[apostrophe]Undo[apostrophe] failed real miserable like. [bracket]Not all interpreters got the cahones to get undid[dot][close bracket]"
LibMsg <undo not provided>		"[bracket]Your 'terp don't provide [apostrophe]undo[apostrophe]. [apologies].[ExMark][close bracket]"  
LibMsg <cannot undo nothing>		"[bracket]You can't [apostrophe]undo[apostrophe] what ain't been did none[ExMark][close bracket]"   
LibMsg <oops failed>			"That were so balled up, ain't nothin' gonna fix it."
LibMsg <oops no arguments>		"[aintNothing]." 
LibMsg <cannot do again>		"You can't hardly repeat that."   
LibMsg <command not understood>	"Is you talkin' plain Inglish? Ah ain't follering what yer saying. Prehaps it's yer accent."  
LibMsg <command partly understood>	"I only twigged yer meanin' as far as hankerin' to "    
LibMsg <command incomplete>		"You seem to have said too little! Normally, ah like that in a persun."   
LibMsg <cannot begin at comma>		"Commas ain't fer beginning sentences with. Land sakes, ain't you got no grammar?"  
LibMsg <unknown object>		"[youAint]able to see any sech thing."  
LibMsg <object not held>			"[youAint]holdin' that!"  
LibMsg <unknown verb>			"That [aintNo]verb ah know."   
LibMsg <cannot exceed carrying capacity>	"Yer carrying too dang blasted many things already."    
LibMsg <cannot insert if this exceeds carrying capacity>		"There [aintNo]more room in [the main object]."  
LibMsg <cannot put if this exceeds carrying capacity>		"There [aintNo]more room on [the main object]."  
LibMsg <who disambiguation>		"That warn't clear. Who all do you mean, "  
LibMsg <which disambiguation>		"Which all do you mean, "  
LibMsg <whom disambiguation>		"Who all do you want to {command}?"  
LibMsg <what disambiguation>		"What in tarnation do you want to {command}?"  
LibMsg <pronoun not set>		"Ah don't rightly twig what '{pronoun}' refers to."  
LibMsg <person ignores command>	"[The main object] ain't having none of your balderdash."  
LibMsg <cannot talk to absent person>	"Yer cake hole is jabberin', but I can't rightly say to who you is talkin'."  
LibMsg <confirm Restart>			"You shure wanna turn tail and restart? "     
LibMsg <Inventory initial text>		"Yer haulin'"  
LibMsg <Inventory no possessions> 	"[youAint]haulin[apostrophe] nothing." 
LibMsg <entering darkness>		"It's darker than midnight in a coal mine!"
LibMsg <dark description>		"It's darker than the shine on your granddaddy's boots. You ain't able to see yer own self here."  
LibMsg <examine while dark>		"Ain't no seein' to be had on account of it's so dark here."  
LibMsg <report player taking>		"Fetched."  
LibMsg <cannot take other people>	"I don't reckon [the main object] would mech care fer that."  
LibMsg <cannot take something you are within>		"You[apostrophe]d have to get off/out of [the main object] first."  
LibMsg <cannot take something already taken>		"Sakes alive. You already done got that/those."    
LibMsg <cannot reach within closed containers>		"[The main object] ain't open."  
LibMsg <cannot take scenery>		"That/they ain't hardly what a body would aim to carry about."  
LibMsg <cannot take something fixed>	"That's/they're planted real good and not going anywhere, ah reckon."
LibMsg <report player removing>		"Snatched."  
LibMsg <cannot remove something not within>		"But it/they ain't there now."  
LibMsg <report player dropping>		"Ditched."  
LibMsg <cannot drop not holding>		"[youAint]got that/those."  
LibMsg <cannot give what you have not got>		"[youAint]holding [the main object]."
LibMsg <block giving>			"[The main object] don't seem interested."  
LibMsg <cannot show what you have not got>		"[youAint]holding [the main object]."  
LibMsg <cannot enter something not enterable>		"That/they ain't something you can enter/stand on/sit down on/lie down on."  
LibMsg <cannot exit when not within anything>		"[youAint]in anything at the moment."
LibMsg <cannot get off things>		"[youAint]on [the main object] at the moment."  
LibMsg <cannot go up through closed doors>		"[youAint]able to climb [the main object]."  
LibMsg <brief look mode>			"{Story name} is now 'brief' printing mode, what gives long descriptions of places you ain't visited before and short descriptions otherwise."  
LibMsg <superbrief look mode>		"{Story name} is now in its 'superbrief' mode, what gives short descriptions of locations (even if yer ain't been there before)."  
LibMsg <verbose look mode>		"{Story name} is now in its 'verbose' mode, which always gives long descriptions of locations (even if you  been there plenty)."  
LibMsg <cannot search unless container or supporter>	"You don't find nothin' t'all."  
LibMsg <cannot search closed opaque containers>		"[youAint] able to peek inside, seein' as how [the main object] is/are closed."  
LibMsg <nothing found on top of>	"There [aintNothing]on [the main object]."  
LibMsg <cannot open unless openable>	"That/They ain't something you can open."  
LibMsg <cannot switch on unless switchable>		"That/They ain't something you can switch."  
LibMsg <cannot take off something not worn>		"[youAint]wearing that/them."  
LibMsg <report player eating>		"You choke down [the main object]. Not bad."  
LibMsg <cannot eat unless edible>		"Any tom fool could see that/they ain't fer eatin."  
LibMsg <block drinking>			"There's [aintNothing]proper fit fer drinkin' here."  
LibMsg <report player touching self>	"If you reckon that'll help."  
LibMsg <report player touching other people>		"Keep yer filthy hands to yer lonesome!"  
LibMsg <block saying sorry>		"Oh, shove yer boot-lickin'."  
LibMsg <block swearing obscenely>	"Ain't no need to air yer lungs so. We keep a civil tongue in these parts. Mostly."  
LibMsg <block swearing mildly>		"Ain't it, though."  
LibMsg <block climbing>			"I don't think much is to be achieved by that."  
LibMsg <block jumping>			"You dance about like a niner soaked full of nose paint."
LibMsg <block swinging>			"There [aintNothing]sensible to swing here."  
LibMsg <block waving hands>		"You send a wave."  
LibMsg <block attacking>			"You reckon violence usually is the answer, but maybe not just now."  
LibMsg <block rubbing>			"That don't seem to serve no purpose."  
LibMsg <report player waving things>	"You look stranger than a preacher in a vaulting house waving [the main object]."  
LibMsg <cannot wave something not held>		"Nope. [youAint]holding that/those."  
LibMsg <squeezing people>		"Keep yer paws to yerself."  
LibMsg <report player squeezing>		"That don't get nothin' done."  
LibMsg <not pushed in a direction>	"That [aintNo]direction."  
LibMsg <pushed in illegal direction>  	"Not that way you can't."  
LibMsg <cannot push something fixed in place>		"[fixedObject]"  
LibMsg <cannot pull something fixed in place>		"[fixedObject]"  
LibMsg <cannot turn something fixed in place>		"[fixedObject]"  
LibMsg <cannot push scenery>		"[notAbleTo]"  
LibMsg <cannot pull scenery>		"[notAbleTo]"  
LibMsg <cannot turn scenery>		"[notAbleTo]"  
LibMsg <cannot push people>		"[notNeighborly]"  
LibMsg <cannot pull people>		"[notNeighborly]"  
LibMsg <cannot turn people>		"[notNeighborly]"  
LibMsg <block answering>		"There [aintNo]reply."  
LibMsg <block asking>			"There [aintNo]reply."  
LibMsg <block singing>			"You got a right fine voice. [apostrophe]Jes not fer singin[apostrophe]."  
LibMsg <block thinking>			"What a plumb good ideer."  
LibMsg <block sleeping>			"[youAint]feeling especially drowsy."  
LibMsg <block waking up>		"The dreadful truth is, this [aintNo]dream."  

Chapter Every Turn

Every turn:
	[avoid penalizing time for non-actions, a nuance]
	if the current action is taking inventory or the current action is looking:
		change the time of day to 1 minute before the time of day.
	[###TODO Add other every-turn items]
		
Book 2  Scenes

Section The Beginning 

Section The Middle

Section The End

Rule for printing the player's obituary:
	do nothing.
	[###TODO add obituary]
			
Rule for amusing a victorious player:
	do nothing.
	[###TODO add amusement]
	