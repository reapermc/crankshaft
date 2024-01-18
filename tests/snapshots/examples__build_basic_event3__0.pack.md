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

### basic_event3

`@function basic_event3:reapermc/wicked_expressions/loader/prio_0`

```mcfunction
help --- DO_NOT_DELETE ---
scoreboard objectives add reapermc.crankshaft dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.__generic__ dummy
scoreboard objectives add reapermc.crankshaft.custom_event.__generic__ dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_join.join custom:leave_game
scoreboard objectives add reapermc.crankshaft.builtin_event.player_charge_bow.charge_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_charge_bow_end.charge_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_shot_bow.charge_time dummy
scoreboard objectives add reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow used:bow
scoreboard objectives add reapermc.crankshaft.builtin_event.player_jump.jump custom:jump
scoreboard objectives add reapermc.crankshaft.builtin_event.player_die.death deathCount
scoreboard objectives add reapermc.crankshaft.builtin_event.player_respawn.death deathCount
scoreboard objectives add reapermc.crankshaft.builtin_event.player_use_coas.use used:carrot_on_a_stick
scoreboard objectives add reapermc.crankshaft.builtin_event.player_use_wfoas.use used:warped_fungus_on_a_stick
```

`@function basic_event3:reapermc/wicked_expressions/loader/prio_1`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event3:reapermc/wicked_expressions/loader/prio_2`

```mcfunction
help --- DO_NOT_DELETE ---
```

`@function basic_event3:reapermc/wicked_expressions/loader`

```mcfunction
function basic_event3:reapermc/wicked_expressions/loader/prio_0
function basic_event3:reapermc/wicked_expressions/loader/prio_1
function basic_event3:reapermc/wicked_expressions/loader/prio_2
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_load/__payload__`

```mcfunction
say loaded!
give @s gold_ingot
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow/__payload__`

```mcfunction
scoreboard players operation $basic_event3#copy_args$0 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time
tellraw @s ["charging bow: ", {"score": {"name": "$basic_event3#copy_args$0", "objective": "reapermc.wicked_expressions"}}]
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow_start/__payload__`

```mcfunction
tellraw @s "started charging bow!"
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow_end/__payload__`

```mcfunction
scoreboard players operation $basic_event3#copy_args$1 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_charge_bow_end.charge_time
tellraw @s ["finished charging: ", {"score": {"name": "$basic_event3#copy_args$1", "objective": "reapermc.wicked_expressions"}}]
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_shot_bow/__payload__`

```mcfunction
scoreboard players operation $basic_event3#copy_args$2 reapermc.wicked_expressions = @s reapermc.crankshaft.builtin_event.player_shot_bow.charge_time
tellraw @s ["shot bow: ", {"score": {"name": "$basic_event3#copy_args$2", "objective": "reapermc.wicked_expressions"}}]
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_jump/__payload__`

```mcfunction
say jumped!
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_land/__payload__`

```mcfunction
say landed!
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_die/__payload__`

```mcfunction
say died!
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_respawn/__payload__`

```mcfunction
say respawned!
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_use_coas/__payload__`

```mcfunction
say used coas!
```

`@function basic_event3:reapermc/crankshaft/builtin_event/player_use_wfoas/__payload__`

```mcfunction
say used wfoas!
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "basic_event3:reapermc/wicked_expressions/loader",
    "reapermc:crankshaft/builtin_event/load/__event_init__"
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

`@function reapermc:crankshaft/builtin_event/load/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/dependency_entrypoint/load
```

`@function reapermc:crankshaft/builtin_event/player_join/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/dependency_entrypoint/player_join
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/__early_dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow_start/early_dependency_entrypoint/player_charge_bow
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/__dep_runner__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow_end/dependency_entrypoint/player_charge_bow
function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_charge_bow
```

