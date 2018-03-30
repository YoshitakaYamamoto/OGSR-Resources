Dedicated to Uncle Sascha (Bacha),
who was with us from the very beginning, but never saw the end.


-= Old Good S.T.A.L.K.E.R. Evolution =-
< 0.6.9.3 Final 2.0>

Back in 2010 no one could imagine that a small update for 0.6.9.2 R2 in the end, after four years, will result in the most high-tech mod for SoC. New technologies are outstanding, sometimes our programmers have done something that GSC wasnít capable to do or what was considered impossible to do without access to the source code of the game.

Unfortunately, not everything was so remarkable: almost the entire 2013th year dropped out from the development for various reasons: tiredness of the game, personal affairs, technical difficulties, permanent bugfixes. All of this resulted in leaving of many talented persons out from the team, thatís why many ideas were not implemented.

Many ideas were abandoned due to lack of necessary specialists. Unfortunately, those who asked to join the team, quickly disappeared over the horizon. And we canít made all by ourselves. To the end of 2013 modification was a kind of alpha-version with a bunch of bugs. But there were really creative and committed comrades who undertook the correction of that stuff. Now therefore modification became quite good product

There were much negative toward the GSC, which issued Stalker SOC in the form in which we all was originally played. During development OGSE constantly faced with terrible hacks, made by developers from GSC. Why is it so - not for us to judge, but believe me, we swore a lot, finding another bug from original game. Moreover, even before release we found another serious bug with suit protection system: to put it briefly, some of parameters did not work ever. What is even more interesting: the greater was the protection of the suit, the weaker he protected; believe it or not.

Locations were not good either ñ they were terrible. Holes in AI-map, untied nods, which are not good for mod stability. In OGSE 0.6.9.3 all found bugs were eliminated

