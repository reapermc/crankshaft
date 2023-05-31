from crankshaft:api import Listener
from lightning_rod:api import raw_effect, tag, untag
from crankshaft:events import on_player_sneak_start, on_player_land
from crankshaft:flags import is_airborne

double_jump_used_tag = 'test.double_jump_used' 

def launch():
    # 2 ticks of amp 50 levitation
    # simplest way to launch a player up
    raw_effect('levitation', 2, 50)


@Listener(on_player_sneak_start)
def test():
    if entity @s[tag=!double_jump_used_tag]:
        if is_airborne:
            tag(double_jump_used_tag)
            launch()

@Listener(on_player_land)
def test2():
    untag(double_jump_used_tag)