`@function reapermc:crankshaft/builtin_event/load/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/load/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/load/__payload_fork__
function reapermc:crankshaft/builtin_event/load/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_load/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_load/__payload_fork__
function reapermc:crankshaft/builtin_event/player_load/__dep_runner__
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

`@function reapermc:crankshaft/builtin_event/player_join/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_join/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_join/__payload_fork__
function reapermc:crankshaft/builtin_event/player_join/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_join/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_join.join 0
function reapermc:crankshaft/builtin_event/player_join/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_charge_bow/__payload_fork__
function reapermc:crankshaft/builtin_event/player_charge_bow/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/__event_init__/reward`

```mcfunction
tag @s add reapermc.crankshaft.builtin_event.player_charge_bow.charging
scoreboard players add @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time 1
function reapermc:crankshaft/builtin_event/player_charge_bow/__on_trigger__
advancement revoke @s only reapermc:crankshaft/builtin_event/player_charge_bow/__event_init__/on_charge
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow_start/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow_start/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_charge_bow_start/__payload_fork__
function reapermc:crankshaft/builtin_event/player_charge_bow_start/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow_end/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_charge_bow_end/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_charge_bow_end/__payload_fork__
function reapermc:crankshaft/builtin_event/player_charge_bow_end/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow_end/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
tag @s remove reapermc.crankshaft.builtin_event.player_charge_bow_end.temp
function reapermc:crankshaft/builtin_event/player_charge_bow_end/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_shot_bow/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_shot_bow/__payload_fork__
function reapermc:crankshaft/builtin_event/player_shot_bow/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow 0
function reapermc:crankshaft/builtin_event/player_shot_bow/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_jump/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_jump/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_jump/__payload_fork__
function reapermc:crankshaft/builtin_event/player_jump/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_jump/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_jump.jump 0
function reapermc:crankshaft/builtin_event/player_jump/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_land/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_land/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_land/__payload_fork__
function reapermc:crankshaft/builtin_event/player_land/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_land/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
tag @s remove reapermc.crankshaft.builtin_event.player_land.airborne
function reapermc:crankshaft/builtin_event/player_land/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_flag/is_airborne/handler/__flag_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_die/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_die/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_die/__payload_fork__
function reapermc:crankshaft/builtin_event/player_die/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_die/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_die.death 0
function reapermc:crankshaft/builtin_event/player_die/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_respawn/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_respawn/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_respawn/__payload_fork__
function reapermc:crankshaft/builtin_event/player_respawn/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_respawn/dependency_entrypoint/tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_respawn.death 0
function reapermc:crankshaft/builtin_event/player_respawn/__on_trigger__
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

`@function reapermc:crankshaft/builtin_event/player_use_wfoas/__on_trigger__`

```mcfunction
function reapermc:crankshaft/builtin_event/player_use_wfoas/__early_dep_runner__
function #reapermc:crankshaft/builtin_event/player_use_wfoas/__payload_fork__
function reapermc:crankshaft/builtin_event/player_use_wfoas/__dep_runner__
```

`@function reapermc:crankshaft/builtin_event/player_use_wfoas/dependency_entrypoint/player_tick/nested_execute_0`

```mcfunction
scoreboard players set @s reapermc.crankshaft.builtin_event.player_use_wfoas.use 0
function reapermc:crankshaft/builtin_event/player_use_wfoas/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/load/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/load/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_load/dependency_entrypoint/load`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_load/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/tick/__event_init__`

```mcfunction
function reapermc:crankshaft/builtin_event/tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_tick/dependency_entrypoint/tick`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/builtin_event/player_tick/__on_trigger__
```

`@function reapermc:crankshaft/builtin_event/player_join/dependency_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_join.join matches 1.. run function reapermc:crankshaft/builtin_event/player_join/dependency_entrypoint/player_tick/nested_execute_0
```

`@function reapermc:crankshaft/builtin_event/player_load/dependency_entrypoint/player_join`

```mcfunction
function reapermc:crankshaft/builtin_event/player_load/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_event/player_charge_bow/__event_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_charge_bow/dependency_entrypoint/player_tick`

```mcfunction
execute if entity @s[tag=!reapermc.crankshaft.builtin_event.player_charge_bow.charging] run scoreboard players set @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time 0
tag @s remove reapermc.crankshaft.builtin_event.player_charge_bow.charging
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow_start/early_dependency_entrypoint/player_charge_bow`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time matches 1 run function reapermc:crankshaft/builtin_event/player_charge_bow_start/__on_trigger__
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_event/player_charge_bow_end/__event_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_charge_bow_end/dependency_entrypoint/player_charge_bow`

```mcfunction
scoreboard players operation @s reapermc.crankshaft.builtin_event.player_charge_bow_end.charge_time = @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time
tag @s add reapermc.crankshaft.builtin_event.player_charge_bow_end.charging
tag @s add reapermc.crankshaft.builtin_event.player_charge_bow_end.temp
```

`@function reapermc:crankshaft/builtin_event/player_charge_bow_end/dependency_entrypoint/player_tick`

```mcfunction
execute if entity @s[tag=!reapermc.crankshaft.builtin_event.player_charge_bow_end.charging] if entity @s[tag=reapermc.crankshaft.builtin_event.player_charge_bow_end.temp] run function reapermc:crankshaft/builtin_event/player_charge_bow_end/dependency_entrypoint/player_tick/nested_execute_0
tag @s remove reapermc.crankshaft.builtin_event.player_charge_bow_end.charging
```

`@function(strip_final_newline) reapermc:crankshaft/builtin_event/player_shot_bow/__event_init__`

```mcfunction

