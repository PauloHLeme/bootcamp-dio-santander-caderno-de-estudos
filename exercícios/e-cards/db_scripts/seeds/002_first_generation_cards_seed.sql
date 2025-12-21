-- Seed: First Generation Pokémon Cards from #001-#020
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
(60, 'Bulbasaur', 'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.', 'Vine Whip', '20', 'Fire', 'Water', '1', 1, 1, 1, 1),
(80, 'Ivysaur', 'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.', 'Razor Leaf', '30', 'Fire', 'Water', '2', 2, 1, 1, 2),
(100, 'Venusaur', 'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.', 'Solar Beam', '60', 'Fire', 'Water', '3', 3, 1, 1, 3),
(50, 'Charmander', 'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.', 'Ember', '30', 'Water', 'Grass', '1', 4, 1, 2, 1),
(80, 'Charmeleon', 'When it swings its burning tail, it elevates the temperature to unbearably high levels.', 'Flamethrower', '50', 'Water', 'Grass', '2', 5, 1, 2, 2),
(120, 'Charizard', 'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.', 'Fire Spin', '100', 'Water', 'Grass', '3', 6, 1, 2, 3),
(50, 'Squirtle', 'After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.', 'Bubble', '10', 'Lightning', 'Fire', '1', 7, 1, 3, 1),
(80, 'Wartortle', 'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.', 'Water Gun', '30', 'Lightning', 'Fire', '2', 8, 1, 3, 2),
(120, 'Blastoise', 'A brutal Pokémon with pressurized water jets on its shell. They are used for high‑speed tackles.', 'Hydro Pump', '60', 'Lightning', 'Fire', '3', 9, 1, 3, 3),
(40, 'Caterpie', 'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.', 'Tackle', '10', 'Fire', 'Water', '1', 10, 1, 1, 1),
(50, 'Metapod', 'This Pokémon is vulnerable to attack while its shell is soft, exposing its tender body.', 'Harden', '0', 'Fire', 'Water', '2', 11, 1, 1, 2),
(70, 'Butterfree', 'In battle, it flaps its wings at high speed to release highly toxic dust into the air.', 'Confusion', '30', 'Fire', 'Water', '1', 12, 1, 1, 3),
(40, 'Weedle', 'Often found in forests, eating leaves. It has a sharp stinger on its head.', 'Poison Sting', '10', 'Fire', 'Water', '1', 13, 1, 1, 1),
(50, 'Kakuna', 'Almost incapable of moving, this Pokémon can only harden its shell to protect itself from predators.', 'Harden', '0', 'Fire', 'Water', '2', 14, 1, 1, 2),
(80, 'Beedrill', 'Flies at high speed and attacks using its large venomous stingers on its forelegs and tail.', 'Twinneedle', '30', 'Fire', 'Water', '1', 15, 1, 1, 3),
(40, 'Pidgey', 'A common sight in forests and woods. It flaps its wings at ground level to kick up sand.', 'Gust', '10', 'Lightning', 'Fighting', '1', 16, 1, 11, 1),
(60, 'Pidgeotto', 'Very protective of its sprawling territory, this Pokémon will fiercely peck at intruders.', 'Whirlwind', '20', 'Lightning', 'Fighting', '1', 17, 1, 11, 2),
(80, 'Pidgeot', 'When hunting, it skims the surface of water at high speed to pick off unwary prey.', 'Hurricane', '60', 'Lightning', 'Fighting', '2', 18, 1, 11, 3),
(40, 'Rattata', 'Bites anything when it attacks. Small and very quick, it is a common sight in many places.', 'Bite', '20', 'Fighting', 'Psychic', '1', 19, 1, 11, 1),
(70, 'Raticate', 'It uses its whiskers to maintain balance. It apparently slows down if they are cut off.', 'Super Fang', '50', 'Fighting', 'Psychic', '2', 20, 1, 11, 2);

