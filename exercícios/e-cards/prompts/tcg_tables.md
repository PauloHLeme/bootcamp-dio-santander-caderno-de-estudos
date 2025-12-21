# Engenharia de Prompt Utilizada

## Prompt Inicial

### Ação
>create a script to create a table in postgreesql

### Contexto
>the first table is a table to save a pokemon tcg cards
the second table is a table to save collections set
Connect the two table with foreing key

### Informações

>the first table:tlb_cards
>- id
>- hp
>- name
>- type
>- stage
>- info
>- attack
>- damage
>- weak
>- ressistance
>- retreat
>- cardNumberInCollection
>
>the second table:tbl_collections
>- id
>- collectionSetName
>- releaseDate
>- totalCardsInCollection

### Resultado

Here’s a complete PostgreSQL script to create the two tables (`tbl_cards` and `tbl_collections`) and connect them with a foreign key relationship:

```sql
-- Create table for collections
CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collectionSetName VARCHAR(255) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection INT NOT NULL
);

-- Create table for cards
CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INT,
    name VARCHAR(255) NOT NULL,
    type VARCHAR(100),
    stage VARCHAR(100),
    info TEXT,
    attack VARCHAR(255),
    damage VARCHAR(50),
    weak VARCHAR(100),
    ressistance VARCHAR(100),
    retreat VARCHAR(100),
    cardNumberInCollection INT NOT NULL,
    collection_id INT NOT NULL,
    CONSTRAINT fk_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections (id)
        ON DELETE CASCADE
);
```

#### 🔎 Explanation
- **`tbl_collections`**  
  - Holds metadata about each Pokémon TCG collection set.  
  - `id` is the primary key.  
  - `releaseDate` is stored as a `DATE`.  
  - `totalCardsInCollection` is an integer.  

- **`tbl_cards`**  
  - Stores individual card details.  
  - `collection_id` links each card to its collection set.  
  - Foreign key constraint ensures referential integrity with `tbl_collections`.  
  - `ON DELETE CASCADE` means if a collection is deleted, all its cards are automatically deleted.  

Would you like me to also add **indexes** (e.g., on `cardNumberInCollection` or `name`) to optimize searches, or keep it simple for now?

## Segundo Prompt

>optimize the varchar fields to the perfect size

### Resultado

Got it 👍 — let’s refine the schema by giving each `VARCHAR` field a size that matches realistic Pokémon TCG card data. The goal is to avoid oversized fields (which waste space) while still allowing enough room for the longest expected values.

Here’s an optimized version:

```sql
-- Table for collections
CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,   -- Most set names < 100 chars
    releaseDate DATE NOT NULL,
    totalCardsInCollection INT NOT NULL
);

-- Table for cards
CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INT,
    name VARCHAR(80) NOT NULL,                 -- Pokémon names rarely exceed 30–40 chars, 80 is safe
    type VARCHAR(20),                          -- Types like "Fire", "Water", "Psychic" fit easily
    stage VARCHAR(20),                         -- "Basic", "Stage 1", "Stage 2", "Mega" etc.
    info TEXT,                                 -- Freeform description, keep as TEXT
    attack VARCHAR(100),                       -- Attack names usually < 50 chars, 100 is safe
    damage VARCHAR(10),                        -- Numeric or symbols like "30+", "120x"
    weak VARCHAR(20),                          -- Weakness type, e.g., "Fire", "Darkness"
    ressistance VARCHAR(20),                   -- Resistance type, same as weakness
    retreat VARCHAR(20),                       -- Retreat cost, e.g., "1 Energy", "★★"
    cardNumberInCollection INT NOT NULL,
    collection_id INT NOT NULL,
    CONSTRAINT fk_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections (id)
        ON DELETE CASCADE
);
```

### ⚡ Why these sizes?
- **`collectionSetName VARCHAR(100)`** → Longest official set names (e.g., *Sun & Moon—Unbroken Bonds*) are under 60 chars, so 100 is plenty.  
- **`name VARCHAR(80)`** → Pokémon names are short, but some special cards (e.g., *Mewtwo & Mew-GX*) can stretch.  
- **`type VARCHAR(20)` / `stage VARCHAR(20)`** → Types and stages are short keywords.  
- **`attack VARCHAR(100)`** → Some attacks have long names (*“Crimson Dive GX”*), but rarely exceed 50 chars.  
- **`damage VARCHAR(10)`** → Damage values are small numbers or symbols.  
- **`weak` / `ressistance` / `retreat VARCHAR(20)`** → These fields store short descriptors.  
- **`info TEXT`** → Card lore or effect text can be long, so `TEXT` is best.  

