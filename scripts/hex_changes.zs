craftingTable.remove(<item:phlexiful:battery_pants>);
craftingTable.remove(<item:phlexiful:media_weave>);

// Rip allays (or well, ripping less allays?)
<recipetype:hexcasting:brainsweep>.removeByName("hexcasting:brainsweep/quench_allay");
<recipetype:hexcasting:brainsweep>.addJsonRecipe("hex_quench_allay", {
    blockIn: {type: "block", block: "minecraft:amethyst_block"},
    cost: 1500000,
    entityIn: {type: "entity_type", entityType: "minecraft:allay"},
    result: { name: "hexcasting:quenched_allay" }
});
