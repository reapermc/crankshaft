# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 26,
    "description": ""
  }
}
```

### demo

`@function(strip_final_newline) demo:main`

```mcfunction

```

### reapermc

`@function reapermc:crankshaft/builtin_event/tick/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_tick/dependency_entrypoint/tick
function reapermc:crankshaft/builtin_event/player_respawn/dependency_entrypoint/tick
```

`@function reapermc:crankshaft/builtin_event/player_tick/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_join/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_charge_bow/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_charge_bow_end/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_use_coas/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_use_wfoas/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_jump/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_land/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_die/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_airborne/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_airborne_end/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_sneak/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_sneak_end/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_sprint/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_sprint_end/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_swim/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_swim_end/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_glide/dependency_entrypoint/player_tick
function reapermc:crankshaft/builtin_event/player_glide_end/dependency_entrypoint/player_tick
```

`@function reapermc:crankshaft/builtin_event/tick/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/tick/__payload_fork__
function reapermc:crankshaft/builtin_event/tick/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_tick/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_tick/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_tick/__payload_fork__
function reapermc:crankshaft/builtin_event/player_tick/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_use_coas/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_use_coas/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_use_coas/__payload_fork__
function reapermc:crankshaft/builtin_event/player_use_coas/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_use_coas/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_use_coas.use 0
function reapermc:crankshaft/builtin_event/player_use_coas/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/tick/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_tick/dependency_entrypoint/tick`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_use_coas/dependency_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_use_coas.use matches 1.. run function reapermc:crankshaft/builtin_event/player_use_coas/dependency_entrypoint/player_tick/nested_execute_0
```

`@function_tag reapermc:crankshaft/builtin_event/player_use_coas/__payload_fork__`

```json
{
  "values": [
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/player_use_coas/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/player_use_coas/__payload__",
      "required": false
    },
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/player_use_coas/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_tick/__payload_fork__`

```json
{
  "values": [
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/player_tick/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/player_tick/__payload__",
      "required": false
    },
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/player_tick/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/tick/__payload_fork__`

```json
{
  "values": [
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/tick/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/tick/__payload__",
      "required": false
    },
    {
      "id": "custom_event:reapermc/crankshaft/builtin_event/tick/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

### custom_event

`@function custom_event:reapermc/crankshaft/custom_event/custom_load/__on_trigger__`

```mcfunction
function custom_event:reapermc/crankshaft/custom_event/custom_load/__ce_early_dep_runner__
function custom_event:reapermc/crankshaft/custom_event/custom_load/__payload__
function custom_event:reapermc/crankshaft/custom_event/custom_load/__ce_dep_runner
```

`@function custom_event:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft.builtin_event.player_use_coas.use used:carrot_on_a_stick
```

`@function custom_event:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function custom_event:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function custom_event:reapermc/wicked_expressions/loader`

```mcfunction
function custom_event:reapermc/wicked_expressions/loader/prio_0
function custom_event:reapermc/wicked_expressions/loader/prio_1
function custom_event:reapermc/wicked_expressions/loader/prio_2
```

`@function custom_event:reapermc/crankshaft/custom_event/player_use_magic_wand/__on_trigger__`

```mcfunction
function custom_event:reapermc/crankshaft/custom_event/player_use_magic_wand/__ce_early_dep_runner__
function custom_event:reapermc/crankshaft/custom_event/player_use_magic_wand/__payload__
function custom_event:reapermc/crankshaft/custom_event/player_use_magic_wand/__ce_dep_runner
```

`@function custom_event:reapermc/crankshaft/custom_event/player_use_magic_wand/__payload__/nested_execute_0`

```mcfunction
summon sheep ~ ~ ~ {CustomName: '{"text": "jeb_"}'}
particle firework ~ ~ ~ 0 0 0 0.2 50 force
particle flash ~ ~ ~ 0 0 0 0 0 force
```

`@function custom_event:reapermc/crankshaft/builtin_event/player_tick/__ce_dep_runner__`

```mcfunction
function custom_event:reapermc/crankshaft/custom_event/mined_stone_block/dependency_entrypoint/player_tick
```

`@function custom_event:reapermc/crankshaft/builtin_event/player_use_coas/__ce_dep_runner__`

```mcfunction
function custom_event:reapermc/crankshaft/custom_event/player_use_magic_wand/dependency_entrypoint/player_use_coas
```

`@function custom_event:reapermc/crankshaft/custom_event/custom_load/__event_init__`

```mcfunction
function custom_event:reapermc/crankshaft/custom_event/custom_load/__on_trigger__
```

`@function custom_event:reapermc/crankshaft/custom_event/custom_load/__payload__`

```mcfunction
say hai!
```

`@function custom_event:reapermc/crankshaft/custom_event/player_use_magic_wand/dependency_entrypoint/player_use_coas`

```mcfunction
execute if data entity @s SelectedItem.tag{custom_item_id: "magic_wand"} run function custom_event:reapermc/crankshaft/custom_event/player_use_magic_wand/__on_trigger__
```

`@function custom_event:reapermc/crankshaft/custom_event/player_use_magic_wand/__payload__`

```mcfunction
execute anchored eyes positioned ^ ^ ^6 run function custom_event:reapermc/crankshaft/custom_event/player_use_magic_wand/__payload__/nested_execute_0
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "custom_event:reapermc/crankshaft/custom_event/custom_load/__event_init__",
    "custom_event:reapermc/wicked_expressions/loader"
  ]
}
```

`@function_tag minecraft:tick`

```json
{
  "values": [
    "reapermc:crankshaft/builtin_event/tick/__event_init__"
  ]
}
```
