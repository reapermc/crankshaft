from crankshaft:api import event, supports_events, class_event, lazy_class_event

@event
def load():
    say <OTHER PACK> loaded!

@supports_events
class Foo:
    @lazy_class_event
    def load(cls):
        say <OTHER PACK> class event loaded!

a = Foo()
b = Foo()