-- Seed : First Generation Pokémon Cards from #021-#040
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
(40, 'Spearow', 'Eats bugs in grassy areas. It has to flap its short wings at high speed to stay airborne.', 'Peck', '10', 'Lightning', 'Fighting', '1', 21, 1, 11, 1),
(70, 'Fearow', 'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.', 'Drill Peck', '60', 'Lightning', 'Fighting', '2', 22, 1, 11, 2),
(50, 'Ekans', 'Moves silently and stealthily. Eats eggs of birds, such as Pidgey and Spearow, whole.', 'Wrap', '10', 'Psychic', 'Grass', '1', 23, 1, 6, 1),
(80, 'Arbok', 'It is rumored that the ferocious warning markings on its belly differ from region to region.', 'Poison Fang', '30', 'Psychic', 'Grass', '2', 24, 1, 6, 2),
(35, 'Pikachu', 'When several of these Pokémon gather, their electricity could build and cause lightning storms.', 'Thunder Shock', '30', 'Fighting', 'Metal', '1', 25, 1, 4, 1),
(60, 'Raichu', 'Its long tail serves as a ground to protect itself from its own high‑voltage power.', 'Thunderbolt', '60', 'Fighting', 'Metal', '2', 26, 1, 4, 2),
(40, 'Sandshrew', 'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.', 'Scratch', '20', 'Water', 'Grass', '1', 27, 1, 6, 1),
(75, 'Sandslash', 'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.', 'Slash', '40', 'Water', 'Grass', '2', 28, 1, 6, 2),
(50, 'Nidoran♀', 'Although small, its venomous barbs render this Pokémon dangerous. The female has smaller horns.', 'Poison Sting', '10', 'Psychic', 'Grass', '1', 29, 1, 6, 1),
(70, 'Nidorina', 'The female’s horn develops slowly. Prefers physical attacks such as biting.', 'Bite', '30', 'Psychic', 'Grass', '1', 30, 1, 6, 2),
(90, 'Nidoqueen', 'Its body is covered with hard scales. It uses its hefty bulk to execute powerful moves.', 'Body Slam', '60', 'Psychic', 'Grass', '3', 31, 1, 6, 3),
(50, 'Nidoran♂', 'Its large ears are always kept upright. If it senses danger, it attacks with its poisonous horn.', 'Horn Attack', '20', 'Psychic', 'Grass', '1', 32, 1, 6, 1),
(70, 'Nidorino', 'An aggressive Pokémon that is quick to attack. The horn on its head secretes a powerful toxin.', 'Horn Drill', '40', 'Psychic', 'Grass', '2', 33, 1, 6, 2),
(90, 'Nidoking', 'It uses its powerful tail in battle to smash, constrict, then break its prey’s bones.', 'Thrash', '60', 'Psychic', 'Grass', '3', 34, 1, 6, 3),
(40, 'Clefairy', 'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.', 'Sing', '0', 'Metal', 'Darkness', '1', 35, 1, 11, 1),
(70, 'Clefable', 'A timid fairy Pokémon that is rarely seen. It will run and hide the moment it senses people.', 'Metronome', '40', 'Metal', 'Darkness', '2', 36, 1, 11, 2),
(40, 'Vulpix', 'At the time of birth, it has one white tail. The tail splits from its tip as it grows older.', 'Quick Attack', '20', 'Water', 'Grass', '1', 37, 1, 2, 1),
(80, 'Ninetales', 'Very smart and very vengeful. Grabbing one of its many tails could result in a 1000‑year curse.', 'Flamethrower', '60', 'Water', 'Grass', '2', 38, 1, 2, 2),
(50, 'Jigglypuff', 'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.', 'Pound', '20', 'Psychic', 'Darkness', '1', 39, 1, 11, 1),
(115, 'Wigglytuff', 'Its body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.', 'Double‑Edge', '60', 'Psychic', 'Darkness', '2', 40, 1, 11, 2);

