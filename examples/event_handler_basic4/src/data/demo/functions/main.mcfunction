from crankshaft:api import Listener
from crankshaft:events import on_player_death, on_player_respawn

@Listener(on_player_death)
def _():
    say died

@Listener(on_player_respawn)
def _():
    say respawned
