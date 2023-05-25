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

### minecraft

`@function_tag minecraft:load`

```json
{
  "values": [
    "event_handler_basic3:reapermc/wicked_expressions/safe_load"
  ]
}
```

`@function_tag minecraft:tick`

```json
{
  "values": [
    "reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main"
  ]
}
```

### event_handler_basic3

`@function event_handler_basic3:reapermc/wicked_expressions/safe_load`

```mcfunction
function event_handler_basic3:reapermc/wicked_expressions/safe_load/scoreboard_setup
function event_handler_basic3:reapermc/wicked_expressions/safe_load/flush_variable/bool
function event_handler_basic3:reapermc/wicked_expressions/safe_load/flush_variable/int
```

`@function event_handler_basic3:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.wicked_expressions dummy
scoreboard objectives add reapermc.crankshaft.flag.is_charging_bow dummy
```

`@function event_handler_basic3:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $event_handler_basic3#bool$0 reapermc.wicked_expressions
scoreboard players reset $event_handler_basic3#bool$1 reapermc.wicked_expressions
```

`@function event_handler_basic3:reapermc/wicked_expressions/safe_load/flush_variable/int`

```mcfunction
scoreboard players reset $event_handler_basic3#int$0 reapermc.wicked_expressions
```

`@function event_handler_basic3:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__`

```mcfunction
scoreboard players remove @s reapermc.crankshaft.flag.is_charging_bow 1
scoreboard players remove @s reapermc.crankshaft.flag.is_charging_bow 1
scoreboard players remove @s reapermc.crankshaft.flag.is_charging_bow 1
scoreboard players remove @s reapermc.crankshaft.flag.is_charging_bow 1
function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 1 if entity @s[tag=!reapermc.crankshaft.event_handler.on_player_charge_bow_start] run function reapermc:crankshaft/event_handler/builtin/on_player_charge_bow_start/__handler__/nest_0
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 0 run tag @s remove reapermc.crankshaft.event_handler.on_player_charge_bow_start
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 1 run function #reapermc:crankshaft/event_handler/builtin/on_player_charge_bow/__fork__
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 0 if entity @s[tag=reapermc.crankshaft.event_handler.on_player_charge_bow_end] run function reapermc:crankshaft/event_handler/builtin/on_player_charge_bow_end/__handler__/nest_0
execute if score $event_handler_basic3#bool$0 reapermc.wicked_expressions matches 1 run tag @s add reapermc.crankshaft.event_handler.on_player_charge_bow_end
```

`@function event_handler_basic3:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__`

```mcfunction
execute as @a at @s run function #reapermc:crankshaft/event_handler/builtin/on_player_tick/__fork__
```

`@function event_handler_basic3:reapermc/crankshaft/event_handler/builtin/on_player_charge_bow_start/__payload__`

```mcfunction
tellraw @s "EVENT player_charge_bow_start"
```

`@function event_handler_basic3:reapermc/crankshaft/event_handler/builtin/on_player_charge_bow/__payload__`

```mcfunction
tellraw @s "EVENT player_charge_bow"
```

`@function event_handler_basic3:reapermc/crankshaft/event_handler/builtin/on_player_charge_bow_end/__payload__`

```mcfunction
tellraw @s "EVENT player_charge_bow_end"
```

### reapermc

`@function reapermc:crankshaft/event_handler/builtin/on_player_charge_bow_start/__handler__/nest_0`

```mcfunction
tag @s add reapermc.crankshaft.event_handler.on_player_charge_bow_start
function #reapermc:crankshaft/event_handler/builtin/on_player_charge_bow_start/__fork__
```

`@function reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/advancement_reward`

```mcfunction
advancement revoke @s only reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/advancement
scoreboard players set @s reapermc.crankshaft.flag.is_charging_bow 2
```

`@function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__`

```mcfunction
execute store success score $event_handler_basic3#bool$0 reapermc.wicked_expressions if score @s reapermc.crankshaft.flag.is_charging_bow matches 1
```

`@function reapermc:crankshaft/event_handler/builtin/on_player_charge_bow_end/__handler__/nest_0`

```mcfunction
tag @s remove reapermc.crankshaft.event_handler.on_player_charge_bow_end
function #reapermc:crankshaft/event_handler/builtin/on_player_charge_bow_end/__fork__
```

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main`

```mcfunction
function #reapermc:crankshaft/event_handler/builtin/on_tick/__fork__
```

`@advancement reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/advancement`

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
    "function": "reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/advancement_reward"
  }
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__fork__`

```json
{
  "values": [
    "event_handler_basic3:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_tick/__fork__`

```json
{
  "values": [
    "event_handler_basic3:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_charge_bow_start/__fork__`

```json
{
  "values": [
    "event_handler_basic3:reapermc/crankshaft/event_handler/builtin/on_player_charge_bow_start/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_charge_bow/__fork__`

```json
{
  "values": [
    "event_handler_basic3:reapermc/crankshaft/event_handler/builtin/on_player_charge_bow/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_charge_bow_end/__fork__`

```json
{
  "values": [
    "event_handler_basic3:reapermc/crankshaft/event_handler/builtin/on_player_charge_bow_end/__payload__"
  ]
}
```