-- Seed : First Generation Pokémon Cards from #041-#060
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
(40, 'Zubat', 'Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.', 'Leech Life', '10', 'Psychic', 'Grass', '1', 41, 1, 6, 1),
(75, 'Golbat', 'Once it strikes, it will not stop draining energy from the victim even if it gets too heavy.', 'Bite', '30', 'Psychic', 'Grass', '2', 42, 1, 6, 2),
(50, 'Oddish', 'During the day, it keeps its face buried in the ground. At night, it wanders around sowing seeds.', 'Absorb', '20', 'Fire', 'Water', '1', 43, 1, 1, 1),
(70, 'Gloom', 'The fluid that oozes from its mouth isn’t drool. It is a nectar that smells sickeningly sweet.', 'Acid', '30', 'Fire', 'Water', '2', 44, 1, 1, 2),
(100, 'Vileplume', 'The larger its petals, the more toxic pollen it contains. Its big head is heavy and hard to hold up.', 'Petal Dance', '60', 'Fire', 'Water', '3', 45, 1, 1, 3),
(40, 'Paras', 'Burrows under the ground to gnaw on tree roots. The mushrooms on its back draw nutrients from the bug host.', 'Scratch', '20', 'Fire', 'Water', '1', 46, 1, 6, 1),
(60, 'Parasect', 'The bug host is drained of energy by the mushroom on its back. The mushroom appears to control the host.', 'Spore', '0', 'Fire', 'Water', '2', 47, 1, 6, 2),
(50, 'Venonat', 'Lives in the shadows of tall trees. Absorbs sunlight with the feelers on its head to grow.', 'Stun Spore', '20', 'Fire', 'Water', '1', 48, 1, 6, 1),
(70, 'Venomoth', 'The dustlike scales covering its wings are color coded to indicate the kinds of poison it has.', 'Poison Powder', '30', 'Fire', 'Water', '2', 49, 1, 6, 2),
(40, 'Diglett', 'Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.', 'Dig', '20', 'Water', 'Grass', '1', 50, 1, 6, 1),
(60, 'Dugtrio', 'A team of Diglett triplets. It triggers huge earthquakes by burrowing 60 miles underground.', 'Earthquake', '60', 'Water', 'Grass', '2', 51, 1, 6, 2),
(35, 'Meowth', 'Adores round objects. It wanders the streets on a nightly basis to look for dropped loose change.', 'Scratch', '20', 'Fighting', 'Psychic', '1', 52, 1, 11, 1),
(70, 'Persian', 'Although its fur has many admirers, it is tough to raise as a pet because of its fickle personality.', 'Slash', '40', 'Fighting', 'Psychic', '2', 53, 1, 11, 2),
(40, 'Psyduck', 'While lulling its enemies with its vacant look, this wily Pokémon will use psychokinetic powers.', 'Confusion', '20', 'Lightning', 'Fire', '1', 54, 1, 3, 1),
(80, 'Golduck', 'Often seen swimming elegantly by lakeshores. It is both agile and fast in the water.', 'Hydro Pump', '50', 'Lightning', 'Fire', '2', 55, 1, 3, 2),
(40, 'Mankey', 'Extremely quick to anger. It could be docile one moment then thrashing away the next instant.', 'Karate Chop', '30', 'Psychic', 'Darkness', '1', 56, 1, 6, 1),
(80, 'Primeape', 'Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.', 'Seismic Toss', '60', 'Psychic', 'Darkness', '2', 57, 1, 6, 2),
(50, 'Growlithe', 'Very protective of its territory. It will bark and bite to repel intruders from its space.', 'Bite', '20', 'Water', 'Grass', '1', 58, 1, 2, 1),
(90, 'Arcanine', 'A legendary Pokémon in China. Many people are charmed by its grace and beauty while running.', 'Flame Wheel', '60', 'Water', 'Grass', '2', 59, 1, 2, 2),
(40, 'Poliwag', 'Its newly grown legs prevent it from running. It appears to prefer swimming than walking.', 'Bubble', '10', 'Lightning', 'Fire', '1', 60, 1, 3, 1);

