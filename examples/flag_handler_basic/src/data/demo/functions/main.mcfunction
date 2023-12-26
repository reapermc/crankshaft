from crankshaft:api import event, flag

@event
def player_tick():
    # this API will be as terrible as it is
    # until bolt branch handling gets better
    #
    # this feature is greatly
    # contributing to my mental decline
    if flag.is_airborne == True:
        say airborne
    if flag.is_airborne == False:
        tellraw @a " "

    if flag.is_charging_bow == True:
        say charging bow
    if flag.is_charging_bow == False:
        tellraw @a " "
