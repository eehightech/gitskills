import random

class Card:
	"""Represents a standard playing card."""
	def __init__(self, suit=0, rank=2):
		self.suit = suit
		self.rank = rank
		
	suit_names = ['Clubs', 'Diamonds', 'Hearts', 'Spades']
	rank_names = [None, 'Ace', '2', '3', '4', '5', '6', '7', 
				'8', '9', '10', 'Jack', 'Queen', 'King']
				
	def __str__(self):
		return '%s of %s' % (Card.rank_names[self.rank],
							Card.suit_names[self.suit])
	
	def __lt__(self, other):
		t1 = (self.suit, self.rank)
		t2 = (other.suit, other.rank)
		return t1 < t2
							

class Deck:
	"""deck of hands"""
	def __init__(self):
		self.cards = []
		for suit in range(4):
			for rank in range(1,14):
				card = Card(suit,rank)
				self.cards.append(card)
				
	def __str__(self):
		res = []
		for card in self.cards:
			res.append(str(card))
		return '\n'.join(res)

	def pop_card(self):
		return self.cards.pop()
		
	def add_card(self,card):
		return self.cards.append(card)

	def shuffle(self):
		random.shuffle(self.cards)

	def sort(self):
		self.cards.sort()

#card1 = Card(2, 11)
#card2 = Card(3, 9)

t = Deck()
t.shuffle()
print t
print '==================='
t.sort()
print t
#print card1.__lt__(card2)
#print Card.__lt__(card1, card2)
#print card1
#print isinstance(card1, Card)
#print hasattr(card1, 'suit_names')
#print hasattr(card1, 'suit')
#print vars(card1)
#print getattr(card1,'rank')
#print getattr(card1, 'suit_names')