-- Seed : First Generation Pokémon Cards from #061-#080
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
(60, 'Poliwhirl', 'Capable of living in or out of water. When out of water, it sweats to keep its body slimy.', 'Water Gun', '30', 'Lightning', 'Fire', '1', 61, 1, 3, 2),
(90, 'Poliwrath', 'An adept swimmer at both the front crawl and breaststroke. Easily overtakes the best human swimmers.', 'Submission', '60', 'Lightning', 'Fire', '2', 62, 1, 3, 3),
(40, 'Abra', 'Sleeps 18 hours a day. If it senses danger, it teleports itself to safety even as it sleeps.', 'Teleport', '0', 'Psychic', 'Darkness', '1', 63, 1, 5, 1),
(60, 'Kadabra', 'It emits special alpha waves from its body that induce headaches just by being close.', 'Confusion', '30', 'Psychic', 'Darkness', '1', 64, 1, 5, 2),
(100, 'Alakazam', 'Its brain can outperform a supercomputer. Its intelligence quotient is said to be 5000.', 'Psychic', '60', 'Psychic', 'Darkness', '2', 65, 1, 5, 3),
(50, 'Machop', 'Loves to build its muscles. It trains in all styles of martial arts to become stronger.', 'Karate Chop', '20', 'Psychic', 'Darkness', '1', 66, 1, 6, 1),
(80, 'Machoke', 'Its muscular body is so powerful, it must wear a power‑saving belt to regulate its strength.', 'Submission', '40', 'Psychic', 'Darkness', '2', 67, 1, 6, 2),
(120, 'Machamp', 'Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.', 'Seismic Toss', '60', 'Psychic', 'Darkness', '3', 68, 1, 6, 3),
(40, 'Bellsprout', 'A carnivorous Pokémon that traps and eats bugs. It uses its root feet to soak up needed moisture.', 'Vine Whip', '20', 'Fire', 'Water', '1', 69, 1, 1, 1),
(70, 'Weepinbell', 'It spits out poison powder to immobilize the enemy and then finishes it with a spray of acid.', 'Acid', '30', 'Fire', 'Water', '2', 70, 1, 1, 2),
(100, 'Victreebel', 'Said to live in huge colonies deep in jungles, although no one has ever returned from there.', 'Razor Leaf', '60', 'Fire', 'Water', '3', 71, 1, 1, 3),
(40, 'Tentacool', 'Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.', 'Poison Sting', '10', 'Lightning', 'Fire', '1', 72, 1, 3, 1),
(80, 'Tentacruel', 'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.', 'Hydro Pump', '50', 'Lightning', 'Fire', '2', 73, 1, 3, 2),
(40, 'Geodude', 'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.', 'Tackle', '20', 'Water', 'Grass', '1', 74, 1, 6, 1),
(80, 'Graveler', 'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.', 'Rock Throw', '30', 'Water', 'Grass', '2', 75, 1, 6, 2),
(110, 'Golem', 'Its boulder‑like body is extremely hard. It can easily withstand dynamite blasts without damage.', 'Explosion', '80', 'Water', 'Grass', '3', 76, 1, 6, 3),
(40, 'Ponyta', 'Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.', 'Stomp', '30', 'Water', 'Grass', '1', 77, 1, 2, 1),
(100, 'Rapidash', 'Very competitive. This Pokémon will chase anything that moves fast in the hopes of racing it.', 'Flame Wheel', '60', 'Water', 'Grass', '2', 78, 1, 2, 2),
(50, 'Slowpoke', 'Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.', 'Headbutt', '20', 'Lightning', 'Fire', '1', 79, 1, 3, 1),
(95, 'Slowbro', 'The tail has a Shellder firmly attached. The two Pokémon share nutrients to survive.', 'Surf', '50', 'Lightning', 'Fire', '2', 80, 1, 3, 2);

