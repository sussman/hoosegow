"Hoosegow" by Ben Collins-Sussman and Jack Welch

The story headline is "A Wild West Wreck".
The release number is 1.
The story creation year is 2010.
The story genre is "Western".

The story description is "Muddy's plan done landed you and your partner in the hoosegow. Now you're fixing to rectificate the matter before the marshal introduces you to the business end of a hangin' rope at dawn.marshal"

The intro-text is a text that varies.  Intro-text is "As the sun sets on the plains, the sheriff angrily snaps on the cuffs. You are shoved into the coach and land on top of Muddy Charlie and the pile of silver dollars, which until recently had been the property of the Missouri, Kansas & Texas line.[paragraph break]Muddy furtively whispers, 'Hang tight, Rick! You done good blowing up that tunnel -- I just didn't plan on the sheriff getting word ahead of time, is all. That were powerful bad luck.'[paragraph break]The sheriff climbs onto his horse, spits, and you begin to rumble forward. 'You boys really got it coming this time,' he yells back cheerfully.[paragraph break]Muddy shakes his head. 'No offense, Sheriff, but I reckon you got the wrong men. We was just on our way to the theater.'[paragraph break]The sheriff disagrees. 'The only place you boys are heading is straight to the [paragraph break]".

Include Menus by Emily Short.
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

Section Playing

Understand the command "play" as something new.  Playing is an action applying to one thing.  Understand "play [a thing]" as playing.
Report playing:
	if the noun is the harmonica:
		say "You play a lovely melody.";  [TODO:   change this!]
	otherwise:
		say "You don[apostrophe] rightly know how to play such a thing."
		
Section Reloading

Reloading is an action applying to one thing. Understand "reload [a thing]" or "load [a thing]" as reloading.

Check reloading:
	if the noun is not the gun:
		say "That ain't something you can load." instead.
		
Carry out reloading:
	say "You don't have any bullets."
	
Section Shooting

Shooting is an action applying to one thing. Understand "shoot [a thing]" as shooting.