👉 This schema balances efficiency with flexibility. If you expect **multilingual sets** (Japanese, Portuguese, etc.), we might bump `name` and `attack` to `VARCHAR(120)` to cover longer Unicode strings.  

Would you like me to also add **indexes** on `name` and `collection_id` so searches by Pokémon name or collection are faster?

## Terceiro Prompt

>remove comments, and never use them in the scripts, please

### Resultado

```sql
CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection INT NOT NULL
);

CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INT,
    name VARCHAR(80) NOT NULL,
    type VARCHAR(20),
    stage VARCHAR(20),
    info TEXT,
    attack VARCHAR(100),
    damage VARCHAR(10),
    weak VARCHAR(20),
    ressistance VARCHAR(20),
    retreat VARCHAR(20),
    cardNumberInCollection INT NOT NULL,
    collection_id INT NOT NULL,
    CONSTRAINT fk_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections (id)
        ON DELETE CASCADE
);
```

## Quarto Prompt

>create another tables and link to tbl_cards. 
>Create a table to separate type and another one to separate stage.

### Resultado

Here’s a clean PostgreSQL script that creates two new tables (`tbl_types` and `tbl_stages`) and links them to `tbl_cards` using foreign keys. This way, card types and stages are normalized into separate tables instead of being stored as plain text fields:

```sql
CREATE TABLE tbl_types (
    id SERIAL PRIMARY KEY,
    typeName VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE tbl_stages (
    id SERIAL PRIMARY KEY,
    stageName VARCHAR(20) NOT NULL UNIQUE
);

ALTER TABLE tbl_cards
    DROP COLUMN type,
    DROP COLUMN stage,
    ADD COLUMN type_id INT,
    ADD COLUMN stage_id INT,
    ADD CONSTRAINT fk_type
        FOREIGN KEY (type_id)
        REFERENCES tbl_types (id)
        ON DELETE SET NULL,
    ADD CONSTRAINT fk_stage
        FOREIGN KEY (stage_id)
        REFERENCES tbl_stages (id)
        ON DELETE SET NULL;
```

#### 🔎 What this does
- **`tbl_types`** → Holds Pokémon card types (e.g., Fire, Water, Psychic).  
- **`tbl_stages`** → Holds evolution stages (e.g., Basic, Stage 1, Stage 2).  
- **`tbl_cards`** → Now references these tables via `type_id` and `stage_id`.  
- `ON DELETE SET NULL` ensures that if a type or stage is removed, the card record remains but its reference is cleared.  

This design makes your database more **normalized** and avoids repeating strings across thousands of cards.  

Would you like me to also populate `tbl_types` and `tbl_stages` with the **official Pokémon TCG values** (like Fire, Water, Grass, Basic, Stage 1, Stage 2) so you have ready-to-use lookup data?

## Quinto Prompt

> I have not created any table yet. Redo the code creating all the four tables at once.

### Resultado

```sql
CREATE TABLE tbl_collections (
    id SERIAL PRIMARY KEY,
    collectionSetName VARCHAR(100) NOT NULL,
    releaseDate DATE NOT NULL,
    totalCardsInCollection INT NOT NULL
);

CREATE TABLE tbl_types (
    id SERIAL PRIMARY KEY,
    typeName VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE tbl_stages (
    id SERIAL PRIMARY KEY,
    stageName VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE tbl_cards (
    id SERIAL PRIMARY KEY,
    hp INT,
    name VARCHAR(80) NOT NULL,
    info TEXT,
    attack VARCHAR(100),
    damage VARCHAR(10),
    weak VARCHAR(20),
    ressistance VARCHAR(20),
    retreat VARCHAR(20),
    cardNumberInCollection INT NOT NULL,
    collection_id INT NOT NULL,
    type_id INT,
    stage_id INT,
    CONSTRAINT fk_collection
        FOREIGN KEY (collection_id)
        REFERENCES tbl_collections (id)
        ON DELETE CASCADE,
    CONSTRAINT fk_type
        FOREIGN KEY (type_id)
        REFERENCES tbl_types (id)
        ON DELETE SET NULL,
    CONSTRAINT fk_stage
        FOREIGN KEY (stage_id)
        REFERENCES tbl_stages (id)
        ON DELETE SET NULL
);
```