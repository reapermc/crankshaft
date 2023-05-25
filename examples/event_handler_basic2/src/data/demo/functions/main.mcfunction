from crankshaft:api import Listener, CustomEvent
from crankshaft:events import on_player_load, on_player_join, on_player_tick

@Listener(on_player_join)
def player_join():
    say only runs on join

@Listener(on_player_load)
def player_load():
    say runs on both join and reload




def handler(event):
    @Listener(on_player_tick)
    def tick():
        # mainhand
        if data entity @s SelectedItem:
            event.trigger()
        # offhand
        if data entity @s Inventory[{Slot: -106b}]:
            event.trigger()

on_player_holding_item = CustomEvent(handler=handler)


@Listener(on_player_holding_item)
def player_holding_item():
    say Im holding an item!







