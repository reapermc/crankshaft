from crankshaft:api import Event, Entrypoint, Listener
from crankshaft:events import on_player_tick


def handler(event):
    unless data entity @s SelectedItem:
        event.trigger()

on_player_mainhand_empty = Event('on_player_mainhand_empty')
on_player_mainhand_empty.attach_handler(handler, on_player_tick, Entrypoint.EVENT)



@Listener(on_player_mainhand_empty)
def _():
    say hi!






