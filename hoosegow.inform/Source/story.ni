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

Table of custom library messages (continued)
Message Id				Message Text
LibMsg <confirm Quit>			"Fer real? Give up now [apostrophe]jes when things is gettin[apostrophe] hoppin?"
LibMsg <you have died>			"You done got yerself killed."
LibMsg <you have won>			"You has won."
LibMsg <player self description>		"yerself"
LibMsg <unimportant object>		"That/they ain't summit what you gotta pay heed to 'round these parts."
LibMsg <empty line>			"Sorry partner, I didn't hear you rightly. What?"  
LibMsg <confirm Quit>			"I didn't mark you fer a quitter. You sure?"  
LibMsg <yes or no prompt>		"Ain't you got no manners? Answer yes or no."  
LibMsg <restrict answer>			"Enough of yer lip. Give one of them answers from above."  
LibMsg <page prompt>			"[bracket]Press SPACE iffn' you wanna go on some.[close bracket]"  
LibMsg <menu prompt>			"Type a number from 1 to N, 0 to redisplay or press ENTER."
LibMsg <undo succeeded>		"[bracket]Previous turn undone[dot][close bracket]"  
LibMsg <undo failed>			"[apostrophe]Undo[apostrophe] failed. [bracket]Not all interpreters provide it[dot][close bracket]"
LibMsg <undo not provided>		"[bracket]Your interpreter does not provide [apostrophe]undo[apostrophe]. Sorry[ExMark][close bracket]"  
LibMsg <cannot undo nothing>		"[bracket]You can't [apostrophe]undo[apostrophe] what hasn't been done[ExMark][close bracket]" 
LibMsg <cannot undo twice in a row>	"[bracket]Can't [apostrophe]undo[apostrophe] twice in succession. Sorry[ExMark][close bracket]"  
LibMsg <undo forbidden>			"The use of UNDO is forbidden in this game."  
LibMsg <oops failed>			"Sorry, that can't be corrected."  
LibMsg <oops too many arguments>	"[apostrophe]Oops[apostrophe] can only correct a single word."  
LibMsg <oops no arguments>		"Think nothing of it." 
LibMsg <cannot do again>		"You can hardly repeat that."  
LibMsg <again usage>			"To repeat a command like [apostrophe]frog, jump[apostrophe], just say [apostrophe]again[apostrophe], not [apostrophe]frog, again[apostrophe]."  
LibMsg <command not understood>	"I didn't understand that sentence."  
LibMsg <command partly understood>	"I only understood you as far as wanting to "  
LibMsg <command badly ended>		"I didn't understand the way that finished."  
LibMsg <command incomplete>		"You seem to have said too little!"  
LibMsg <command cut short>		"(Since something dramatic has happened, your list of commands has been cut short.)"  
LibMsg <number not understood>		"I didn't understand that number."  
LibMsg <cannot begin at comma>		"You can't begin with a comma."  
LibMsg <extra words before comma>	"To talk to someone, try 'someone, hello' or some such."  
LibMsg <unknown object>		"You can't see any such thing."  
LibMsg <object not held>			"You aren't holding that!"  
LibMsg <unknown verb>			"That's not a verb I recognize."  
LibMsg <verb cannot have inanimate object>		"You can only do that to something animate."  
LibMsg <noun needed>			"You must supply a noun."  
LibMsg <noun not needed>		"You may not supply a noun."  
LibMsg <object needed>			"You must name an object."  
LibMsg <object not needed>		"You may not name an object."  
LibMsg <second object needed>		"You must name a second object."  
LibMsg <second object not needed>	"You may not name a second object."  
LibMsg <second noun needed>		"You must supply a second noun."  
LibMsg <second noun not needed>	"You may not supply a second noun."  
LibMsg <something more substantial needed>		"You must name something more substantial."  
LibMsg <verb cannot have multiple objects>		"You can't use multiple objects with that verb."  
LibMsg <too many multiple objects>	"You can only use multiple objects once on a line."  
LibMsg <not that many available>		"None of those are/Only N of those are available."  
LibMsg <no objects available>		"There are none at all available!"  
LibMsg <zero multiple objects>		"Nothing to do!"  
LibMsg <first N objects>			"(considering the first sixteen objects only)"  
LibMsg <excepted object not included anyway>		"You excepted something not included anyway!"  
LibMsg <report implicit take>		"(first taking [the main object])"  
LibMsg <implicitly pass outwards through other barriers>	"(getting off/out of [the main object])"  
LibMsg <implicitly pass inwards through other barriers>	"(entering/getting onto/into [the main object])"  
LibMsg <cannot drop clothes being worn>	"(first taking [the main object] off)"  
LibMsg <cannot insert clothes being worn>	"(first taking it/them off)"  
LibMsg <cannot put clothes being worn>	"(first taking it/them off)"  
LibMsg <cannot exceed carrying capacity>	"You're carrying too many things already."  
LibMsg <use holdall to avoid exceeding carrying capacity>		"(putting [the main object] into {the player's holdall} to make room)"  
LibMsg <cannot insert if this exceeds carrying capacity>		"There is no more room in [the main object]."  
LibMsg <cannot put if this exceeds carrying capacity>		"There is no more room on [the main object]."  
LibMsg <who disambiguation>		"Who do you mean, "  
LibMsg <which disambiguation>		"Which do you mean, "  
LibMsg <whom disambiguation>		"Whom do you want to {command}?"  
LibMsg <what disambiguation>		"What do you want to {command}?"  
LibMsg <single object disambiguation>	"Sorry, you can only have one item here. Which exactly?"  
LibMsg <pronoun not set>		"I'm not sure what '{pronoun}' refers to."  
LibMsg <pronoun absent>		"You can't see '{pronoun}' ([the main object]) at the moment."  
LibMsg <Pronouns initial text>		"At the moment, "  
LibMsg <Pronouns -means- text>		"means"  
LibMsg <Pronouns -unset- text>		"is unset"  
LibMsg <no pronouns known>		"no pronouns are known to the game."  
LibMsg <person ignores command>	"[The main object] has better things to do."  
LibMsg <cannot talk to absent person>	"You seem to want to talk to someone, but I can't see whom."  
LibMsg <cannot talk to inanimate object>	"You can't talk to [the main object]."  
LibMsg <npc unable to do that>		"[The person asked] is unable to do that."  
LibMsg <confirm Restart>			"Are you sure you want to restart? "  
LibMsg <Restart failed>			"Failed."  
LibMsg <Restore failed>			"Restore failed."  
LibMsg <Restore succeeded>		"Ok."  
LibMsg <Save failed>			"Save failed."  
LibMsg <Save succeeded>		"Ok."  
LibMsg <Verify succeeded>		"The game file has verified as intact."  
LibMsg <Verify failed>			"The game file did not verify as intact, and may be corrupt."  
LibMsg <transcript already on>		"Transcripting is already on."  
LibMsg <transcript already off>		"Transcripting is already off."  
LibMsg <start of transcript>		"Start of a transcript of"  
LibMsg <end of transcript>		"End of transcript."  
LibMsg <transcript failed>			"Attempt to begin transcript failed."  
LibMsg <end transcript failed>		"Attempt to end transcript failed."  
LibMsg <Score command>		"In that game you scored/You have so far scored [the score] out of a possible [maximum score] in [turn count] turn[s]"  
LibMsg <score changed>			"Your score has just gone up/down by N points"  
LibMsg <score notification turned on>	"Score notification on."  
LibMsg <score notification turned off>	"Score notification off."  
LibMsg <report npc taking inventory>	"[The person asked] looks through his possessions."  
LibMsg <Inventory initial text>		"You are carrying"  
LibMsg <Inventory no possessions> 	"You are carrying nothing." 
LibMsg <entering darkness>		"It is now pitch dark in here!"  
LibMsg <dark description>		"It is pitch dark, and you can't see a thing."  
LibMsg <examine while dark>		"Darkness, noun. An absence of light to see by."  
LibMsg <search while dark>		"But it's dark."  
LibMsg <look under while dark> 		"But it's dark."  
LibMsg <dark room name>		"Darkness"  
LibMsg <report player taking>		"Taken."  
LibMsg <report npc taking>		"[The person asked] picks up [the main object]."  
LibMsg <cannot take yourself>		"You are always self-possessed."  
LibMsg <cannot take other people>	"I don't suppose [the main object] would care for that."  
LibMsg <cannot take something you are within>		"You[apostrophe]d have to get off/out of [the main object] first."  
LibMsg <cannot take something already taken>		"You already have that/those."  
LibMsg <cannot take possessions of others>		"That/those seem(s) to belong to [the main object]."  
LibMsg <cannot take component parts>	"That/those seem(s) to be a part of [the main object]."  
LibMsg <cannot take hidden parts>	"That/those isn't/aren't available."  
LibMsg <cannot reach within closed containers>		"[The main object] isn't open."  
LibMsg <cannot take scenery>		"That's/they're hardly portable."  
LibMsg <cannot take something fixed>	"That's/they're fixed in place."
LibMsg <cannot reach within other places>			"You can't reach into [the main object]."  
LibMsg <report player removing>		"Removed."  
LibMsg <report npc removing>		"[The person asked] removes [the main object] from [the second noun]."  
LibMsg <cannot remove from closed containers>		"It/They is/are unfortunately closed."  
LibMsg <cannot remove something not within>		"But it/they isn't/aren't there now."  
LibMsg <report player dropping>		"Dropped."  
LibMsg <report npc dropping>		"[The person asked] puts down [the main object]."  
LibMsg <cannot drop something already dropped>	"[The main object] is/are already here."  
LibMsg <cannot drop not holding>		"You haven't got that/those."  
LibMsg <report player inserting>		"Done."  
LibMsg <report npc inserting>		"[The person asked] puts [the main object] into [the second noun]."  
LibMsg <cannot insert something not held>		"You need to be holding [the main object] before you can put it/them into something else."
LibMsg <cannot insert into something not a container> 	"That/those can't contain things."
LibMsg <cannot insert into closed containers>		"[The main object] is/are closed."
LibMsg <need to take off before inserting>			"You'll need to take it/them off first."
LibMsg <cannot insert something into itself>		"You can't put something inside itself."
LibMsg <report player giving>		"You give [the main object] to [the second noun]."
LibMsg <cannot give what you have not got>		"You aren't holding [the main object]."
LibMsg <cannot give to yourself>		"You juggle [the main object] for a while, but don't achieve much."  
LibMsg <block giving>			"[The main object] doesn't/don't seem interested."  
LibMsg <unable to receive things>		"[The main object] isn't/aren't able to receive things."  
LibMsg <cannot show what you have not got>		"You aren't holding [the main object]."  
LibMsg <block showing>			"[The main object] is/are unimpressed."
LibMsg <report player entering>  		"You get onto/into [the main object]."  
LibMsg <report npc entering>		"[The person asked] gets onto/into [the main object]."  
LibMsg <cannot enter something already entered>		"But you're already on/in [the main object]."  
LibMsg <cannot enter something not enterable>		"That's/they're not something you can enter/stand on/sit down on/lie down on."  
LibMsg <cannot enter closed containers> 	"You can't get into the closed [main object]."  
LibMsg <cannot enter something carried>	"You can only get into something free-standing."  
LibMsg <report player exiting>		"You get off/out of [the main object]."  
LibMsg <report npc exiting>		"[The person asked] gets off/out of [the main object]."  
LibMsg <cannot exit when not within anything>		"But you aren't in anything at the moment."  
LibMsg <cannot exit closed containers>	"You can't get out of the closed [main object]."  
LibMsg <cannot get off things>		"But you aren't on [the main object] at the moment."  
LibMsg <cannot go that way>		"You can't go that way."  
LibMsg <cannot travel in something not a vehicle>		"You'll have to get off/out of [the main object] first."
LibMsg <cannot go through concealed doors>		"You can't go that way."  
LibMsg <cannot go up through closed doors>		"You are unable to climb [the main object]."  
LibMsg <cannot go down through closed doors>		"You are unable to descend by [the main object]."  
LibMsg <cannot go through closed doors>	"You can't, since [the main object] is/are in the way."  
LibMsg <nothing through door>		"You can't, since [the main object] leads nowhere."  
LibMsg <block vaguely going>  		"You'll have to say which compass direction to go in.[run paragraph on]"  
LibMsg <say npc goes>  			"[The person asked] goes (direction)"  
LibMsg <say npc arrives>  		"[The person asked] arrives from the (direction)"  
LibMsg <say npc arrives from unknown direction>  		"[The person asked] arrives"  
LibMsg <say npc arrives at>  		"[The person asked] arrives at [the main object] from the (direction)"  
LibMsg <say npc goes through>  		"[The person asked] goes through [the main object]"  
LibMsg <say npc arrives from>  		"[The person asked] arrives from the (direction)"  
LibMsg <say npc vehicle>  		"in/on [the main object]"  
LibMsg <say npc pushing in front with player>  		", pushing [the main object] in front, and you along too"  
LibMsg <say npc pushing in front>  	", pushing [the main object] in front"  
LibMsg <say npc pushing away>		", pushing [the main object] away"  
LibMsg <say npc pushing in>  		", pushing [the main object] in"  
LibMsg <say npc taking player along>	", taking you along"  
LibMsg <brief look mode>			"{Story name} is now in its normal 'brief' printing mode, which gives long descriptions of places never before visited and short descriptions otherwise."  
LibMsg <superbrief look mode>		"{Story name} is now in its 'superbrief' mode, which always gives short descriptions of locations (even if you haven't been there before)."  
LibMsg <verbose look mode>		"{Story name} is now in its 'verbose' mode, which always gives long descriptions of locations (even if you've been there before)."  
LibMsg <report npc looking>		"[The person asked] looks around."  
LibMsg <top line what on>		" (on [the main object])"  
LibMsg <top line what in>		" (in [the main object])"  
LibMsg <top line what as>		" (as {inform 6 short name of the player})"
LibMsg <report npc examining>		"[The person asked] looks closely at [the main object]."  
LibMsg <examine undescribed things>	"You see nothing special about [the main object]."  
LibMsg <examine direction>		"You see nothing unexpected in that direction."  
LibMsg <examine devices>		"[The main object] is/are currently switched on/off."  
LibMsg <report npc searching>		"[The person asked] searches [the main object]."  
LibMsg <cannot search unless container or supporter>	"You find nothing of interest."  
LibMsg <cannot search closed opaque containers>		"You can't see inside, since [the main object] is/are closed."  
LibMsg <nothing found within container>	"[The main object] is/are empty."  
LibMsg <nothing found on top of>	"There is nothing on [the main object]."  
LibMsg <report npc looking under>	"[The person asked] looks under [the main object]."  
LibMsg <look under>			"You find nothing of interest."  
LibMsg <report player opening>		"You open [the main object]."  
LibMsg <report npc opening>		"[The person asked] opens [the main object]./[The main object] opens."  
LibMsg <cannot open unless openable>	"That's/They're not something you can open."  
LibMsg <cannot open something locked>	"It/They seems to be locked."  
LibMsg <cannot open something already open>		"That's/They're already open."  
LibMsg <reveal any newly visible exterior initial text>		"You open [the main object], revealing "  
LibMsg <no newly visible exterior>		"nothing."  
LibMsg <report player closing>		"You close [the main object]."  
LibMsg <report npc closing>		"[The person asked] closes [the main object]./[The main object] closes."  
LibMsg <cannot close unless openable>	"That's/they're not something you can close."  
LibMsg <cannot close something already closed>		"That's/they're already closed."  
LibMsg <report player locking>		"You lock [the main object]."  
LibMsg <report npc locking>		"[The person asked] locks [the main object]."  
LibMsg <cannot lock without a lock>	"That/They doesn't/don't seem to be something you can lock."  
LibMsg <cannot lock something already locked>		"That's/They're locked at the moment."  
LibMsg <cannot lock something open>	"First you'll have to close [the main object]."  
LibMsg <cannot lock without the correct key>		"That/They doesn't/don't seem to fit the lock."  
LibMsg <report player unlocking>		"You unlock [the main object]."  
LibMsg <report npc unlocking>		"[The person asked] unlocks [the main object]."  
LibMsg <cannot unlock without a lock>	"That/They doesn't/don't seem to be something you can unlock."  
LibMsg <cannot unlock something already unlocked>	"That's/They're unlocked at the moment."  
LibMsg <cannot unlock without the correct key>		"That/They doesn't/don't seem to fit the lock."  
LibMsg <report player switching on>	"You switch [the main object] on."  
LibMsg <report npc switching on>		"[The person asked] switches [the main object] on."  
LibMsg <cannot switch on unless switchable>		"That's/They're not something you can switch."  
LibMsg <cannot switch on something already on>		"That's/They're already on."  
LibMsg <report player switching off>	"You switch [the main object] off."  
LibMsg <report npc switching off>		"[The person asked] switches [the main object] off."  
LibMsg <cannot switch off unless switchable>		"That's/They're not something you can switch."  
LibMsg <cannot switch off something already off>		"That's/They're already off."  
LibMsg <report player wearing>		"You put on [the main object]."  
LibMsg <report npc wearing>		"[The person asked] puts on [the main object]."  
LibMsg <cannot wear something not clothing>		"You can't wear that/those!"  
LibMsg <cannot wear not holding>			"You're not holding that/those!"  
LibMsg <cannot wear something already worn>		"You're already wearing that/those!"  
LibMsg <report player taking off>		"You take off [the main object]."  
LibMsg <report npc taking off>		"[The person asked] takes off [the main object]."  
LibMsg <cannot take off something not worn>		"You're not wearing that/those."  
LibMsg <report player eating>		"You eat [the main object]. Not bad."  
LibMsg <report npc eating>		"[The person asked] eats [the main object]."  
LibMsg <cannot eat unless edible>		"That's/They're plainly inedible."  
LibMsg <block drinking>			"There's nothing suitable to drink here."  
LibMsg <block tasting>			"You taste nothing unexpected."  
LibMsg <block smelling>			"You smell nothing unexpected."  
LibMsg <block listening>			"You hear nothing unexpected."  
LibMsg <report player touching things>	"You feel nothing unexpected."  
LibMsg <report npc touching things>	"[The person asked] touches [the main object]."  
LibMsg <report player touching self>	"If you think that'll help."  
LibMsg <report player touching other people>		"Keep your hands to yourself!"  
LibMsg <report npc touching other people>		"[The person asked] touches [the main object]."  
LibMsg <block saying yes>		"That was a rhetorical question."  
LibMsg <block saying no>			"That was a rhetorical question."  
LibMsg <block saying sorry>		"Oh, don't apologize."  
LibMsg <block swearing obscenely>	"Real adventurers do not use such language."  
LibMsg <block swearing mildly>		"Quite."  
LibMsg <block climbing>			"I don't think much is to be achieved by that."  
LibMsg <block jumping>			"You jump on the spot, fruitlessly."
LibMsg <block swinging>			"There's nothing sensible to swing here."  
LibMsg <block waving hands>		"You wave, feeling foolish."  
LibMsg <block attacking>			"Violence isn't the answer to this one."  
LibMsg <block burning>			"This dangerous act would achieve little."  
LibMsg <block cutting>			"Cutting that/those up would achieve little."  
LibMsg <block rubbing>			"You achieve nothing by this."  
LibMsg <block setting to> 		"No, you can't set that/those to anything."  
LibMsg <block tying>			"You would achieve nothing by this."  
LibMsg <report player waving things>	"You look ridiculous waving [the main object]."  
LibMsg <report npc waving things>	"[The person asked] waves [the main object]."  
LibMsg <cannot wave something not held>		"But you aren't holding that/those."  
LibMsg <squeezing people>		"Keep your hands to yourself."  
LibMsg <report player squeezing>		"You achieve nothing by this."  
LibMsg <report npc squeezing>  		"[The person asked] squeezes [the main object]."  
LibMsg <block throwing at>		"You lack the nerve when it comes to the crucial moment."  
LibMsg <throw at inanimate object>  	"Futile."  
LibMsg <report player pushing>		"Nothing obvious happens."  
LibMsg <report npc pushing>		"[The person asked] pushes [the main object]."  
LibMsg <report player pulling>		"Nothing obvious happens."  
LibMsg <report npc pulling>		"[The person asked] pulls [the main object]."  
LibMsg <report player turning>		"Nothing obvious happens."  
LibMsg <report npc turning>		"[The person asked] turns [the main object]."  
LibMsg <block pushing in directions>	"[The main object] cannot be pushed from place to place."  
LibMsg <not pushed in a direction>	"That's not a direction."  
LibMsg <pushed in illegal direction>  	"Not that way you can't."  
LibMsg <cannot push something fixed in place>		"It is fixed in place."  
LibMsg <cannot pull something fixed in place>		"It is fixed in place."  
LibMsg <cannot turn something fixed in place>		"It is fixed in place."  
LibMsg <cannot push scenery>		"You are unable to."  
LibMsg <cannot pull scenery>		"You are unable to."  
LibMsg <cannot turn scenery>		"You are unable to."  
LibMsg <cannot push people>		"That would be less than courteous."  
LibMsg <cannot pull people>		"That would be less than courteous."  
LibMsg <cannot turn people>		"That would be less than courteous."  
LibMsg <block answering>		"There is no reply."  
LibMsg <block asking>			"There is no reply."  
LibMsg <block buying>			"Nothing is on sale."  
LibMsg <block kissing>			"Keep your mind on the game."  
LibMsg <block singing>			"Your singing is abominable."  
LibMsg <block telling>			"This provokes no reaction."  
LibMsg <telling yourself>  		"You talk to yourself a while."
LibMsg <block thinking>			"What a good idea."  
LibMsg <block player consulting> 		"You discover nothing of interest in [the main object]."  
LibMsg <block npc consulting>		"[The person asked] looks at [the main object]."  
LibMsg <block sleeping>			"You aren't feeling especially drowsy."  
LibMsg <block waking up>		"The dreadful truth is, this is not a dream."  
LibMsg <block waking other>		"That seems unnecessary."  
LibMsg <report player waiting>		"Time passes."  
LibMsg <report npc waiting>		"[The person asked] waits."  



[
LibMsg <report npc giving>		"[The person asked] gives [the main object] to [the second noun]."
LibMsg <block jumping over>		"You would achieve nothing by this."
LibMsg <block swimming>			"There's not enough water to swim in."
LibMsg <say things within>		"[what's inside the object part 1] [what's inside the object part 2]"
LibMsg <say things also within>		"[what's inside the object part 1] also [what's inside the object part 2]"
LibMsg <say things on>			"On [the main object] [what's on the object]."  
LibMsg <report npc touching self>		"[The person asked] touches [himself]."  


]

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
	