A lot of good words must be said about our programmers Alexander and Konstantin (Malandrinus and KD). One should thank them for the technical features of mod. Now playing STALKER, you can enjoy unprecedented visual effects and gameplay features that canít be seen in other mod for SOC. And all this was done without the source code. We do not have anything to hide, and the majority of tweaks is available to anyone who wishes in a project ìX-ray extensionsî (http://code.google.com/p/xray-extensions/)

Of course, we had to make some sacrifices, such as deleting R1-renderer. But it was right: all the efforts went to develop "dynamic lighting" renderer, which is only capable for all new graphical effects like "sunshafts", "reflections", etc. In addition, we speeded up the work with shaders, as well as loading saves.

We also thank Roman (abramcumner) for quests bugfixing after Jek@n left mod team.

And of course, we can not forget about Yuri (Simply Yuri), the man who brought developers in anger not only with his opinion about what is good and what is bad, how to do and how not to do, but with his meticulous study of each inch of the location, each wrong deviation of NPC, etc. And constantly slotting about correction of these bugs.

And when I look back in the far year 2010 and look at the day today, I think it's safe to say that the time was well spent, though not always optimal:-)

Wish you a nice playing.

Georgiy (Deathdoor)

-= Technical information =-


WARNING!
Known problems:

Two locations has an incompatibility LOD-geometry with older nVidia graphics card series GeForce GTX 2XX, so if you are the owner of the that video card, such as GeForce GTX 260 or 280, you should set advanced graphics setting "Details of objects" to the minimum before entering the Dead City (City-32) and Swamp. Otherwise, video drivers may fail and then hang the game even to BSOD. However, even this action not completely solves the problem, and the owners of these cards may experience visual artifacts at these locations. We bring an apology, but unfortunately we canít completely resolve this problem. In more recent series of video cards such problems have not been reported.
Further, the graphics presets in the main menu of the game may not contain all the necessary settings of the advanced options, and thus it is desirable to enter advanced settings for further configuration of the mod graphics according to your taste and performance. Otherwise, a part of the beautiful effects will be disabled, even though your system power is enough for it.

-= Common section =-

Debug log for battle scheme and surge scheme:

In battle scheme and surge scheme we have built mechanism for debug output in the log. By default it is turned off, as the game slows down a bit otherwise, but if you are the owner of a powerful PC, then we will be grateful to you if you enable these logs. In this case, when there are problems in battle or surge scheme debug output will helps us a lot. To enable debug log, you need to enter the console command:

write_debug_log on

What you should do when mod crashed:

You should transfer log and minidump to us. To do that find necessary files in folder c:\Users\Public\Documents\STALKER-SHOC\logs\, take log and dump files (first has name like xray_<ËÏˇ_ÔÓÎ¸ÁÓ‚‡ÚÂÎˇ>_<‰‡Ú‡>_<‚ÂÏˇ>.mdmp.log, second - like xray_<ËÏˇ_ÔÓÎ¸ÁÓ‚‡ÚÂÎˇ>_<‰‡Ú‡>_<‚ÂÏˇ>.mdmp), zip files, and make a post on our forum in proper thread, describing situation that led to crash and attaching zip-file with log and dump. If crash can be reproduced, you should attach also a save file (c:\Users\Public\Documents\STALKER-SHOC\ savedgames\).

What you should do when NPC or other objects acts abnormal:

If you found strange NPC, which acts strange or seems unresponsive, as well as other dynamic objects - monsters, helicopters and so on, do the following: exit to the main menu of the game, then press key "P" and return to the game. Visual debugging mode will enable when you hover a center of screen over an NPC or another din. object. Take a screenshot and place it with a description of the problem in the appropriate forum thread. Just make a good save near it, especially if after a save / load this condition persists.

-= System requirements =-

Operation system, RAM:

Windows XP if RAM more than 3 √·
Windows 7 x64 if RAM more than 4 √·
Windows 8/8.1 x64 if RAM more than 4 √·

Stable operation of the mod for configurations with Windows XP and RAM less than 3 GB, as well as Windows 7 x86 with any amount of RAM IMPOSSIBLE, basic installation for such configurations locked, technical support is not provided, as 90% of the problems and crashes on those systems associated with the lack of memory. It firmly established and repeatedly confirmed by testing in the development process. So please, before reporting of problems, make sure your system meets the requirements.
System requirements are specified using the settings of the original graphic effects on maximum. With total disabling of all additional effects video card requirements comply with the original game using dynamic lighting. While working on the 0693 static renderer was removed, the game now always starts in the dynamic lighting mode. To play with other effects mod requires a graphics card of modern architecture with a lot of shader processors.
Attention! The following system requirements are an estimate, and may be somewhat inflated. 

Central processor unit:

minimum: Intel Core i3-4130 or AMD FX-4100 (or A10-6800K)
recommended: Intel Core i5-3570K or AMD FX-8320 or higher

Videoadapter:
No advanced effects (or minimum level) in resolution up to 1440x900: AMD Radeon HD3850 or nVidia GeForce 9600GT
Advanced effects on medium in resolution up to 1440x900: AMD Radeon HD4870 or nVidia GeForce GTX 250
Advanced effects on high in resolution up to Full HD: AMD Radeon HD5870 or nVidia GeForce GTX 480
Advanced effects on high in resolution higher than Full HD: AMD Radeon HD7970 or GeForce GTX 670
Note that powerful video cards requires a powerful processor. In addition, in any case, in the advanced graphics settings you can configure the game effects for your system all settings are now provided with a clear description of their impact on the image), so the system requirements are approximate.

Hard disk space:
12 Gb for game and mod.

Third party executables:
- Microsoft Visual C++ 2005 redist;
- Microsoft .NET Framework 3.51;
- DirectX 9 June 2010 redist.

-= Differences from 0692 =-

