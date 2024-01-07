from crankshaft:api import event, supports_events, class_event, lazy_class_event

@event
def load():
    say loaded!

# @event
# def tick():
#     say a

@event
def player_join():
    say foo!
    give @s diamond

@supports_events
class Foo:
    @class_event
    def load(cls):
        say class event loaded!

@supports_events
class Bar:
    @event
    def load(self):
        say init!

    @event
    def load(self):
        say init2!

a = Bar()
b = Bar()

@supports_events
class Test:
    @lazy_class_event
    def load(cls):
        say aaaaaa

c = Test()
d = Test()