Carry out shooting:
	say "Bang!" [### a placeholder]


Chapter General Insteads

Chapter Not Ready For Prime Time - Not for release

[When play begins:
	change library message debug to on.]
	
Chapter Initialize

The maximum score is 10. [change this later]

When play begins:
	say the intro-text;
	change the time of day to 7:15 PM;
        	change the left hand status line to "[the player's surroundings]";
        	change right hand status line to "Score: [score]/[maximum score]";
	move the harmonica to Muddy.
	
After printing the banner text:
	say "Type [quotation mark]help[quotation mark] for instructions, credits, and license -- or just roll into town guns ablazin[apostrophe].[paragraph break]";
	say "In the twilight, you sight the sheriff's sturdy brick office near the edge of town. 'That's mighty fine construction,' notes Muddy, sounding less feisty now. 'Mighty fine indeed.' The coach rolls to a halt and a thick arm yanks you roughly from your seat. You land awkwardly in the rutted street, where the sheriff holds you in place with the heel of one boot. He yells to his men, 'Bring the coach on around, we got to impound that evidence.' You are manhandled into the sheriff's office and shoved into a small holding cell.[paragraph break]The deputy wakes with a start, whips his dusty boots off the desk and stands, tucking his shirt back into his pants. The sheriff gives him a brief, judgmental glance and offhandedly tosses an arrest warrant on the desk. He barks, 'Jimbo, listen up. Picked up these two down near the train. A federal marshal will be coming for them at eight o'clock tomorrow morning. There's going to be a hanging!'. The deputy nods slowly. The sheriff continues, 'Please take care of our [apostrophe]guests[apostrophe]. I got some personal business to see to, so you is in charge.' The deputy smiles until the sheriff adds, 'Jimbo, don't screw up,' as he heads out the door.".
	

Chapter Limbo
[A place for offstage stuff]

Limbo is a room.

Section Warrant

The warrant is a prop. The description of the warrant is "A piece of paper with black printing and red handwriting." The warrant can be edited. The warrant is not edited.

To say warrant-text:
	say "FEDERAL WARRANT. This warrant is issued this eleventh day of December in the year of Our Lord Eighteen Hundred and Sixty Nine and duely executed by the hand of United States Army Major General Philip H. Sheridan of Fort Sill, the Indian Territory of these United States of America. The fugitives Mudlark Abercromby MacGyver alias [quotation mark]Muddy,[quotation mark] alias [quotation mark]Mudshoe,[quotation mark] alias [quotation mark]Pensicola Thelma,[quotation mark] and one Major Richard Carter, alias [quotation mark]Gentleman Rick,[quotation mark] alias [quotation mark]Poor Richard,[quotation mark] alias [quotation mark]Gumball Ricky,[quotation mark] both formerly of the Confederate States Army, having been implicated by observation and circumstance of innumerable delicta, dacoiteries, iniquities, infringements, infractions, and indeed immorality, as well as trangressions, trespassing and trainstopping, are considered deleterious and detrimental to the welfare of the State, and THEREFORE, ordered thereupon that a Mittimus be made out to keep them confined until such time as they be discharged for proper hanging[if the warrant is edited] of the Sheriff's portrait on the office wall[end if]."

Chapter Office

The office is a room. The description of the office is "[one of]A one room jailhouse is fitting for this jerkwater town. [or][stopping]There's a big, wooden desk in the middle of the room[if the deputy is sitting], and behind it sits the deputy[end if]. Just behind the desk is a fancy cabinet, with real glass in the door[if the cabinet door is open], which is open[end if]. [if the portrait is hung up]An aesthetically questionable portrait of the sheriff hangs on the office wall[otherwise]Next to the cabinet, a large, framed picture of the sheriff stands on the floor[end if]. To the side of the desk, there is a weird looking contraption: clearly, some sort of steam boiler which is connected by pipes to a strange looking machine. On the opposite side of the room, a door leads back to town."

Section Bell

The bell is a prop in the office. The description of the bell is "A shiny silver bell with a black handle[if the bell is on the hook]. It is hanging by the door way on a small hook[end if]."

The hook is a furniture in the office. The description of the hook is "A small metal hook screwed into the door jam[if the bell is on the hook] A bell hangs from the hook[end if]."

Section Boiler

Position is a kind of value. The positions are whistleward, neutral, and coffeeward.

The boiler is a furniture in the office. The description of the boiler is "A pot-bellied inferno, with a grate on the front. Above the combustion chamber, there is a round, rivet-studded ball which in turn leads into a junction. One pipe runs sideways to the bronze machine behind the desk, while the main pipe runs straight up through the roof. There is a lever at the junction which looks like it could either swing towards the front door or towards the rear of the office.  [lever position]." Understand "combustion" or "chamber" as the boiler.

The grate is part of the boiler. The description of the grate is "Through the grate, you can see the red-hot interior of the boiler."

The ball is part of the boiler. The description of the ball is "A thick, cast iron ball filled with enough pressurized steam to blow you from here to kingdom come." Understand "iron" or "rivet" or "rivets" as the ball.

The gauge is part of the boiler. The description of the gauge is "A high-tech gauge, with a needle that moves back and forth as the black ball bubbles and hisses. The print behind the need reads [quotation mark]low,[quotation mark] [quotation mark]safe,[quotation mark] and [quotation mark]danger[quotation mark]. Right now, the needle is in the [quotation mark]safe[quotation mark] zone." Understand "needle" or "pressure" as the gauge.

The lever is part of the boiler. The description of the lever is "A swinging metal arm that pivots on the pipe junction just above the pressure gauge. The arm can swing towards either the door or the back of the office. Right now, it is nearer [lever position]." The lever has position. The lever is neutral.

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

The cabinet is a closed openable scenery container in the office. The top of the cabinet is a part of the cabinet. The top of the cabinet is a supporter. The cabinet door is part of the cabinet. The description of the cabinet is "About three feet tall, and made of oak. The cabinet's top is covered with circular stains from drinking bottles, but the rest of the cabinet is in good shape[if the whiskey is on the cabinet]. A bottle of whiskey stands on the cabinet[end if]. A [if the cabinet door is closed]door covers the front of the cabinet and opens on brass hinges. The contents of the cabinet are recognizable through the cabinet's uneven glass. Despite the distortion, you see your guns and some kind of shiny yellow object. Maybe gold, you think, hopefully[otherwise]The cabinet door is open and inside you see [a list of things in the cabinet].[end if]."

Does the player mean doing something with the cabinet:
	It is very likely.
	
[###CONSIDER: suppress disambiguation message]

The banana is an edible prop in the cabinet. The description of the banana is "[one of]Sometimes a banana is just a banana[or]A bright yellow banana[stopping]."

The gunbelt is a wearable prop. The description of the gunbelt is "A leather gun belt with holster."

The holster is an open container that is part of the gunbelt. The description of the holster is "A leather pouch that holds your gun."

The gun is a prop in the holster. The description of the gun is "[one of]You quickly inspect your gun and are alarmed to discover that it's unloaded[or]A simple six-shooter pistol[stopping]." The indefinite article of the gun is "your". Understand "pistol" as the gun.

After taking the gunbelt:
	say "You strap on your gun belt.";
	now the player wears the gunbelt.

Section Chair

The chair is furniture in the office. The description of the chair is "A heavy chair of polished maple[one of]. The sort of chair you used to have in your dining room[or][stopping]. It looks out of place in this run-down office[if the deputy is sitting]The chair is occupied by the deputy[end if]." [###CONSIDER implementing a description of what incidental activity the deputy is performing; could be used both here and in the deputy description.]

Section Desk

The desk is furniture in the office. The drawer is a closed openable container that is part of the desk. The description of the desk is "A beat-up old wooden desk with time-worn corners, and a pitted, scratched surface.[if the drawer is mentioned]drawer description[end if]."

The description of the drawer is "A small drawer". The drawer can be mentioned. The drawer is not mentioned. The drawer is lockable and locked. The matching key of the drawer is the small brass key.

After opening the drawer:
	say "[one of]The lock clicks and you slide the drawer open revealing a yellow telegram and sheaf of papers titled [quotation mark]Patent[quotation mark][or]You open the drawer[if the drawer contains something]revealing [a list of things in the drawer][end if][stopping]." 
	
The telegram is in the drawer. The description of the telegram is "A yellow paper on the stationary of the Western Union telegraph company. The message on the telegram is addressed to the sheriff and reads: [quotation mark]AGREE TO YOUR OFFER [bracket]STOP[close bracket] WILL SUPPLY MACHINE PARTS IN EXCHANGE FOR 5000 US DOLLARS IN SILVER COIN [bracket]STOP[close bracket] CONGRATULATIONS ON WINNING LOTTERY [bracket]STOP[close bracket] SIGNED JEFFRIES & BRAND STEAMWORKS CO LTD [bracket]STOP[close bracket][bracket]END[close bracket][quotation mark]." Understand "paper", "yellow", and "message" as the telegram. 

The patent is in the drawer. The description of the patent is "A thick technical document describing the coffee machine invented by the sheriff[one of]. Reading through it, you can see his plans to make these machines in factories and to sell them throughout the country. Your mind reels in horror at the prospect of coffee shops on every street corner selling fancy, steamed beverages[or][stopping]." 

Section Outdoors

The outdoors is a transparent scenery container in the office.

The range is a supporter in the outdoors. The description of the range is "The deer and the antelope are playing."

The fields are a plural-named supporter in the outdoors. The description of the fields is "Corn, mostly."

The deer is a male animal on the range. 

The antelope is a female animal on the range. 

After examining an animal on the range:
	say "The deer stares back to you momentarily and then runs off with the antelope. Ungulates are very private, you know.";
	move the deer to Limbo;
	move the antelope to Limbo.	

Section Portrait

The portrait is a scenery prop in the office. The portrait can be hung up. The portrait is not hung up. The description of the portrait is "A bombastic portrait of the sheriff who is dressed in a Napoleanic uniform save for the ten gallon hat. In the background, dogs play poker."

Section Protocappuccinomatic

The protocappuccinomatic is a furniture in the office. The description of the protocappuccinomatic is "All bronze and shiny, with lots of pipes, valves, grommets, and flanges, the word [quotation mark]Protocappuccinomatic[quotation mark] is written on the main body of the machine. The device stands about five feet high and must weigh a ton. A sturdy iron pipe runs from the machine to the boiler." The printed name of the protocappuccinomatic is "machine". Understand "strange machine", "device", "strange", "bronze" or "contraption" as the protocappuccinomatic.

The iron pipe is part of the protocappuccinomatic. The description of the iron pipe is "Heavy-duty fitted steam pipes, like they use on locomotives." Understand "pipes" as the iron pipe.

The cup is part of the protocappuccinomatic. The description of the cup is "A white porcelein mug [if the coffee is in the cup]containing hot coffee, which has been laced with the juice of the Peruvian Snoozeberry[end if]."

Some coffee is in Limbo. The description of some coffee is "Steaming hot, black Joe." The indefinite article of coffee is "a cup of".

The nozzle is part of the protocappuccinomatic. The description of the nozzle is "A tapering outlet." Understand "outlet" as the nozzle.

The chute is part of the protocappuccinomatic. The description of the chute is "A tube on the side of the machine." Understand "tube" as the chute.

Section Swinging Doors

The swinging doors are a plural-named scenery door in the office. The swinging doors are north of the office. The description of the swinging doors is "Two swinging louvered doors meet in the middle at chest height. You can see out the door, towards the open range and some farm fields."

Section Whiskey

The whiskey is prop on the top of the cabinet. The printed name of the whiskey is "bottle of whiskey". 

Chapter Jail Cell

The Jail Cell is west of the jail door.   The jail cell is connected with office.   "[if unvisited]Why are you not surprised to have landed right back in the hoosegow after another one of Muddy's dubious plans? Will you ever learn? You weren't brought up for this sort of life -- how did it come to this? [paragraph break][end if]The small jail cell is brick on three sides, metal bars on the other, with [if the gate is locked]a tightly locked[otherwise]an unlocked[end if] gate.  A small window is set into the brickwork above your head.  Through the jail bars you can see the sheriff's office.".

The jail cell contains the player.  


Section Gate

The gate is a door.  The gate is scenery.  The gate is west of the office and east of the Jail Cell.  The gate is locked.  Understand "door" as the gate.  The description of the gate is "A metal gate stands between you and freedom. The gate is set into the metal bars which surround your cell, and its hinges must be internal. The gate has a massive lock which clicked definitively behind you when you were thrown into the cell.".

The gate lock is part of the gate.


Section Stool & Bench

The stool is a portable supporter in the jail cell.  "A broken stool lies on the floor." [###TODO:  describe differently (in both descriptions) if broken vs. repaired.]  The description of the stool is "foo".

The bench is a furniture in the jail cell.  The description of the bench is "blah". [TODO]


Section Harmonica

The jail cell contains a harmonica.  The harmonica is a prop.  The description of the harmonica is "The harmonica is attached to the wall by a silvery chain.  In the fading light from outside the window, you can barely make out some kind of inscription on it.".  The harmonica can be discussed.  The harmonica is not discussed.

Instead of examining the harmonica for the first time:
	if the harmonica is not discussed:
		say "[initial harmonica dialogue]";
	now the harmonica is discussed;
	try examining the harmonica.
	
Instead of taking the harmonica for the first time:
	if the harmonica is not discussed:
		say "[initial harmonica dialogue]";
	now the harmonica is discussed.

Instead of playing the harmonica for the first time:
	if the harmonica is not discussed:
		say "[initial harmonica dialogue]";
	now the harmonica is discussed;
	try playing the harmonica.

The inscription is part of the harmonica.  The description of the inscription is "'Donated to the Crawdad's Gulch Municipal Hoosegow by the Gunslinger's Widows Association, Chapter Forty-One'". 

Instead of examining the inscription for the first time:
	say "[initial harmonica inscription dialogue]".
	
The chain is part of the harmonica.  The description of the chain is "You pause to inspect the chain that tethers the harmonica to the wall. The links are fine as cream gravy, and there isn't a spot of rust. From your professional experience in the jewelry industry, primarily on the selling side, you recognize that this well-crafted chain is probably silver and would fetch a good penny.".

Instead of pulling the harmonica:
	say "You give the harmonica a little tug, and then you pull harder, putting your back into it. The fine silver chain pulls taut, but is well crafted and doesn't give at all.".

[TODO:  After we define 'use' verb:  Instead of using the harmonica:  try playing it.]

Instead of going when the player is in the jail cell:
	if player is carrying the harmonica:
		move the harmonica to the jail cell;
		say "As you leave to go, the harmonica is yanked away from you by the wall-chain.[paragraph break]";
	continue the action.


Section Bars

The bars are scenery in the jail cell.   Understand "bar" as the bars. The description of the bars is "[one of]You look across the street at the saloon. Oh wait, did you mean the prison bars? Yeah, probably. Anyhow, the bars to your cell reach from floor to ceiling and are made of matte black metal. All except one, which is sort of gray in color. They are a bit under an inch thick, and they are reinforced by three tiers of horizontal bars. The gate to your cell is framed in the same black metal and inset into this meshwork of bars.[or]Your jail cell is bordered by metal bars on three sides. The bars are matte black, except for one which is slightly lighter in color -- a grey one.[stopping]".

Instead of attacking the bars:
	say "Muddy stands back as you let loose with your full fury and pound on the metal bars. As you beat them senseless, you notice that one of them sounds hollow. But which was it?".

The grey bar is part of the bars.  The grey bar is portable scenery.  [TODO:  much more here, like being able to fetch the bar by playing harmonica.  When it falls, it's no longer part of the bars, I guess.]

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

Section Muddy

Muddy is a man in the jail cell.  "In the corner of the cell, Muddy leans against the wall tapping a harmonica on his arm.".  The description of Muddy is "Muddy is well... muddy. His dated tweed three-piece suit is tattered, and doesn't at all match his formal frock coat, which is covered with dust and mud. [one of]In short, he hasn't changed a jot since the day you were both picked up for desertion and thrown in the stockade.[or]He's a bit short and pudgy, but always more nimble than you'd expect for someone of his age.[or]He hasn't shaved for days, and when he grins you notice one of his front teeth is missing.[or][stopping]". 

The frock coat and suit are worn by muddy. The description of the frock coat is "A fancy coat that was stylish in its day." The description of the suit is "A three-piece suit, which due to wear and tear is now about a two-and-a-half piece suit."

Section Rick

Instead of examining the player, say "Big boots, pants, plains hat and a tattered overcoat.  Not so different from the uniform you once wore, just more lived-in.".

The player carries a pocketwatch.   The pocketwatch is a prop.  Understand "watch" and "timepiece" and "pocket watch" as the pocketwatch. The description of the pocketwatch is "It's the wind-up time piece you received when you were commissioned as an officer in the Confederate Army. [one of]You may have lost everything else in that war, but at least you have this fine pocket watch.[or]It is some small consolation that your jailors were so incompetent as to overlook your one treasure.[or][stopping] It currently reads [time of day + 1 minute]."  [TODO:  add "only X minutes till hangin' time!"]

The player wears a hat.  The hat is a player's holdall.  The description of the hat is "A wide-brimmed hat to protect you from the sun."

Instead of searching the hat:
	say "[if the hat contains something]In the hat you see [contents of hat].[otherwise]Ten gallons of nothing.  You sure could shove a lot of loot in there you reckon.[end if]".   Instead of eating the hat, say "If you don't get out of this place, you sure will!"

The player carries a scrap of paper.   The scrap of is a prop.  Understand "scrap" and "paper" as the scrap of paper.  The description of the paper is "Muddy's instructions for holding up the train, which you faithfully carried out before the Sheriff showed up.  In smeared scribbles:  '1. GET DYNAMICMITE FROM MTNSIDE, 2. INSERT SPARKER, 3. BLOW UP TUNEL, 4. WAIT FOR ME'". 

The player wears an overcoat.

The player wears boots.  The description of the boots is "Black boots that have seen better days.  The left boot is missing a heel spur.".

The left boot and right boot are parts of the boots.  The description of the left boot is "A cowhide boot that has been rubbed smooth. The heel is worn down, and the spurs have broken clear off.".  The description of the right boot is "A cowhide boot that has been rubbed smooth. A metal riding spur is about ready to fall off the worn down heel.".  A spur is part of the right boot.  The description of the spur is "A sharp, round disc that rotates within a mount.[if the spur is part of the right boot]The spur is loosely attached to the heel of the right boot.[end if]".  The mount is part of the spur.  The description of the mount is "The mount is part of the spur.".

Instead of taking the spur when the spur is part of the right boot:
	now the player carries the spur;
	say "You yank the spur off your right boot, being careful not to cut yourself in the process.";
	award 1 point.

[TODO: removing boots, smell, etc.]


Section Pete

Pete is a man in the jail cell.  "Across the cell from you, a disheveled man in a black suit is stretched out on a crude wooden bench and is snoring loudly, oblivious to your presence.".  Understand "man" as Pete.  The description of Pete is "The man crumpled in the corner appears to be wearing a black suit and a pastor's neck tie. He almost looks half-respectable, if it weren't for the immediate environment. He wreaks of booze and snores loudly. [if Pete carries the pamphlet]A pamphlet is sticking out of his pocket.[end if]".

Pete carries a pamphlet.  The pamphlet is a prop.  [TODO:  rules allowing player to take pamphlet, as long as Pete is asleep.  Also need code to allow him to be searched, to discover tin.]

Instead of taking the pamphlet when Pete carries the pamphlet:
	say "You carefully slip the pamphlet out of the sleeping man's pocket.  He almost wakes up, but doesn't.[paragraph break]'Whatizit?', Muddy rasps.";
	move the pamphlet to the player.

Check examining the pamphlet:
	if the player does not carry the pamphlet,  say "You need it in your hand first." instead.

The description of the pamphlet is "[one of]You read it aloud:[paragraph break][pamphlet sermon][paragraph break][initial pamphlet dialogue][or][second pamphlet dialogue][or][pamphlet sermon][stopping]".


Pete carries a tin.  The tin is a portable openable container.  The carrying capacity of the tin is 1.   The tin contains some tobacco.  The tobacco is edible.



Section Flash

Flash is a male animal in Limbo.

Section Deputy

The deputy is a man in the office. Understand "Jim" or "Jimbo" as the deputy. The deputy can be either standing or sitting. The deputy is sitting. The deputy carries the brass key. The description of the deputy is "Big and strong, but lacking numerically in ancestors."

Section Sheriff

The sheriff is a man in Limbo. The sheriff carries the warrant.




Section Scripted Conversations

[Here are some canned discussions for humor, depth, etc.]

To say initial harmonica dialogue:
	now the player holds the harmonica;
	say "'I ain't never seen you play the mouth organ, Muddy.'[paragraph break]Your partner turns the harmonica back and forth, and a chain rattles. 'That's [apostrophe]cuz I ain't never learned how', he replies.[paragraph break]Muddy hands the harmonica to you.".

To say initial harmonica inscription dialogue:
	say "'Lookie here, Mud. There's some fancy writin[apostrophe] on the harmonica.'[paragraph break]'Don't that beat all. What's it say?'[paragraph break]'Let's see. Ah could do with more light. You got a lantern?'[paragraph break]'Nope.'[paragraph break]'Torch?'[paragraph break]'Unh-uh.'[paragraph break]'Matches?'[paragraph break]'Nary one.'[paragraph break]'Dang. Didn't we say that next adventure we'd bring [apostrophe]em?'[paragraph break]'I reckon we did, at that.'[paragraph break]'Well, the moon's up, I can see a little. It says, --Donated to the Crawdad's Gulch Municipal Hoosegow by the Gunslinger's Widows Association, Chapter Forty-One.--'[paragraph break]'These is some Ace-high acco-mo-dations we got us, I'll say.'".

To say initial pamphlet dialogue:
	say "Muddy, who had been staring intently at his boot tips looks up, eye brows knit in concentration. 'Ah don't get it. Why would anything need two hundred ninety-one thousand, eight hundred and forty eyes?'[paragraph break]'What?' you remark, looking up from the pamphlet. 'Are you kidding me? How could you figure that out?'[paragraph break]'Don't rightly know. Just something I do. Same way as I know there's 69,105 railroad ties between here and Muskogee. Ma said I was some kind of idiot savage.'[paragraph break]Dumbfounded, you stop reading halfway through the pamphlet to stare incredulously at Muddy, who picks his nose. 'Yeah, go on. What else's it say?'".

To say second pamphlet dialogue:
	say "You straighten out the pamphlet and skim it, paraphrasing for Muddy.[paragraph break]'Well let's see. It keeps going on like that for a ways without really saying much. By and by there's this part about a revival meeting. Some kind of doxology works, but out in the open, like under a circus tent. It says they'll be some preaching, some healing and even some dancing. I'd allow it sounds like a right pleasant shindig, it do.'[paragraph break]Muddy pauses.'Can I see that pamphlet a minute?'".

To say pamphlet sermon:
	say "'The Prairie Gospel Church of Uncanny Righteousness'[paragraph break]'For lo, the impetuous and retributive spirit of FINAL JUDGEMENT is stirring in the heart of the unfaithful, and a FIERY thunderhead of retribution is gathering across the plains of the undeserving, the bereft of propriety, and promulgators of heresy, and the scalding hot sparks of TRUTH are spraying forth, catching light the arid and HIGHLY FLAMMABLE and veritably kerosene-soaked sawdust of the weak-willed. And into this fray, the unwholesome BEAST shall arise and the earth shall tremble. Its body shall tower above like a mountain, and upon the body shall be nineteen heads, each like unto a serpent. Upon each head, twelve horns, like that of the ram, the bull, and the elephant, say four of each. And upon each horn, sixteen stalks, not unlike celery in some respects, yet more flexible, more like the arms of an octopus, except being twice as numerous. And upon each stalk, eighty eyes, or forty pairs of eyes, if you prefer!'".


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
LibMsg <confirm Quit>			"For real? Give up now just when things is getting hopping?"
LibMsg <you have died>			"You done cashed it in."
LibMsg <you have won>			"You has won."
LibMsg <unimportant object>		"That/they ain't something what you gotta pay heed to round these parts."
LibMsg <empty line>			"Sorry citizen, I didn't hear you rightly. What?"  
LibMsg <confirm Quit>			"I didn't mark you for a quitter. You sure?"  
LibMsg <yes or no prompt>		"Ain't you got no manners? Answer yes or no."  
LibMsg <restrict answer>			"Enough of your blatheration. Give one of them answers from above."  
LibMsg <page prompt>			"[bracket]Press SPACE if'n you want to go on a pace.[close bracket]"  
LibMsg <undo succeeded>		"[bracket]You done backtracked[dot][close bracket]"  
LibMsg <undo failed>			"[apostrophe]Undo[apostrophe] failed real miserable-like. [bracket]Not all interpreters got the cajones to get undid[dot][close bracket]"
LibMsg <undo not provided>		"[bracket]Your 'terp don't provide [apostrophe]undo[apostrophe]. [apologies].[ExMark][close bracket]"  
LibMsg <cannot undo nothing>		"[bracket]You can't [apostrophe]undo[apostrophe] what ain't been did none[ExMark][close bracket]"   
LibMsg <oops failed>			"That were so balled up, ain't nothing can fix it."
LibMsg <oops no arguments>		"[aintNothing]." 
LibMsg <cannot do again>		"You can't hardly repeat that."   
LibMsg <command not understood>	"Is you talking plain English? I ain't following the words coming out of your lips. Mayhaps it's your accent."  
LibMsg <command partly understood>	"I only twigged your meaning as far as hankering to "    
LibMsg <command incomplete>		"You seem to have said too little! Normally, I find that right pleasant."   
LibMsg <cannot begin at comma>		"Commas ain't for beginning sentences with. Land sakes, ain't you got no grammar?"  
LibMsg <unknown object>		"[youAint]able to see no such thing."  
LibMsg <object not held>			"[youAint]holdin' that!"  
LibMsg <unknown verb>			"That [aintNo]verb I got no knowledge of."   
LibMsg <cannot exceed carrying capacity>	"Your carrying too dang-blasted many things already."    
LibMsg <cannot insert if this exceeds carrying capacity>		"There [aintNo]more room in [the main object]."  
LibMsg <cannot put if this exceeds carrying capacity>		"There [aintNo]more room on [the main object]."  
LibMsg <who disambiguation>		"That warn't clear. Who all do you mean, "  
LibMsg <which disambiguation>		"Which all do you mean, "  
LibMsg <whom disambiguation>		"Who all do you want to {command}?"  
LibMsg <what disambiguation>		"What in tarnation do you want to {command}?"  
LibMsg <pronoun not set>		"I don't rightly twig what '{pronoun}' refers to."  
LibMsg <person ignores command>	"[The main object] ain't having none of your balderdash."  
LibMsg <cannot talk to absent person>	"Your cake hole is jabbering, but I can't rightly say to who you is talking."  
LibMsg <confirm Restart>			"You sure you want to turn tail and restart? "     
LibMsg <Inventory initial text>		"You're hauling"  
LibMsg <Inventory no possessions> 	"[youAint]hauling nothing." 
LibMsg <entering darkness>		"It's darker than midnight in a coal mine!"
LibMsg <dark description>		"It's darker than the shine on your granddaddy's boots. You ain't able to see your own self here."  
LibMsg <examine while dark>		"Ain't no seeing to be had on account of it's so dark here."  
LibMsg <report player taking>		"Fetched."  
LibMsg <cannot take other people>	"I don't reckon [the main object] would much care for that."  
LibMsg <cannot take something you are within>		"You[apostrophe]d have to get off/out of [the main object] first."  
LibMsg <cannot take something already taken>		"Sakes alive. You already done got that/those."    
LibMsg <cannot reach within closed containers>		"[The main object] ain't open."  
LibMsg <cannot take scenery>		"That/they ain't hardly what a body would aim to carry about."  
LibMsg <cannot take something fixed>	"That's/they're planted real good and not going anywhere, I do reckon."
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
LibMsg <superbrief look mode>		"{Story name} is now in its 'superbrief' mode, what gives short descriptions of locations (even if a body ain't been there before)."  
LibMsg <verbose look mode>		"{Story name} is now in its 'verbose' mode, which always gives long descriptions of locations (even if you been there plenty)."  
LibMsg <cannot search unless container or supporter>	"You don't find nothing at all."  
LibMsg <cannot search closed opaque containers>		"[youAint] able to peek inside, seeing as how [the main object] is/are closed."  
LibMsg <nothing found on top of>	"There [aintNothing]on [the main object]."  
LibMsg <cannot open unless openable>	"That/They ain't something you can open."  
LibMsg <cannot switch on unless switchable>		"That/They ain't something you can switch."  
LibMsg <cannot take off something not worn>		"[youAint]wearing that/them."  
LibMsg <report player eating>		"You choke down [the main object]. Not bad."  
LibMsg <cannot eat unless edible>		"Any tom fool could see that/they ain't for eating."  
LibMsg <block drinking>			"There's [aintNothing]proper fit for drinking here."  
LibMsg <report player touching self>	"If you reckon that'll help."  
LibMsg <report player touching other people>		"Keep your filthy sheep shearing, pig wallowing, cow poking hands to your lonesome!"  
LibMsg <block saying sorry>		"Oh, shove your boot-lickin'."  
LibMsg <block swearing obscenely>	"Ain't no need to air your lungs so. We keep a civil tongue in these parts. Mostly."  
LibMsg <block swearing mildly>		"Ain't it, though."  
LibMsg <block climbing>			"I don't think much is to be achieved by that."  
LibMsg <block jumping>			"You dance about like a niner soaked full of nose paint."
LibMsg <block swinging>			"There [aintNothing]sensible to swing here."  
LibMsg <block waving hands>		"You send a wave."  
LibMsg <block attacking>			"You reckon violence usually is the answer, but maybe not just now."  
LibMsg <block rubbing>			"That don't seem to serve no purpose."  
LibMsg <report player waving things>	"You look stranger than a preacher in a vaulting house waving [the main object]."  
LibMsg <cannot wave something not held>		"Nope. [youAint]holding that/those."  
LibMsg <squeezing people>		"Keep your paws to yerself."  
LibMsg <report player squeezing>		"That don't get nothing done."  
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
LibMsg <block singing>			"You got a right fine voice. [apostrophe]Just not for singing."  
LibMsg <block thinking>			"What a plumb good idea."  
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
	