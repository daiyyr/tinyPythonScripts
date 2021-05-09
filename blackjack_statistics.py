import random

deck = []
dealer_hand = []
player_hand = []
doubled = False

def shuffle(number_of_decks = 4):
    global deck
    deck = []
    for _ in range(number_of_decks * 4):
        deck += [2,3,4,5,6,7,8,9,10,10,10,10,11]
    random.shuffle(deck)

def hit(card = None):
    global deck
    if not card:
        return deck.pop()
    else:
        try:
            i = deck.index(card)
            del deck[i]
            return card
        except:
            raise Exception(f"No {card} in deck")

def dealer_hit(card=None):
    global dealer_hand
    dealer_hand.append(hit(card))

def player_hit(card=None):
    global player_hand
    player_hand.append(hit(card))

def sum_dealer_cards():
    global dealer_hand
    s = sum(dealer_hand)
    if s > 21:
        for c in dealer_hand:
            if c == 11:
                s -= 10
                if s <= 21:
                    break
    return s

def sum_player_cards():
    global player_hand
    s = sum(player_hand)
    if s > 21:
        for c in player_hand:
            if c == 11:
                s -= 10
                if s <= 21:
                    break
    return s

def dealer_play_s17():  # S17 rule: dealer must stand on a soft 17
    s = sum_dealer_cards()
    while s <= 16:
        dealer_hit()
        s = sum_dealer_cards()
    return s

"""
    Teemo's simple strategy on 7 May 2021
    1. player's soft 3-17: hit
    2. player's soft 18: hit on dealer's 9-11, stand on dealer's 2-8
    3. player's soft 19-20: stand
    4. player's hard 4-11: hit
    5. player's hard 12: hit on dealer's 2,3,7-11, stand on dealer's 4,5,6
    6. player's hard 13-16: hit on dealer's 7-11, stand on dealer's 2-6
    7. player's hard 17-20: stand
    8. split 88 on dealer's 2-9
    9. for AA, Skycity allow only 1 hit after splitting, will test if it worth splitting in bellow functions
        result: never split on dealer's A, split on others
    10. for hard 10,11 doubling, Skycity allow only 1 hit after doubling, will test if it worth doubling in bellow functions
        result: 
            hard 11: never double on dealer's 10 and A, double on others
            hard 10: never double on dealer's 10 and A, double on others
    11. for A6: double against dealer's 2-6, otherwise hit
    12. never take insurance or even money
"""
def player_play_teemo_strategy():
    global player_hand
    global dealer_hand
    global doubled
    no_more_hit = False
    s = sum_player_cards()
    while s <= 18:
        if sum(player_hand) - player_hand.count(11) * 10 == s: # hard
            if s >=4 and s <= 11:
                player_hit()
            elif s >=17 and s <= 20:
                return s
            elif s>=13 and s<=16:
                if s == 16 and player_hand[0] == 8 and player_hand[1] == 8: # 88
                    # for 88 experiment
                    # if dealer_hand[0] >= 7:
                    #     player_hit()
                    # else:
                    #     return s

                    if dealer_hand[0] in [10, 11]:
                        player_hit()
                    else:
                        # split
                        player_hand = [8]
                        doubled = True
                        player_hit()
                else:
                    if dealer_hand[0] >= 7:
                        player_hit()
                    else:
                        return s
            elif s == 12:
                if dealer_hand[0] in [4,5,6]:
                    return s
                else:
                    player_hit()
            else:
                raise Exception(f"something is wrong, player hand {player_hand}, s {s}")
        else: # soft
            if len(player_hand) == 2 and s in [10,11] and dealer_hand[0] not in [10, 11]:
                # double
                player_hit()
                doubled = True
                no_more_hit = True
            elif s >= 3 and s <= 17:
                if s == 12 and len(player_hand) == 2 and player_hand[0] == 11 and player_hand[1] == 11 and dealer_hand[0] not in [11]: # AA
                    # player_hit() # for AA experiment

                    # split
                    doubled = True
                    no_more_hit = True
                    player_hand = [11]
                    player_hit()
                elif s == 17 and len(player_hand) == 2 and 11 in player_hand and dealer_hand[0] in [2,3,4,5,6]: # A6
                    doubled = True
                    no_more_hit = True
                    player_hit()
                else:
                    player_hit()
            elif s in [19,20]:
                return s
            elif s == 18:
                if dealer_hand[0] in [9,10,11]:
                    player_hit()
                else:
                    return s
            else:
                raise Exception(f"something is wrong, player hand {player_hand}, s {s}")
        s = sum_player_cards()
        if no_more_hit:
            no_more_hit = False
            return s
    return s

def game_result(black_jack_bonus=0.5):
    global player_hand
    global dealer_hand
    global doubled
    player_value = sum_player_cards()
    if player_value > 21:
        re = -1
    else:
        player_blackjack = False
        dealer_blackjack = False
        if len(player_hand) == 2 and 11 in player_hand and 10 in player_hand:
            player_blackjack = True
        if len(dealer_hand) == 2 and 11 in dealer_hand and 10 in dealer_hand:
            dealer_blackjack = True
        if player_blackjack and not dealer_blackjack:
            re = 1 + black_jack_bonus
        else:
            dealer_value = sum_dealer_cards()
            if dealer_value > 21 or player_value > dealer_value:
                re = 1
            elif player_value == dealer_value:
                re = 0
            else:
                re = -1
    if doubled:
        doubled = False
        return 2 * re
    return re