While working on the graphic component of the engine following optimization and features have been added (shown only difference from the 0692 version):
- Shadow of the protagonist (full dynamic shadows from all light sources, not fake as static)
- Bloodmarks on the bodies of humans and monsters
- Ability to adjust the density and range of grass.
- Ability to enable shadows cast by grass.
- Full-screen anti-aliasing. Two types are available - FXAA (Fast Approximate AntiAliasing) and SMAA (Subpixel Morphological AntiAliasing), first is faster, second looks better, both can significantly improve the image quality.
- The right shading from the sun, with a length corresponding to the actual angle of incidence of sunlight.
- Volumetric light beams on particles of dust in the air, you can choose from version of ìCrysisî or version of STALKER: Clear Sky. The second option is more reliable, but also has a greater effect on performance.
- Soft edge of the water - now the water at the edge of ponds does not seem rigid plane.
- Soft particle - particle effects such as smoke, dust, fog, etc now have no sharp edges, manifested in their interaction with the geometry.
- Soft edge of the shadow.
- Global coverage - a technology that allows the calculation of illuminance of objects into account their mutual shading and shadow from geometry details. Creates a more plausible picture lighting penumbra, there are two different algorithms, SSDO and HBAO.
- Improved relief surface using an algorithm Steep parallax mapping. This algorithm is used to calculate ray tracing instead bump height maps, which gives a more realistic and high quality effect.
- The effects of the eye focus and depth of the scene when aiming, reloading and looking at near and far objects.
- Lit up by lamps.
- Dirt on the lens.
- Raindrops on the glass of the helmet or mask of the protagonist.
- Dynamic puddles from the rain.
- Wet surfaces during rain.
- Volumetric light of some lamps.
- Credible reflection on the water and asphalt.
- Volumetric fog.
- The effect of sharpening the image.
- Realistic collimator sights on the weapon, with self-luminous sighting mark visible in any light
- The effects of being under water

Improvements of game platform and engine (shown only difference from the 0692 version):
- An unique debug system was implemented to the scripting system for capture binders freezes, which completely eliminates alife hang situation and helps to obtain detailed information on the failed module and sequence of its call, which allows you to quickly rectify any appeared problems.
- Bug with wound immunity of suits is eliminated. Because of this bug in the original armor protection from wounds was not working, and even on the contrary, the higher the protection armor have, the more damage is dealt to the player.
- A completely new, unique system of in-game data and variables made, providing virtually unlimited storage space that allows you not to stretch to the limits to create a large number of quests.
- Revised and improved support for widescreen resolutions - no more stretched textures, interface elements, etc.
- Fixed appearance of the original crashes e_parent && e_entity, after murder of NPC, while reloading weapons.
- Added system of interchangeable addons ñ scopes, rifle shotguns and other equipment. Unfortunately, we were not able to revise all the weapons within a reasonable time, but the whole system is fully available for use by developers of add-ons.
- Made refactoring and optimization of scripting code (and the critical place of the code completely rewritten), which resulted in even greater stability than has been achieved in version 0.6.9.2
- The engine is completely independent, and DRM-free.
- The new system of quick and savable timers.
- Automatic script schemes and modules connection with error handling.
- Introduced new handy tools to develop and test - system for collecting debug information, the editor of shapes, etc.
- Completely redesigned netpacket system, it was made easy to use and secure.
- Fully corrected all possible problems with the manager of conditions caused by NPC hang when changing behavioral patterns.
- All behaviors schemes improved, eliminated all possible conflicts.
- All unique armor effects, missing in the original game were added, such as wound healing, hemostasis, hunger, fatigue.
- Exoskeletons were revised, they can be put on almost any armor (even on a sweater) except scientific suits and heavy military armor.
- Fixe a bug with wrong actor visual.
- Night vision devices are now made to dress up and sold separately from the reservation.
- New device - the thermovisor.
- The individual slots for all equipment (knife detector biodetectors, helmets and gas masks, night vision).
- Advanced light sources, including lamps and spotlights outdoor lighting with the possibility of scripting control (on / off schedule, etc.).
- Fix a bug with the impossibility of the switch of the type of grenade in hand.
- Fix a bug with NPC falling in panic, from which they can not get out.
- Interception of keys - now any script action can be assigned to any key that allows you to easy control of any instruments, devices and mechanisms. Widely used in mod.
- United convenient base script spawn.
- New weather system with randomization of weather cycles.
- Redesigned weapons manager.
- Revised and supplemented reaction scheme of the dangers for NPC. Introduced reaction to the discovery of the corpses of friendly NPC.

