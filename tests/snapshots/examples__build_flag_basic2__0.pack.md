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
    "flag_basic2:reapermc/wicked_expressions/safe_load"
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

### flag_basic2

`@function flag_basic2:reapermc/wicked_expressions/safe_load`

```mcfunction
function flag_basic2:reapermc/wicked_expressions/safe_load/flush_variable/bool
function flag_basic2:reapermc/wicked_expressions/safe_load/scoreboard_setup
```

`@function flag_basic2:reapermc/wicked_expressions/safe_load/flush_variable/bool`

```mcfunction
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
scoreboard players reset $flag_basic2#bool$0 reapermc.wicked_expressions
```

`@function flag_basic2:reapermc/wicked_expressions/safe_load/scoreboard_setup`

```mcfunction
scoreboard objectives add reapermc.crankshaft.flag.is_charging_bow dummy
scoreboard objectives add reapermc.wicked_expressions dummy
```

`@function flag_basic2:reapermc/crankshaft/event_handler/builtin/on_player_tick/__bypass_fork__`

```mcfunction
scoreboard players remove @s reapermc.crankshaft.flag.is_charging_bow 1
```

`@function flag_basic2:reapermc/crankshaft/event_handler/builtin/on_tick/__bypass_fork__`

```mcfunction
execute as @a at @s run function reapermc:crankshaft/event_handler/builtin/on_player_tick/__trigger__
```

`@function flag_basic2:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__`

```mcfunction
function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__
execute if score $flag_basic2#bool$0 reapermc.wicked_expressions matches 1 run say TRUE
execute if score $flag_basic2#bool$0 reapermc.wicked_expressions matches 0 run say FALSE
execute if score $flag_basic2#bool$0 reapermc.wicked_expressions matches 1 run say TRUE
execute if score $flag_basic2#bool$0 reapermc.wicked_expressions matches 0 run say FALSE
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

`@function reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/advancement_reward`

```mcfunction
advancement revoke @s only reapermc:crankshaft/flag/builtin/is_charging_bow/__root__/advancement
scoreboard players set @s reapermc.crankshaft.flag.is_charging_bow 2
```

`@function reapermc:crankshaft/flag/builtin/is_charging_bow/__condition__`

```mcfunction
execute store success score $flag_basic2#bool$0 reapermc.wicked_expressions if score @s reapermc.crankshaft.flag.is_charging_bow matches 1
```

`@function reapermc:crankshaft/event_handler/builtin/on_tick/__handler__/main`

```mcfunction
function reapermc:crankshaft/event_handler/builtin/on_tick/__trigger__
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_tick/__bypass_fork_tag__`

```json
{
  "values": [
    "flag_basic2:reapermc/crankshaft/event_handler/builtin/on_player_tick/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__fork__`

```json
{
  "values": [
    "flag_basic2:reapermc/crankshaft/event_handler/builtin/on_tick/__payload__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_tick/__bypass_fork_tag__`

```json
{
  "values": [
    "flag_basic2:reapermc/crankshaft/event_handler/builtin/on_tick/__bypass_fork__"
  ]
}
```

`@function_tag reapermc:crankshaft/event_handler/builtin/on_player_tick/__fork__`

```json
{
  "values": [
    "flag_basic2:reapermc/crankshaft/event_handler/builtin/on_player_tick/__payload__"
  ]
}
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