-- Seed : First Generation Pokémon Cards from #081-#100
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
(40, 'Magnemite', 'Uses anti‑gravity to stay suspended. Appears without warning and uses magnetic waves to cause havoc.', 'Thunder Shock', '20', 'Fighting', 'Metal', '1', 81, 1, 4, 1),
(60, 'Magneton', 'Formed by several Magnemite linked together. It frequently appears when sunspots flare up.', 'Zap Cannon', '60', 'Fighting', 'Metal', '2', 82, 1, 4, 2),
(40, 'Farfetch’d', 'The sprig of green onion it holds is its weapon. It is used much like a metal sword.', 'Peck', '30', 'Lightning', 'Fighting', '1', 83, 1, 11, 1),
(50, 'Doduo', 'A two‑headed Pokémon that uses its two brains to collect data simultaneously.', 'Peck', '20', 'Lightning', 'Fighting', '1', 84, 1, 11, 1),
(90, 'Dodrio', 'Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.', 'Tri Attack', '60', 'Lightning', 'Fighting', '2', 85, 1, 11, 2),
(40, 'Seel', 'The protruding horn on its head is very hard. It is used for breaking through ice.', 'Headbutt', '20', 'Lightning', 'Fire', '1', 86, 1, 3, 1),
(80, 'Dewgong', 'Stores thermal energy in its body. It swims at a steady 8 knots even in icy waters.', 'Aurora Beam', '50', 'Lightning', 'Fire', '2', 87, 1, 3, 2),
(40, 'Grimer', 'Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.', 'Sludge', '20', 'Psychic', 'Grass', '1', 88, 1, 6, 1),
(80, 'Muk', 'Thickly covered with a filthy, sticky sludge. Smells so bad it makes the nose scrunch.', 'Acid Armor', '0', 'Psychic', 'Grass', '2', 89, 1, 6, 2),
(40, 'Shellder', 'Its shell is hard and protects it from attacks. It can make pearls from accumulated sand.', 'Clamp', '20', 'Lightning', 'Fire', '1', 90, 1, 3, 1),
(80, 'Cloyster', 'Its shell is extremely hard. It cannot be shattered, even with a bomb.', 'Spike Cannon', '60', 'Lightning', 'Fire', '2', 91, 1, 3, 2),
(40, 'Gastly', 'Almost invisible, this gaseous Pokémon cloaks the target and puts it to sleep without notice.', 'Lick', '10', 'Psychic', 'Darkness', '1', 92, 1, 5, 1),
(60, 'Haunter', 'Because of its ability to slip through walls, it is said to be from another dimension.', 'Night Shade', '30', 'Psychic', 'Darkness', '1', 93, 1, 5, 2),
(100, 'Gengar', 'Under a full moon, this Pokémon likes to mimic the shadows of people and laugh at their fright.', 'Shadow Punch', '60', 'Psychic', 'Darkness', '2', 94, 1, 5, 3),
(40, 'Onix', 'As it grows, the stone portions of its body harden to become similar to diamonds.', 'Rock Throw', '30', 'Water', 'Grass', '3', 95, 1, 6, 1),
(40, 'Drowzee', 'If you sleep by it all the time, it will sometimes show you dreams it has eaten.', 'Hypnosis', '0', 'Psychic', 'Darkness', '1', 96, 1, 5, 1),
(70, 'Hypno', 'When it locks eyes with an enemy, it will use a mix of psychic powers to lull it to sleep.', 'Psychic', '40', 'Psychic', 'Darkness', '2', 97, 1, 5, 2),
(40, 'Krabby', 'Its pincers are not only powerful weapons, they are used for balance when walking sideways.', 'Vice Grip', '20', 'Lightning', 'Fire', '1', 98, 1, 3, 1),
(80, 'Kingler', 'Its large and hard pincer has 10,000 horsepower of crushing power.', 'Crabhammer', '60', 'Lightning', 'Fire', '2', 99, 1, 3, 2),
(40, 'Voltorb', 'Usually found in power plants. Easily mistaken for a Poké Ball, it has zapped many people.', 'Self‑Destruct', '60', 'Fighting', 'Metal', '1', 100, 1, 4, 1);