def should_i_give_up_blackjack_bonus(dealer_card=11, sample_size = 10000):
    global deck
    global player_hand
    global dealer_hand
    give_up_result = sample_size * 1
    take_risk_result = 0
    for _ in range(sample_size):
        player_hand = []
        dealer_hand = []
        shuffle()
        dealer_hit(dealer_card)
        player_hit(11)
        player_hit(10)
        dealer_hit()
        take_risk_result += game_result()
    print(f"dealer card {dealer_card}: sample_size {sample_size}, give_up_result {give_up_result}, take_risk_result {take_risk_result}, take_risk:give_up = {take_risk_result/give_up_result}:1")

def should_i_split(player_pair=11, allow_only_one_hit=True, dealer_card=5, sample_size = 10000):
    global deck
    global player_hand
    global dealer_hand
    global doubled
    not_split_result = 0
    split_result = 0
    for _ in range(sample_size):
        player_hand = []
        dealer_hand = []
        shuffle()
        dealer_hit(dealer_card)
        player_hit(player_pair)
        player_hit(player_pair)
        player_play_teemo_strategy()
        dealer_play_s17()
        not_split_result += game_result()
    for _ in range(sample_size):
        player_hand = []
        dealer_hand = []
        shuffle()
        dealer_hit(dealer_card)
        player_hit(player_pair)
        if allow_only_one_hit:
            player_hit()
        else:
            player_play_teemo_strategy()
        dealer_play_s17()
        doubled = True
        split_result += game_result()
    split_result_s = '-' if split_result < 0 else ''
    not_split_result_s = '-' if not_split_result < 0 else ''
    print(f"dealer card {dealer_card}: sample_size {sample_size}, split_{player_pair}{player_pair}_result {split_result}, not_split_result {not_split_result}, split:not_split = {split_result_s}{abs(split_result/not_split_result)}:{not_split_result_s}1")

def should_i_double(player_card1, player_card2, allow_only_one_hit=True, dealer_card=5, sample_size = 10000):
    global deck
    global player_hand
    global dealer_hand
    global doubled
    not_split_result = 0
    split_result = 0
    for _ in range(sample_size):
        player_hand = []
        dealer_hand = []
        shuffle()
        dealer_hit(dealer_card)
        player_hit(player_card1)
        player_hit(player_card2)
        player_play_teemo_strategy()
        dealer_play_s17()
        not_split_result += game_result()
    for _ in range(sample_size):
        player_hand = []
        dealer_hand = []
        shuffle()
        dealer_hit(dealer_card)
        player_hit(player_card1)
        player_hit(player_card2)
        if allow_only_one_hit:
            player_hit()
        else:
            player_play_teemo_strategy()
        dealer_play_s17()
        doubled = True
        split_result += game_result()
    split_result_s = '-' if split_result < 0 else ''
    not_split_result_s = '-' if not_split_result < 0 else ''
    print(f"dealer card {dealer_card}: sample_size {sample_size}, double_{player_card1}{player_card2}_result {split_result}, not_double_result {not_split_result}, double:not_double = {split_result_s}{abs(split_result/not_split_result)}:{not_split_result_s}1")


# experiments:

# should_i_give_up_blackjack_bonus(11, 10000) 
# never give up on dealer 11

# should_i_give_up_blackjack_bonus(10, 10000)
# never give up on dealer 10

# for i in range(2, 12):
#     should_i_split(11, True, i, 20000)
# always split

# for i in range(10, 12):
#     should_i_split(8, False, i, 100000)
# never split on dealer's A, split on others

# for i in range(2, 12):
#     should_i_double(5, 5, True, i, 5000)

# for i in range(2, 12):
#     should_i_double(3, 8, True, i, 10000)

# for i in range(2, 12):
#     should_i_double(11, 6, True, i, 10000)

# experiment for Teemo strategy
teemo_strategy_result = 0
shuffle()
deck_size = len(deck)
player_num = 1
avg_card_used_each_player = 3
avg_card_used_each_game = (player_num + 1) * avg_card_used_each_player
shuffle_interval = int(deck_size / 2 / avg_card_used_each_game)
sample_size = 1000000
for i in range(sample_size):
    if i % shuffle_interval == 0:
        shuffle()
    player_hand = []
    dealer_hand = []
    player_hit()
    player_hit()
    dealer_hit()
    player_play_teemo_strategy()
    dealer_play_s17()
    teemo_strategy_result += game_result()
print(f"sample_size: {sample_size}, teemo_strategy_result: {teemo_strategy_result}, profit base per game: {teemo_strategy_result/sample_size}, each $25 game profit: ${teemo_strategy_result/sample_size*25}, each $50 game profit: ${teemo_strategy_result/sample_size*50}")


