import crafttweaker.api.loot.modifier.CommonLootModifiers;

<block:complexhex:hexbox>.addLootModifier("hexxytest/drop_hexbox", CommonLootModifiers.add(<item:complexhex:hexbox>));
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:complexhex:hexbox>);

<block:complexhex:inert_record>.addLootModifier("hexxytest/drop_inert_record", CommonLootModifiers.add(<item:complexhex:inert_record>));
<tag:blocks:minecraft:mineable/pickaxe>.add(<block:complexhex:inert_record>);