-- Seed : First Generation Pokémon Cards from #101-#120
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
(40, 'Electrode', 'It stores electrical energy inside its body. Even the slightest shock could trigger a huge explosion.', 'Explosion', '80', 'Fighting', 'Metal', '1', 101, 1, 4, 2),
(40, 'Exeggcute', 'Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.', 'Hypnosis', '0', 'Fire', 'Water', '1', 102, 1, 1, 1),
(95, 'Exeggutor', 'Legend has it that on rare occasions, one of its heads will drop off and continue on as an Exeggcute.', 'Stomp', '60', 'Fire', 'Water', '2', 103, 1, 1, 2),
(40, 'Cubone', 'Wears the skull of its deceased mother. Its cries echo inside the skull and sound sad.', 'Bone Club', '20', 'Water', 'Grass', '1', 104, 1, 6, 1),
(80, 'Marowak', 'The bone it holds is its weapon. It throws the bone skillfully like a boomerang.', 'Bonemerang', '50', 'Water', 'Grass', '2', 105, 1, 6, 2),
(40, 'Hitmonlee', 'Known for its excellent kicking skills. Its legs freely stretch and contract like springs.', 'High Jump Kick', '60', 'Psychic', 'Darkness', '2', 106, 1, 6, 1),
(40, 'Hitmonchan', 'Punches in flurries with its piston‑like arms. Its punches are said to be faster than bullets.', 'Mach Punch', '30', 'Psychic', 'Darkness', '2', 107, 1, 6, 1),
(40, 'Lickitung', 'Its tongue is twice the length of its body. It can be moved like an arm for grabbing food.', 'Lick', '20', 'Fighting', 'Psychic', '2', 108, 1, 11, 1),
(40, 'Koffing', 'Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.', 'Smog', '20', 'Psychic', 'Grass', '1', 109, 1, 6, 1),
(80, 'Weezing', 'Where two kinds of toxic gases meet, two Koffing can fuse into a Weezing over many years.', 'Sludge Bomb', '60', 'Psychic', 'Grass', '2', 110, 1, 6, 2),
(40, 'Rhyhorn', 'Its massive bones are 1000 times harder than human bones. It can easily knock a trailer flying.', 'Horn Attack', '30', 'Water', 'Grass', '1', 111, 1, 6, 1),
(100, 'Rhydon', 'Protected by an armor‑like hide, it is capable of living in molten lava of 3,600 degrees.', 'Rock Blast', '60', 'Water', 'Grass', '2', 112, 1, 6, 2),
(40, 'Chansey', 'A rare and elusive Pokémon that is said to bring happiness to those who manage to catch it.', 'Egg Bomb', '40', 'Fighting', 'Psychic', '1', 113, 1, 11, 1),
(40, 'Tangela', 'Its body is covered by blue vines. No one has ever seen the face hidden behind this growth.', 'Vine Whip', '20', 'Fire', 'Water', '1', 114, 1, 1, 1),
(40, 'Kangaskhan', 'Raises its young in its belly pouch. It is skilled at attacking while protecting its child.', 'Comet Punch', '30', 'Fighting', 'Psychic', '2', 115, 1, 11, 1),
(40, 'Horsea', 'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.', 'Bubble', '20', 'Lightning', 'Fire', '1', 116, 1, 3, 1),
(80, 'Seadra', 'Its fins and bones are sharp and venomous. It spins its body to swim quickly through the sea.', 'Water Gun', '40', 'Lightning', 'Fire', '2', 117, 1, 3, 2),
(40, 'Goldeen', 'Its dorsal, pectoral and tail fins wave elegantly in water. That is why it is known as the Water Queen.', 'Horn Attack', '20', 'Lightning', 'Fire', '1', 118, 1, 3, 1),
(80, 'Seaking', 'In autumn, its body becomes more robust. It takes on a crimson hue to prepare for spawning.', 'Waterfall', '60', 'Lightning', 'Fire', '2', 119, 1, 3, 2),
(40, 'Staryu', 'If its body is torn, it can regenerate. The core shines in many colors at night.', 'Swift', '30', 'Lightning', 'Fire', '1', 120, 1, 3, 1);

-- Seed : First Generation Pokémon Cards from #121-#140
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
(80, 'Starmie', 'Its central core glows with the seven colors of the rainbow. Some people value it as a gem.', 'Psywave', '40', 'Lightning', 'Fire', '2', 121, 1, 3, 2),
(40, 'Mr. Mime', 'If interrupted while miming, it will slap around the offender with its broad hands.', 'Barrier', '0', 'Psychic', 'Darkness', '2', 122, 1, 5, 1),
(40, 'Scyther', 'Leaps out of tall grass and slices prey with its scythes. It is rarely seen in motion.', 'Slash', '30', 'Fire', 'Water', '1', 123, 1, 6, 1),
(80, 'Jynx', 'Appears to move rhythmically, as if it were dancing. It wiggles its hips as it walks.', 'Lovely Kiss', '0', 'Psychic', 'Darkness', '2', 124, 1, 5, 1),
(40, 'Electabuzz', 'Normally found near power plants. They can wander away and cause major blackouts in cities.', 'Thunder Punch', '40', 'Fighting', 'Metal', '2', 125, 1, 4, 1),
(40, 'Magmar', 'Found near volcanic craters. Its body is always cloaked in flames, so it looks like a ball of fire.', 'Flamethrower', '50', 'Water', 'Grass', '2', 126, 1, 2, 1),
(40, 'Pinsir', 'If it fails to crush the foe in its pincers, it will swing it around and toss it hard.', 'Vice Grip', '30', 'Fire', 'Water', '2', 127, 1, 6, 1),
(40, 'Tauros', 'When it targets an enemy, it charges furiously while whipping its tail.', 'Take Down', '60', 'Fighting', 'Psychic', '2', 128, 1, 11, 1),
(40, 'Magikarp', 'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.', 'Splash', '0', 'Lightning', 'Fire', '1', 129, 1, 3, 1),
(80, 'Gyarados', 'Rarely seen in the wild. Huge and vicious, it is capable of destroying entire cities in a rage.', 'Hyper Beam', '100', 'Lightning', 'Fire', '3', 130, 1, 3, 2),
(40, 'Lapras', 'A gentle soul that can understand human speech. It ferries people across seas on its back.', 'Ice Beam', '60', 'Lightning', 'Fire', '2', 131, 1, 3, 1),
(40, 'Ditto', 'Capable of copying an enemy’s genetic code to instantly transform itself into a duplicate of the enemy.', 'Transform', '0', 'Fighting', 'Psychic', '1', 132, 1, 11, 1),
(40, 'Eevee', 'Its genetic code is unstable, so it could evolve in a variety of ways.', 'Quick Attack', '20', 'Fighting', 'Psychic', '1', 133, 1, 11, 1),
(80, 'Vaporeon', 'Lives close to water. Its long tail is ridged with a fin that is often mistaken for a mermaid’s.', 'Water Gun', '40', 'Lightning', 'Fire', '2', 134, 1, 3, 2),
(80, 'Jolteon', 'It accumulates negative ions in the atmosphere to blast out lightning bolts.', 'Thunderbolt', '60', 'Fighting', 'Metal', '2', 135, 1, 4, 2),
(80, 'Flareon', 'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.', 'Flamethrower', '60', 'Water', 'Grass', '2', 136, 1, 2, 2),
(40, 'Porygon', 'The only Pokémon people anticipate can fly into space someday. It was created by computer science.', 'Conversion', '0', 'Fighting', 'Psychic', '1', 137, 1, 11, 1),
(40, 'Omanyte', 'Although long extinct, in rare cases, it can be resurrected from fossils.', 'Constrict', '20', 'Grass', 'Fire', '1', 138, 1, 3, 1),
(80, 'Omastar', 'Its tentacles are highly developed as if they were hands. It uses them to ensnare prey.', 'Spike Cannon', '40', 'Grass', 'Fire', '2', 139, 1, 3, 2),
(40, 'Kabuto', 'A Pokémon that was resurrected from a fossil found in what was once the ocean floor.', 'Scratch', '20', 'Grass', 'Fire', '1', 140, 1, 3, 1);


