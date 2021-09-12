void main() {
  var deck = new Deck();
  deck.printCards();

//   deck.randomize();

//     deck.printCards();

//   var cardWithSuit = deck.cardWithSuit('Spade');
//   print(cardWithSuit);
//   var newList = deck.deal(5);
//   print(newList);
//   deck.printCards();
  deck.removeCard(rank: 'Ace', suit: 'Spade');
  deck.printCards();
}

class Deck {
  List<Card> cards = [];
  Deck() {
    List<String> suits = ["Spade", "Hearts", "Clubs", "Diamonds"];

    List<String> ranks = ["Ace", "Two", "Three", "Four", "Five"];

//        for (int i = 0; i < suits.length; i++) {
//        for (int j = 0; j < ranks.length; j++) {
//          Create an instance of card
//          var card = new Card(suits[i], ranks[j]);
//          add that instance to the list
//          cards.add(card);
//          }

//        }

    for (var su in suits) {
      // suit -> Spade, Hearts, Clubs, Diamonds
      for (var ra in ranks) {
        // rank -> Ace, Two, Three, Four, Five
        var card = new Card(rank: ra, suit: su);
        cards.add(card);
      }
    }
  }

  void printCards() {
    print(cards);
  }

  void randomize() {
    cards.shuffle();
  }

  List<Card> cardWithSuit(String suit) {
    //gets all cards with matching suit and returns it.

//          List<Card> result = [];
//          for(var card in cards) {

//            if (card.suit == suit) {
//              result.add(card);
//            }
//          }
//             return result;
    return cards.where((Card card) => card.suit == suit).toList();

    //return result.toList();
  }

  List<Card> deal(int size) {
    var newList = cards.sublist(0, size);

    cards = cards.sublist(size);

    return newList;
  }

  void removeCard({String suit, String rank}) {
    // remove the card which matches the rank and suit passed.
    cards.removeWhere((Card card) => card.suit == suit && card.rank == rank);
  }
}

class Card {
  String suit;

  String rank;

  Card({this.suit, this.rank});

  @override
  String toString() {
    return "$rank of $suit";
  }
}
