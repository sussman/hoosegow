"Hoosegow" by Ben Collins-Sussman and Jack Welch

The story headline is "An Interactive Fiction".
The release number is 1.
The story genre is "Wild West Fiction".
The story creation year is 2009.
The story description is "Muddy's plan done landed you and yer par'ner Muddy in the hoosegow. Now yer fixin' to rectificate the matter before the Marshall introduces you to the business end of a hangin' rope at dawn."

Include Menus by Emily Short.
Include Plurality by Emily Short.
Include Default Messages by David Fisher.

Use full-length room descriptions, american dialect and the serial comma.

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
###TOCONSISDER: Since "use" is so general, if beta-esting shows that players are using "use" constructions frequently, we can re-route them appropriately here.

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

When play begins:
	do nothing.

After printing the banner text:
	say "Type [quotation mark]help[quotation mark] for instructions, credits, and license or just blaze on impetuously.".

Chapter Jail Cell

The cell is a room.

Chapter Office

Chapter Menus

Understand "help" or "about" or "info" as asking for help.

Asking for help is an action out of world.

Carry out asking for help:
	change the current menu to the Table of Options;
	carry out the displaying activity;
	clear the screen;
	try looking.

Table of Options
title	subtable	description	toggle
"What is this?"		Table of Adventures	""	--
"How does this work?"	Table of How		--		--
"Help! I'm stuck!"	Table of Stuck	--	--
"Entomology"		Table of Bugs	--	--
"Acknowledgements"	Table of Acknowledgements	--	--
"License"		Table of License	--		--

Table of Adventures
title	subtable	description	toggle
"Adventure Games"	--	"It is hard to imagine a time when interactive fiction was not a daily part of people's lives, but just a few centuries ago, when your great-grandparents were still using digital computers, the first adventure games were written as a form of entertainment. These early games lacked experiential displays and neuroendocrine interfaces, but they still managed to convey a story in which the player could take an active role and change the course of events. Up until then, stories had only been available as static archives encoded with pigment on biostarch films. Even in the first generation of games, around the turn of the 21st Century, the computer presented a situation to players, and players decided what they would do next. Given the technology of the time, instructions were often very simple, just a verb or maybe a verb and a noun.  Players would say their action (or, in an earlier era, enter it using a piano-like keyboard), such as [quotation mark]look[quotation mark], or [quotation mark]get key[quotation mark] and the computer would react to that action, further advancing the plot. Today, children are exposed to interactive fiction from their first days in creche, and interactive fiction is the cornerstone of the Martian economy."	--
"Learn More"		--		"There are a number of good online resources regarding interactive fiction; presumably you can find these on your own. We can recommend two well-written summaries that date back more than three centuries. The Inform Design Manual by Sir Graham Nelson contains a few chapters on the history of interactive fiction, as well as some observations and recommendations for both game designers and players. Twisty Little Passages by Nick Montfort, an academician at MIT (Earth campus), is a more literary treatment of the same subject. First editions of both works are on display in the special collections section of the University of Cydonia.[paragraph break]Regarding the Inform 7 language itself, the integrated development environment is provided with staggeringly detailed documentation. In addition, Ron Newcomb's [quotation mark]Inform 7 for Programmers[quotation mark] (which can be found in several online repositories) provides a very concise and accessible review of the language and is an excellent reference document."	--

Table of How
title	subtable	description	toggle
"How To Play"	--	"Most adventure games are turn-based, rather than timed. Take as long as you want to think about your actions. The game gives you some information, such as a description of the room that you are in and what objects it contains, and then it is up to you to say what you are doing. You can enter your [quotation mark]move[quotation mark] by typing it at the command prompt, which looks like a [quotation mark]greater than[quotation mark] sign: >[paragraph break]For example, let's say you are in the kitchen, and there is an avocado on the counter. To get more information about the avocado, you could say [quotation mark][fixed letter spacing]examine avocado[variable letter spacing][quotation mark], and learn what it looks like.[paragraph break]Not every command that you can think of will work, so you might need to try some rephrasing. In general, you should not use punctuation. The only exception is when you want to direct a question or command to someone or something else. In such cases, you can say the name of the person or thing to whom you are addressing your remark, followed by a command and then the question or command. For example, you could say:  [quotation mark][fixed letter spacing]Eugene, give me the axe[variable letter spacing][quotation mark]."		--
"Commands"	--		"If you have played other adventure games, chances are that you already know most of the [quotation mark]utility[quotation mark] commands used in this game. If not, however, you should start on an equal footing with more experienced players, so here they are:[paragraph break]
[fixed letter spacing]   look         - [variable letter spacing]look at your surroundings[line break]
[fixed letter spacing]   examine      - [variable letter spacing]look at something in detail[line break]
[fixed letter spacing]   go           - [variable letter spacing]followed by destination/direction[line break]
[fixed letter spacing]   take/drop    - [variable letter spacing]pick up or drop an item[variable letter spacing][paragraph break]You may also find it helpful to [fixed letter spacing]Remember[variable letter spacing] various topics, which will give you some background information about selected subjects."	--
"Common Actions"	--	"Since you are likely to do some actions frequently, there are some shortcuts. You can use the letter in [fixed letter spacing]<brackets>[variable letter spacing] instead of typing out the whole word for the following:[paragraph break]
[fixed letter spacing]   <i>nventory      - [variable letter spacing]what are you carrying?[line break]
[fixed letter spacing]   <l>ook           - [variable letter spacing]describe the area around you[line break]
[fixed letter spacing]   e<x>amine        - [variable letter spacing]examine a specific item in detail[line break]
[fixed letter spacing]   <z>zzzz          - [variable letter spacing]don't do anything; just wait for a bit[line break]
[fixed letter spacing]   a<g>ain          - [variable letter spacing]repeat your last action[line break]
[fixed letter spacing]   <o>ops           - [variable letter spacing]type this to correct spelling mistakes[variable letter spacing]"	--
"Conversation"	--	"A couple of verbs are helpful for conversation; these
  include:[paragraph break]
