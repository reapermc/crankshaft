from crankshaft:api import Listener
from crankshaft:flags import is_in_ground
from crankshaft:events import on_tick


@Listener(on_tick)
def tick():
    as @e[type=arrow]:
        if is_in_ground:
            say xd?
            kill @s

