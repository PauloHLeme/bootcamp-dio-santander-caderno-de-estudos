# Prompts para geração de Seeds

## Primeiro Prompt

>Create now an innitial seed for all tables with the TCG Pokemon cards in mind, generate insert scripts as well

### Resultado

Perfect — let’s generate a **starter seed** for your four tables (`tbl_collections`, `tbl_types`, `tbl_stages`, `tbl_cards`) with Pokémon TCG–appropriate data. This will give you a working dataset to test queries and relationships.

```sql
-- Seed collections
INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102),
('Jungle', '1999-06-16', 64),
('Fossil', '1999-10-10', 62);

-- Seed types
INSERT INTO tbl_types (typeName)
VALUES
('Grass'),
('Fire'),
('Water'),
('Lightning'),
('Psychic'),
('Fighting'),
('Darkness'),
('Metal'),
('Dragon'),
('Fairy'),
('Colorless');

-- Seed stages
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'),
('Stage 1'),
('Stage 2'),
('Mega'),
('GX'),
('V'),
('VMAX');

-- Seed cards
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES
(60, 'Bulbasaur', 'Seed Pokémon', 'Vine Whip', '20', 'Fire', 'Water', '1',
 1, 1, 1, 1),

(50, 'Charmander', 'Lizard Pokémon', 'Ember', '30', 'Water', 'Grass', '1',
 4, 1, 2, 1),

(50, 'Squirtle', 'Tiny Turtle Pokémon', 'Bubble', '10', 'Lightning', 'Fire', '1',
 7, 1, 3, 1),

(40, 'Pikachu', 'Mouse Pokémon', 'Thunder Jolt', '30', 'Fighting', 'Metal', '1',
 58, 1, 4, 1),

(60, 'Jigglypuff', 'Balloon Pokémon', 'Pound', '20', 'Psychic', 'Darkness', '1',
 54, 2, 11, 1),

(90, 'Snorlax', 'Sleeping Pokémon', 'Body Slam', '30', 'Fighting', 'Psychic', '4',
 11, 2, 11, 1),

(100, 'Gengar', 'Shadow Pokémon', 'Nightmare', '40', 'Darkness', 'Fighting', '2',
 5, 3, 5, 2);
```

### 🔎 What this seed does
- **Collections**: Adds the first three classic sets (*Base Set*, *Jungle*, *Fossil*).  
- **Types**: Covers the major Pokémon TCG energy types.  
- **Stages**: Includes evolution stages and modern mechanics (GX, V, VMAX).  
- **Cards**: Inserts iconic Pokémon (Bulbasaur, Charmander, Squirtle, Pikachu, Jigglypuff, Snorlax, Gengar) linked to their collection, type, and stage.  

This gives you a **normalized dataset** where:
- Each card references its **collection** (`collection_id`),  
- Its **type** (`type_id`),  
- And its **stage** (`stage_id`).  

👉 Do you want me to expand this seed with **all 151 original Pokémon from the Base Set** (or just a handful of iconic ones for testing)?

## Segundo Prompt

> Yes, do it, please, all the original pokemon, but this time, make a info with a more descriptive text, like the entryes found in the pokedex

### Resultado

