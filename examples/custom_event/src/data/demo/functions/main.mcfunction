from crankshaft:api import CustomEvent, event, get_cwd, early_dependency, dependency
from wicked_expressions:api import Scoreboard

class MinedStoneBlock(CustomEvent):
    @dependency
    def player_tick(self):
        mine_block_tracker = Scoreboard(f"{self.SCOREBOARD_ROOT}.mine_block", 'mined:stone')['@s']

        if score var mine_block_tracker matches 1:
            mine_block_tracker = 0
            self.trigger()

class CustomLoad(CustomEvent):
    def __event_init__(self):
        current_path = ~/
        merge function_tag minecraft:load {"values": [current_path]}
        self.trigger()

class PlayerUseMagicWand(CustomEvent):
    @dependency
    def player_use_coas(self):
        if data entity @s SelectedItem.tag{custom_item_id: "magic_wand"}:
            self.trigger()

@event
def custom_load():
    say hai!

@event
def player_use_magic_wand():
    anchored eyes positioned ^ ^ ^6:
        summon sheep ~ ~ ~ {CustomName: '{"text": "jeb_"}'}
        particle firework ~ ~ ~ 0 0 0 0.2 50 force
        particle flash ~ ~ ~ 0 0 0 0 0 force
