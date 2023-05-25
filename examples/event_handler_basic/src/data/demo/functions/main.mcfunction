from crankshaft:api import Listener, CustomEvent
from crankshaft:events import on_load, on_tick, on_player_tick


@Listener(on_load)
def load():
    say hello
    summon creeper ~ ~ ~


@Listener(on_load)
def load():
    say wtf
    help pls work


@Listener(on_tick)
def tick():
    say hello this is a tick



# custom event definition example

def handler(event):
    @Listener(on_player_tick)
    def tick():
        # mainhand
        if data entity @s SelectedItem:
            event.trigger()
        # offhand
        if data entity @s Inventory[{Slot: -106b}]:
            event.trigger

on_player_holding_item = CustomEvent(handler=handler)



# listening to the custom event

@Listener(on_player_holding_item)
def player_holding_item():
    say Im holding an item!