**Direct answer:** Seeding all 151 original Pokémon with full Pokédex‑style descriptive text is possible, but the script will be extremely large. Below I’ll show you how to structure the inserts for all four tables, and provide a representative batch (Bulbasaur through Charizard). You can then extend the same pattern to the remaining Pokémon using Pokédex entries from sources like [Bulbapedia](https://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_National_Pok%C3%A9dex_number), [Serebii](https://www.serebii.net/pokemon/gen1pokemon.shtml), or [Wikipedia](https://en.wikipedia.org/wiki/List_of_generation_I_Pok%C3%A9mon).  

---

### 🗂️ Initial Seeds for All Tables

```sql
-- Collections
INSERT INTO tbl_collections (collectionSetName, releaseDate, totalCardsInCollection)
VALUES
('Base Set', '1999-01-09', 102);

-- Types
INSERT INTO tbl_types (typeName)
VALUES
('Grass'), ('Fire'), ('Water'), ('Lightning'),
('Psychic'), ('Fighting'), ('Darkness'), ('Metal'),
('Dragon'), ('Fairy'), ('Colorless');

-- Stages
INSERT INTO tbl_stages (stageName)
VALUES
('Basic'), ('Stage 1'), ('Stage 2');
```

---

### 🌱 Example Pokémon Inserts (Bulbasaur → Charizard)

```sql
-- Bulbasaur (#001)
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES (
    60, 'Bulbasaur',
    'A strange seed was planted on its back at birth. The plant sprouts and grows with this Pokémon.',
    'Vine Whip', '20', 'Fire', 'Water', '1',
    1, 1, 1, 1
);

-- Ivysaur (#002)
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES (
    80, 'Ivysaur',
    'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.',
    'Razor Leaf', '30', 'Fire', 'Water', '2',
    2, 1, 1, 2
);

-- Venusaur (#003)
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES (
    100, 'Venusaur',
    'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.',
    'Solar Beam', '60', 'Fire', 'Water', '3',
    3, 1, 1, 3
);

-- Charmander (#004)
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES (
    50, 'Charmander',
    'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.',
    'Ember', '30', 'Water', 'Grass', '1',
    4, 1, 2, 1
);

-- Charmeleon (#005)
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES (
    80, 'Charmeleon',
    'When it swings its burning tail, it elevates the temperature to unbearably high levels.',
    'Flamethrower', '50', 'Water', 'Grass', '2',
    5, 1, 2, 2
);

-- Charizard (#006)
INSERT INTO tbl_cards (
    hp, name, info, attack, damage, weak, ressistance, retreat,
    cardNumberInCollection, collection_id, type_id, stage_id
)
VALUES (
    120, 'Charizard',
    'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.',
    'Fire Spin', '100', 'Water', 'Grass', '3',
    6, 1, 2, 3
);
```

---

### ⚡ How to Scale to All 151 Pokémon
- **Source Pokédex text**: Use official entries from Bulbapedia, Serebii, or Wikipedia.  
- **HP values & attacks**: Adjust based on TCG card stats or approximate from early sets.  
- **Type & stage IDs**: Match each Pokémon’s primary type and evolution stage.  
- **Collection ID**: For the original 151, most belong to the *Base Set* (ID = 1).  

---

✅ This structure ensures every Pokémon has a **descriptive Pokédex-style info field**, normalized type/stage references, and proper linkage to its collection.  

Would you like me to **generate the full 151‑Pokémon insert script automatically** (it will be very large), or would you prefer me to prepare it in **chunks of 20 Pokémon at a time** so it’s easier to manage?

## Terceiro Prompt

> Yes, please, do chunks of 20, but this time put all in only one INSERT INTO statement

### Resultado
Perfect, Paulo — let’s start chunking the **original 151 Pokémon** into groups of 20, each group inside a **single `INSERT INTO tbl_cards` statement**. Each entry will include Pokédex‑style descriptive text, normalized type/stage IDs, and linkage to the Base Set collection (ID = 1).  

Here’s the **first chunk (Pokémon #001–#020)**:

```sql
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
```

---

### ⚡ Notes
- **`collection_id = 1`** → All belong to *Base Set*.  
- **`type_id`** → Matches the type table (Grass=1, Fire=2, Water=3, Lightning=4, Psychic=5, Fighting=6, Darkness=7, Metal=8, Dragon=9, Fairy=10, Colorless=11).  
- **`stage_id`** → Basic=1, Stage 1=2, Stage 2=3.  
- **`info`** → Uses Pokédex‑style descriptive text.  

---

Would you like me to continue with the **next chunk (#021–#040)** in the same format, so you can build the full 151 step by step?

# Quarto Prompt

> Yes, please

### Resultado

Here’s the **next chunk (#021–#040)** in a single `INSERT INTO` statement, continuing the seed for the original 151 Pokémon with Pokédex‑style descriptive text:

```sql
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
```

---

### ⚡ Notes
- All entries are linked to **Base Set (collection_id = 1)**.  
- Types and stages follow the same mapping as before.  
- `info` field uses Pokédex‑style descriptive text.  

Would you like me to continue with **Pokémon #041–#060** in the same format next?

# Quinto Prompt

> Yes, keep this consistency, the results are going exactly as expected

### Resultado

Excellent, Paulo — let’s keep the rhythm going. Here’s the **third chunk (#041–#060)** in one `INSERT INTO` statement, continuing with Pokédex‑style descriptive text and the same normalization pattern:

```sql
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
```

---

⚡ Same consistency:
- **Base Set** collection (`collection_id = 1`).  
- **Type IDs** mapped correctly (Grass=1, Fire=2, Water=3, Lightning=4, Psychic=5, Fighting=6, Colorless=11, etc.).  
- **Stage IDs** (Basic=1, Stage 1=2, Stage 2=3).  
- **Info** fields are Pokédex‑style descriptive texts.  

Would you like me to roll out the **next batch (#061–#080)** right away so we keep the flow uninterrupted?