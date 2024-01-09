from crankshaft:api import CustomEvent, event, get_cwd, early_dependency, dependency

class MinedStoneBlock(CustomEvent):
    @dependency
    def load(self):
        self.trigger()

@event
def mined_stone_block():
    say hi (custom event)!
