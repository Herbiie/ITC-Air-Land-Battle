if (!isDedicated) then {

if (isNull player) then {
waitUntil {!isNull player};
};


};

 player createDiaryRecord ["Diary",["Deployment Points","
Deployment points repesents the political will to deploy troops or equipment to the theatre.<br/>
<br/>
You can gain deployment points by completing missions and killing insurgents.<br/>
<br/>
You lose deployment points by dying or by friendly AI dying. The death of a player will lose you more deployment points than the death of an AI.<br/>
<br/>
Deployment points can be spent on new patrol bases and FOBs as well as assets. These can all be bought at the main HQ at the airfield.<br/>
<br/>
You can see how many deployment points you have by selecting the 'Show Deployment Points' option from the theatre or base commander.
  "]];

 player createDiaryRecord ["Diary",["Patrol Bases and FOBs","
Patrol bases and FOBs can be bought from the theatre commander at Gravia Airfield.<br/>
<br/>
Patrol bases cost 100 deployment points and consist of a squad of AI, split into a garrison and a single patrol. The patrol base has an arsenal crate and a base commander from whom missions can be requested.<br/>
<br/>
FOBs cost 500 deployment points and consist of a platoon of AI, split into a garrison and two patrols. FOBs have arsenal crates and base commanders from whom missions or operations (larger scale missions) can be requested. FOBs also generate reactive missions.<br/>
<br/>
Both Patrol Bases and FOBs have random chances of coming under mortar or small arms fire attacks, as is Gravia Airfield. Don't worry - there is a warning siren and garrison to warn you of such attacks or protect you from insurgents.
  "]];

 player createDiaryRecord ["Diary",["Beginner's Guide","
To start off with you have 150 deployment points - and no friendly forces outside of Gravia Airfield.<br/>
<br/>
The best way to start off is to buy a patrol base and a means of getting there.<br/>
<br/>
You start in the HQ building, so set up a patrol base through the theatre commander - he's the guy with all of the maps.<br/>
<br/>
Set up this patrol base wherever you want - but tactically it makes more sense to be near to the airfield for logistics.<br/>
<br/>
The further your patrol base is away, the further you will have to travel to get vehicles there.<br/>
<br/>
Then buy a means of getting to the patrol base - I recommend a Prowler, as that will leave you with 30 deployment points should you lose it and need to buy a new one.<br/>
<br/>
Drive to the patrol base and start missions - these are the quickest way to gain deployment points!
  "]];

 player createDiaryRecord ["Diary",["ITC Air Land Battle","
Development Version 1.<br/>
<br/>
This is a counter insurgency game mode that allows you to focus on missions while AI handles boring presence patrols and garrison duties. Use deployment points to build patrol bases and FOBs, then complete missions to gain more deployment points and neutralise towns. Deployment points can also be spent on vehicles, helicopters, jets and artillery pieces.<br/>
<br/>
The following features are planned but not yet implemented:<br/>
- A tiered weapon system, where you can upgrade what weapons are available in the arsenal crates.<br/>
- Host Nation police and military to take over patroling in secured towns<br/>
- Ability to close down patrol bases to recover some deployment points<br/>
- Persistence!<br/>
- Individual XP/Money that allows for more weapons or vehicles to be bought<br/>
- Civilians<br/>
- AI QRF System<br/>
- FOB Attacks dependent on nearby security situation<br/>
  "]];
  