Gameplay and scripting improvements (are only differences from the 0692 version):
- New scripted battle scheme to replace poor engine one - maneuvering, different behaviors, use of shelters and arranging ambushes. With the growing complexity and more intelligent behavior proportional to the experience of NPC.
- Added a large number of unique hand-made quests with non-standard scenes. Many new quests harnessing devices and items, including reading a book, a combination safe, jukebox, etc.
- Amended and extended storyline.
- Added guides to quickly navigate through locations you have already visited.
- Adapted offline alife module from AMK (can be switched off) with news generated based on the offline life.
- Changed the scheme of changing the visual of NPC and companion.
- Redesigned algorithm of evading anomalies used a dual restrictor-algorithmic scheme. Made system to eliminate spawn of dynamic anomalies to pre-calculated quest path of the characters and in the areas of level changers.
- Changed the sleep system, interface and scripting part. In the rain, you can not sleep, you need to be in the shelter. Sleeping under the sky in the absence of a friendly NPC or the nearby partner may end fatally.
- Population control system of the stalkers and the monsters in the Zone was made, uncontrolled spawn impossible.
- Seriously modified vehicles, its physics, interface and interaction with it. Now it must be refilled, the trunk has normal game interface, adjusting camera angles in the transport, the grass of the locations are no longer passes through the machine model, displayed in her salon. In the car, you can ride with a partner.
- Redesigned controlled APC, its control and guidance system. When driving on it with a partner it can help to fire a gun, taking over the management of guidance and shooting. It is possible to sleep in and to wait surge.
- During the surge all electronics is switched off, including night vision systems and electronics APC.
- Improved the impact of monsters on player.
- Usable machine guns and portable machine gun turret (you can take with a stationary machine gun, bring it to deploy and fire).
- New and revised voiced biodetectors worn in slot working through customizable firmware.
- Mini game with quest characters.
- New autodoctor with a customizable interface, charging cartridges drugs.
- A new system of dynamic fires, it reacts the same way to the main character.
- A revised system of trade of transport.
- The effects of critical hits for the main character - NPC can knock out a weapon from hands, can do heavy headshots, etc.
- Effects on NPC and monsters when using flamethrower to them, new realistic flame effects of flamethrower, the possibility of using a flamethrower for partner or NPC.
- Redesigned module with slow treatment effects of drugs, also thereíre new drugs.
- Improved system of shelters from surge.
- Redesigned minigun, model, voice, animation, etc. Exists preliminary promotion trunks.
- Random rewards for random quests, with the ability to choose a reward yourself.
- Stashes with random content.
- A new, redesigned surge.
- Redesigned scheme of corpses searching with new animations and comments.
- The new version of the scheme "Companion" - improved and carefully modified. With a partner, you can easily and conveniently, without delay, to move between locations, use transport, select of the type of weapon of the companion. Teammate provided with improved scripting combat intelligence, literacy combat growing with his experience.
- Improved zombieness condition.
- Improved camp scheme ñ now NPC does not fight for a place by the fire, etc.

Refinements of world and locations:
- All locations completely redesigned - directed by the remaining unfinished from the original geometry, added new, expanded location, equipped with three-dimensional panoramas (create the effect of an infinite world), on the locations completely redone AI-map, corrected all the holes in it and multiple overlay.
- Added new locations with the settlement and quests for them.

At this point these parts of mod are still in the development of:
- Refinement of weapons and weapon conception.
