import crafttweaker.api.ingredient.IIngredient;


// Rip allays (or well, ripping less allays?)
<recipetype:hexcasting:brainsweep>.removeByName("hexcasting:brainsweep/quench_allay");
<recipetype:hexcasting:brainsweep>.addJsonRecipe("hex_quench_allay", {
    blockIn: {type: "block", block: "minecraft:amethyst_block"},
    cost: 1500000,
    entityIn: {type: "entity_type", entityType: "minecraft:allay"},
    result: { name: "hexcasting:quenched_allay" }
});

craftingTable.addShaped("hex_slate_ameythest_tiles", <item:hexcasting:slate_amethyst_tiles>*4, [
    [<item:minecraft:amethyst_block>, <item:hexcasting:slate_block>],
    [<item:hexcasting:slate_block>, <item:minecraft:amethyst_block>],
]);


registerBlock(<item:hexcasting:slate_amethyst_tiles>,
    [<item:hexcasting:slate_amethyst_bricks_small>, <item:hexcasting:slate_amethyst_bricks>, <item:hexcasting:slate_amethyst_pillar>]);
registerBlock(<item:hexcasting:quenched_allay>,
    [<item:hexcasting:quenched_allay_tiles>, <item:hexcasting:quenched_allay_bricks_small>, <item:hexcasting:quenched_allay_bricks>]);
registerBlock(<item:minecraft:amethyst_block>, 
    [<item:hexcasting:amethyst_tiles>, <item:hexcasting:amethyst_bricks_small>, <item:hexcasting:amethyst_bricks>, <item:hexcasting:amethyst_pillar>]
); // Note for those reading: hexcasting:amethyst_tiles already has a recipe, but you cant "back craft" it into Amethyst Blocks
registerBlock(<item:hexcasting:slate_block>,
    [<item:hexcasting:slate_tiles>, <item:hexcasting:slate_bricks_small>, <item:hexcasting:slate_bricks>, <item:hexcasting:slate_pillar>]);

function registerBlock(input as IIngredient, items as IIngredient[]) as void{
    for k, v in items {
        stoneCutter.addRecipe("hex_" + v.items[0].descriptionId, input, v);
        stoneCutter.addRecipe("hex_backwards" + v.items[0].descriptionId, v, input);
    }
}
