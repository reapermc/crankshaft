# Lectern snapshot

## Data pack

`@data_pack pack.mcmeta`

```json
{
  "pack": {
    "pack_format": 12,
    "description": ""
  }
}
```

### demo

`@function(strip_final_newline) demo:main`

```mcfunction

```

`@function demo:main/nested_execute_0`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_airborne/__condition__
execute if score $event_handler_basic6#bool$0 reapermc.wicked_expressions matches 1 run function event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_player_sneak_start/__payload__/nested_2
```

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "event_handler_basic6:reapermc/wicked_expressions/safe_load"
  ]
}
```

`@function_tag minecraft:tick`

```json
{
  "replace": false,
  "values": [
    "reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main"
  ]
}
```

### event_handler_basic6

`@function event_handler_basic6:reapermc/wicked_expressions/safe_load`

```mcfunction
function event_handler_basic6:reapermc/wicked_expressions/safe_load/flush_variable/bool
function event_handler_basic6:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function event_handler_basic6:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic6#bool$0 reapermc.wicked_expressions
```

`@function event_handler_basic6:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_player_sneak_start/__payload__/nested_2`

```mcfunction
tag @s add test.double_jump_used
execute if entity @s[type=player] run summon area_effect_cloud ~ ~ ~ {Radius: 0.0f, Age: 4, WaitTime: 0, Duration: 6, Effects: [{Id: 25b, Amplifier: 50b, Duration: 2, ShowParticles: 0b}]}
execute if entity @s[type=!player] run data modify entity @s ActiveEffects append value {Id: 25, Duration: 2, Amplifier: 50b, ShowIcon: 0b, ShowParticles: 0b, Ambient: 0b}
```

`@function event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_tick/__bypass_fork__`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/event_handler/builtin/on_player_tick/__trigger__
```

`@function event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_player_tick/__bypass_fork__`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_sneaking/__condition__
execute if score $event_handler_basic6#bool$0 reapermc.wicked_expressions matches 1 if entity @s[tag=!reapermc.crankshaft.event_handler.on_player_sneak_start] run function reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__handler__/nest_0
execute if score $event_handler_basic6#bool$0 reapermc.wicked_expressions matches 0 run tag @s remove reapermc.crankshaft.event_handler.on_player_sneak_start
execute if score $event_handler_basic6#bool$0 reapermc.wicked_expressions matches 1 run tag @s add reapermc.crankshaft.event_handler.on_player_land
execute if score $event_handler_basic6#bool$0 reapermc.wicked_expressions matches 0 if entity @s[tag=reapermc.crankshaft.event_handler.on_player_land] run function reapermc:crankshaft/event_handler/builtin/on_player_land/__handler__/main
```

`@function event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_player_sneak_start/__payload__`

```mcfunction
execute if entity @s[tag=!test.double_jump_used] run function demo:main/nested_execute_0
```

`@function event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_player_land/__payload__`

```mcfunction
tag @s remove test.double_jump_used
```

### reapermc

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_tick/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_tick/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_tick/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_player_tick/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_player_tick/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__handler__/nest_0`

```mcfunction
tag @s add reapermc.crankshaft.event_handler.on_player_sneak_start
function reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__trigger__
```

`@function reapermc:crankshaft/flag/builtin/is_sneaking/__condition__`

```mcfunction
execute store success score $event_handler_basic6#bool$0 reapermc.wicked_expressions if predicate reapermc:crankshaft/flag/builtin/is_sneaking/__root__/predicate_check
```

`@function reapermc:crankshaft/flag/builtin/is_airborne/__condition__`

```mcfunction
execute store success score $event_handler_basic6#bool$0 reapermc.wicked_expressions if predicate reapermc:crankshaft/flag/builtin/is_airborne/__root__/predicate_check
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_land/__trigger__`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_player_land/__bypass_fork_tag__
function #reapermc:crankshaft/event_handler/builtin/on_player_land/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_land/__handler__/main`

```mcfunction
tag @s remove reapermc.crankshaft.event_handler.on_player_land
function reapermc:crankshaft/event_handler/builtin/on_player_land/__trigger__
```

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main`

```mcfunction
function reapermc:crankshaft/event_handler/builtin/on_tick/__trigger__
```

`@predicate reapermc:crankshaft/flag/builtin/is_sneaking/__root__/predicate_check`

```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "flags": {
      "is_sneaking": true
    }
  }
}
```

`@predicate reapermc:crankshaft/flag/builtin/is_airborne/__root__/predicate_check`

```json
{
  "condition": "minecraft:entity_properties",
  "entity": "this",
  "predicate": {
    "nbt": "{OnGround: 0b}"
  }
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__fork__`

```json
{
  "values": [
    "event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__bypass_fork_tag__`

```json
{
  "values": [
    "event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_tick/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_tick/__fork__`

```json
{
  "values": [
    "event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_tick/__bypass_fork_tag__`

```json
{
  "values": [
    "event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_player_tick/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_sneak_start/__fork__`

```json
{
  "values": [
    "event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_player_sneak_start/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_land/__fork__`

```json
{
  "values": [
    "event_handler_basic6:reapermc/crankshaft/event_handler/builtin/on_player_land/__payload__"
  ]
}
```