[fixed letter spacing]   SAY  [variable letter spacing]something[line break]
[fixed letter spacing]   TELL [variable letter spacing]someone[fixed letter spacing] ABOUT [variable letter spacing]some topic[line break]
[fixed letter spacing]   ASK  [variable letter spacing]someone[fixed letter spacing] ABOUT [variable letter spacing]some topic[line break]
[fixed letter spacing]   SHOW [variable letter spacing]someone something[line break]
[fixed letter spacing]   SHOW [variable letter spacing]something[fixed letter spacing] TO [variable letter spacing]someone[paragraph break]With all of these commands, you do not need to, indeed you should not, use quotation marks."		--
"Saving and Restoring"	--	"Assuming there is free space on your machine, you can save games and then reload them later. You can make multiple save files. You can also restart a game (wiping out the current game). In an act of desperation, you can quit.[paragraph break]
[fixed letter spacing]   SAVE      - [variable letter spacing]save the game at the current point[line break]
[fixed letter spacing]   RESTORE   - [variable letter spacing]load and then continue the game[line break]
[fixed letter spacing]   RESTART   - [variable letter spacing]start over again[line break]
[fixed letter spacing]   QUIT      - [variable letter spacing]a last resort!"	--

Table of Stuck
title	subtable	description	toggle
"General Pointers"		--		"Here are some practical pointers for this game:[paragraph break]* Try everything you can think of. If it doesn't work, try rephrasing.[line break]* Reread text to make sure you didn't miss anything.[line break]* Leave no stone unturned; conversely, don't obsess.[line break]* This game follows many, but not all, of the conventions of computer adventure games. If something makes sense to you, try it even though it [quotation mark]shouldn't work[quotation mark].[line break]* As far as we know, it is not possible to get trapped in an unwinnable situation. By winning, we mean you can complete the game. Achieving good outcomes is another matter.[line break]* If you are really stuck, put the game aside and let it percolate through your subconscious for a while. Come back fresh.[line break]* If you are really really stuck, con someone else into playing the game and watch them. You might get some ideas.[line break]* If you are really and truly stuck, you could search the Internet and see if someone has already posted a similar question/answer. Since you could be playing this years after it was released, maybe we've even created a FAQ about it. If you do post a question or answer, preface your message with a spoiler warning and skip down a bunch of lines before writing anything too revealing.[line break]* Failing all else, you can email us at: rover@red-bean.com and tell us in detail how our game has defeated your best efforts. We may be able to give you a hint that wouldn't spoil the rest of the game for you.[line break]* IFComp 2009 special bonus: As part of IFComp, we have supplied a walkthrough document that shows one possible way of working your way through the game. It doesn't hit all the fun stuff, but it will get you from start to finish."		--
"Spelling"	--		"This game employs the standard Martian dialect and Roman characters rather than the ideographic characters more common on Earth."	--

Table of Bugs
title	subtable	description	toggle
"A Matter of Interpretation"		--	"This game is designed to run on a virtual machine, some flavor of Glulx interpreter. You are, no doubt, using some implementation of the Glulx interpreter written for your specific hardware -- it could be your entertainment corner, hologoggles, dishwasher, cortical implant -- whatever.  Even if you are using some old silicon-semiconductor clunker from the International days, it should still work. We've made every effort to test it on a number of platforms, but these tests are far from comprehensive. So far as we know, there are no interpreter-specific issues.  However, if the 
  game doesn't run right for you, you could try another interpreter and see if that fixes the situation.[paragraph break]Whether you think the problem is the interpreter or the game itself, we'd appreciate it if you'd let us know. (see [quotation mark]Zapping Bugs[quotation mark])"	--