-- Seed : First Generation Pokémon Cards from #141-#151
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
) VALUES
(80, 'Kabutops', 'Its sleek body is adapted for swimming. It slices prey with its sharp sickles and drinks the fluids.', 'Slash', '40', 'Grass', 'Fire', '2', 141, 1, 3, 2),
(100, 'Aerodactyl', 'A ferocious prehistoric Pokémon that goes for the enemy’s throat with its serrated fangs.', 'Wing Attack', '60', 'Lightning', 'Fighting', '2', 142, 1, 11, 1),
(40, 'Snorlax', 'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.', 'Body Slam', '60', 'Fighting', 'Psychic', '4', 143, 1, 11, 1),
(40, 'Articuno', 'A legendary bird Pokémon that can control ice. The flapping of its wings chills the air.', 'Ice Beam', '70', 'Lightning', 'Fire', '3', 144, 1, 3, 1),
(40, 'Zapdos', 'A legendary bird Pokémon that is said to appear when the sky turns dark and lightning flashes.', 'Thunder', '70', 'Fighting', 'Metal', '3', 145, 1, 4, 1),
(40, 'Moltres', 'Known as the legendary bird of fire. Every flap of its wings creates a dazzling blaze of flames.', 'Flamethrower', '70', 'Water', 'Grass', '3', 146, 1, 2, 1),
(40, 'Dratini', 'Long considered a mythical Pokémon until recently, when a small colony was found living underwater.', 'Wrap', '20', 'Dragon', 'Fairy', '1', 147, 1, 9, 1),
(80, 'Dragonair', 'A mystical Pokémon that exudes a gentle aura. Has the ability to change the weather.', 'Dragon Rage', '40', 'Dragon', 'Fairy', '2', 148, 1, 9, 2),
(120, 'Dragonite', 'An extremely rare Pokémon that is said to fly faster than the speed of sound.', 'Hyper Beam', '100', 'Dragon', 'Fairy', '3', 149, 1, 9, 3),
(40, 'Mewtwo', 'Created by a scientist after years of horrific gene‑splicing and DNA engineering experiments.', 'Psychic', '100', 'Psychic', 'Darkness', '3', 150, 1, 5, 1),
(40, 'Mew', 'So rare that it is said to be a mirage. Experts believe it can learn any move.', 'Metronome', '0', 'Psychic', 'Darkness', '1', 151, 1, 5, 1);
