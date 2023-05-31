from crankshaft:api import Listener
from crankshaft:events import on_player_attack_entity, on_tick
from crankshaft:flags import is_airborne
from wicked_expressions:api import StaticVar
from wicked_expressions:nbtlib import Bool, Short
import random


def run_particle_emitter(blue=False):
    if blue:
        particle soul_fire_flame ~ ~ ~ 0 0 0 1 250 force
    else:
        particle flame ~ ~ ~ 0 0 0 1 250 force
    particle large_smoke ~ ~ ~ 0 0 0 1 250 force
    particle cloud ~ ~ ~ 0 0 0 1 250 force

def summon_tnt():
    # cluster
    for n in range(120):
        rot_offset = 3 * n
        y_offset = random.uniform(1.4, 2.0)
        
        rotated ~rot_offset ~:
            summon tnt ^0.1 ^y_offset ^ {Fuse: Short(random.randint(80, 100)), Motion: [0.0d, 0.0d, 0.0d]}

    # initial blast
    summon tnt ~ ~1 ~
    summon tnt ~ ~1 ~
    summon tnt ~ ~1 ~
    summon tnt ~ ~1 ~


@Listener(on_player_attack_entity)
def player_attack_entity(attacker, child):
    is_arrow = StaticVar(Bool)
    
    is_arrow = False
    as child:
        if entity @s[type=arrow]:
            is_arrow = True

    if is_arrow:
        run_particle_emitter()
        summon_tnt()

@Listener(on_tick)
def tick():
    as @e[type=arrow, nbt={inGround:1b}] at @s:
        run_particle_emitter(blue=True)
        summon_tnt()
        kill @s