"Zapping Bugs"	--		"Help us splotch bugs! In this case, we're not referring to the plastic-eating cockroaches responsible for so many dome failures in the last few years, but to errors in the game itself. This game was, in part, written by humans, so eras are all but certainly present. The more freedom you have in your actions, the more likely it is that you'll expose some unknown weakness in the game. What should you do if you elicit such an error?  First, you can gloat for a reasonable amount of time (this is a judgement call) about how very slick you are to have uncovered the hitherto unknown fault. Then, you can be a good citizen and us know about it so we can fix it in the next update, and spare the next several billion people the same painful experience. There's no monetary reward for finding errors, but your name will appear on the next version of the ultra-prestigious bug finders list. Now [italic type]there's[roman type] something you can show to your grandchildren with pride. Report bugs to:[paragraph break]rover@red-bean.com[paragraph break][quotation mark]Splotches welcome.[quotation mark]"		--

Table of Acknowledgements
title	subtable	description	toggle
"Beta Testers"	--	"Who are the fearless, dedicated individuals who put their very lives on the line to test this game?[paragraph break]* David Anderson, Utopia Planetia[line break]* Beth Vanichtheeranont, Lake Eridania[line break]* John Lodder, Deimos Colony[line break]* Frances Collins-Sussman, Hyderabad-3[line break]* Chris Exner, Tranquility Base[line break]* Kathyrnne Wolf, People's Republic of Portland[line break]* Peter Olson, Asteroid B-318-C[line break]* Jeff Bailey, Big G Ltd.[line break]* Andrea Phillips, Plungers Intl. #454[paragraph break]Special thanks also go to Margaret Frey (MARSpace Graphic Design Division) and Rochelle Lodder (Luna Kibbutz Copyeditor's Guild) for their inimitable refinements.[paragraph break]Note: Any omissions, errors, or outright offensive bits of the game that made it through beta-testing are not the fault of the beta-testers, nor, we should point out of the authors, who would be entirely ready to take the blame were it their fault. The truth is that any fault whatsoever lies with Richard Milhous Nixon, the 37th (depending on the method of counting) President of the United States of America. We will not be held accountable for his poor spelling, loose grammar, and penchant for elaborate data structures named after the surprisingly numerous flavors of goat cheeses."	--
"The Ultra-Prestigious Bug Finder List"	--	"So far, no one aside from beta testers has reported a bug... you could be the first..."	--
"Giant Shoulders"	--	"This game was written in a few months thanks to the excellent tools available to the interactive fiction community. It was written in the Inform 7 language which has a proud heritage traceable back to the first games of this genre, but which is overwhelming attributable to its creator, Graham Nelson.[paragraph break]We gleefully employed a number of modules written by Emily Short, also a major contributor to the Inform 7 language itself. Specifically, this project incorporates her Glulx Text Effects, Basic Screen Effects, Menus, and Case Management Modules. Doubtless, we also extensively picked some tasty bits out of the Inform 7 documentation and examples, written by both Graham and Emily.  Big thanks to Jon Ingold for his Flexible Windows extensions as well.[paragraph break]This game is written for the Glulx interpreter because, frankly, it wouldn't fit in anything else. While we appreciate efficient coding and conciseness where possible, having Glulx available was very liberating. We owe Andrew Plotkin thanks for developing the Glulx virtual machine, as well as the Glk library which makes the game playable on so many platforms."		--
"Consultants"	--		"During writing, on several occasions we asked the community for help and advice, either when we were stumped, or when we wanted to get some ideas before starting down a potentially blind alley.[paragraph break]In particular, we would like to thank Andrew Plotkin and Rob Newcomb for their assistance in getting the status line display to work correctly."	--
"Animals"		--		"No animals, not even cybernetic ones, were harmed in the creation of this work."	--

Table of License
title	subtable	description	toggle
"Creative Commons License"	--	"This game is released under the Creative Commons Attribution-Noncommercial-Share Alike 3.0 United States license. As a consequence, you are free to copy, distribute, display, and use this work and to make derivative works under the following conditions:[paragraph break]Attribution. You must attribute such works mentioning our names [story author] and the title of this work [quotation mark][story title][quotation mark]. This can appear in the title, with the Release Information, or in the acknowledgements section of a menu system. Attribution does not suggest my endorsement of derivative works or their authors.[paragraph break]Noncommercial. You may not use this work for commercial purposes.[paragraph break]Share Alike. If you alter, transform, or build upon this work, you may distribute the resulting work only under the same or similar license to this one.[paragraph break]If you would like a copy of the Inform7 source for this game, please let us know by email: rover@red-bean.com"	--

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
	