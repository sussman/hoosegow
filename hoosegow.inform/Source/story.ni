"Hoosegow" by Ben Collins-Sussman and Jack Welch

The story headline is "An Interactive Fiction".
The release number is 1.
The story genre is "Wild West Fiction".
The story creation year is 2009.
The story description is "Muddy's plan done landed you and yer par'ner Muddy in the hoosegow. Now yer fixin' to rectificate the matter before the Marshall introduces you to the business end of a hangin' rope at dawn."

Include Menus by Emily Short.

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
	