```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_charge_bow`

```mcfunction
scoreboard players operation @s reapermc.crankshaft.builtin_event.player_shot_bow.charge_time = @s reapermc.crankshaft.builtin_event.player_charge_bow.charge_time
```

`@function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_shot_bow.shot_bow matches 1.. run function reapermc:crankshaft/builtin_event/player_shot_bow/dependency_entrypoint/player_tick/nested_execute_0
```

`@function reapermc:crankshaft/builtin_event/player_jump/dependency_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_jump.jump matches 1.. run function reapermc:crankshaft/builtin_event/player_jump/dependency_entrypoint/player_tick/nested_execute_0
```

`@function reapermc:crankshaft/builtin_event/player_land/dependency_entrypoint/player_tick`

```mcfunction
execute if predicate reapermc:crankshaft/builtin_flag/is_airborne/handler/check run tag @s add reapermc.crankshaft.builtin_event.player_land.airborne
execute unless predicate reapermc:crankshaft/builtin_flag/is_airborne/handler/check if entity @s[tag=reapermc.crankshaft.builtin_event.player_land.airborne] run function reapermc:crankshaft/builtin_event/player_land/dependency_entrypoint/player_tick/nested_execute_0
```

`@function reapermc:crankshaft/builtin_event/player_die/dependency_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_die.death matches 1.. run function reapermc:crankshaft/builtin_event/player_die/dependency_entrypoint/player_tick/nested_execute_0
```

`@function reapermc:crankshaft/builtin_event/player_respawn/dependency_entrypoint/tick`

```mcfunction
execute as @e[type=player] at @s if score @s reapermc.crankshaft.builtin_event.player_respawn.death matches 1.. run function reapermc:crankshaft/builtin_event/player_respawn/dependency_entrypoint/tick/nested_execute_0
```

`@function reapermc:crankshaft/builtin_event/player_use_coas/dependency_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_use_coas.use matches 1.. run function reapermc:crankshaft/builtin_event/player_use_coas/dependency_entrypoint/player_tick/nested_execute_0
```

`@function reapermc:crankshaft/builtin_event/player_use_wfoas/dependency_entrypoint/player_tick`

```mcfunction
execute if score @s reapermc.crankshaft.builtin_event.player_use_wfoas.use matches 1.. run function reapermc:crankshaft/builtin_event/player_use_wfoas/dependency_entrypoint/player_tick/nested_execute_0
```

`@advancement reapermc:crankshaft/builtin_event/player_charge_bow/__event_init__/on_charge`

```json
{
  "criteria": {
    "requirement": {
      "trigger": "minecraft:using_item",
      "conditions": {
        "item": {
          "items": [
            "minecraft:bow"
          ]
        }
      }
    }
  },
  "rewards": {
    "function": "reapermc:crankshaft/builtin_event/player_charge_bow/__event_init__/reward"
  }
}
```

`@predicate reapermc:crankshaft/builtin_flag/is_airborne/handler/check`

```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{OnGround: 0b}"
  }
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_load/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_load/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_load/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_load/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/load/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/load/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/load/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/load/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_join/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_join/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_join/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_join/__ce_dep_runner__",
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
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_tick/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_tick/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_tick/__ce_dep_runner__",
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
      "id": "basic_event3:reapermc/crankshaft/builtin_event/tick/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/tick/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/tick/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_charge_bow/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_charge_bow_start/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow_start/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow_start/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow_start/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_charge_bow_end/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow_end/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow_end/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_charge_bow_end/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_shot_bow/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_shot_bow/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_shot_bow/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_shot_bow/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_jump/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_jump/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_jump/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_jump/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_land/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_land/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_land/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_land/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_die/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_die/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_die/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_die/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_respawn/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_respawn/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_respawn/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_respawn/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_use_coas/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_use_coas/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_use_coas/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_use_coas/__ce_dep_runner__",
      "required": false
    }
  ]
}
```

`@function_tag reapermc:crankshaft/builtin_event/player_use_wfoas/__payload_fork__`

```json
{
  "values": [
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_use_wfoas/__ce_early_dep_runner__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_use_wfoas/__payload__",
      "required": false
    },
    {
      "id": "basic_event3:reapermc/crankshaft/builtin_event/player_use_wfoas/__ce_dep_runner__",
      "required": false
    }
  ]
}
```
