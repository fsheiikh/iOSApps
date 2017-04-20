//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//Create a struct called "Card"
//
//Give the Card struct a property "value" which will hold the value of the card (A, 2, 3, 4, 5, 6, 7, 8, 9, 10, J, Q, K). This value should be a String Give the Card a property "Suit" which will hold the suit of the card (Clubs, Spades, Hearts, Diamonds) Give the Card a property "numerical_value" which will hold the numerical value of the card 1-13
//Next, create a class called "Deck"

//Give the Deck class a property called "cards" of type [Card] When initializing the deck make sure that it has the 52 unique cards in its "cards" property Give the Deck a deal method that selects the "top-most" card, removes it, and returns it Give the Deck a reset method that resets the cards property to the contain the original 52 cards Give the Deck a shuffle method that randomly reorders the deck's cards
//Finally, create a class called "Player"

//Give the Player class a name property Give the Player a hand property of type [Card] Give the Player a draw method of type (Deck) -> Card which draws a card from a deck, adds it to the players hand, and returns it
//Note how we are passing the Deck by reference here since it is a class.
//Give the Player a discard method of type (Card) -> Bool which discards the Card specified and returns True if the Card existed and was successfully removed or False if the Card was not in the player's hand.
struct Card
{
    var value: String
    var suit: String
    var power: Int
}

class Deck
{
    var cards: [Card] = []
    
    var values: [String] = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    
    var suits: [String] = ["Clubs", "Spades", "Hearts", "Diamonds"]
    
    var powers: [Int] = [13, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]
    
    init ()
    {
        reset()
    }
    
    func Deal() -> Card
    {
        return cards.removeLast()
    }
    
    func reset()
    {
        for i in 0..<suits.count
        {
            for j in 0..<values.count
            {
                cards.append(Card(value: values[j], suit: suits[i], power: powers[i]))
            }
        }
    }
    
    func shuffle()
    {
        for _ in 0..<cards.count
        {
            var card1: Int = Int(arc4random_uniform(UInt32(cards.count)))
            var card2 = Int(arc4random_uniform(UInt32(cards.count)))
            
            var temp = card1
            
            cards[card1] = cards[card2]
            cards[card2] = cards[temp]
        }
    }
}

class Player
{
    var name: String
    
    var hand: [Card] = []
    
    init(name: String)
    {
        self.name = name
    }
    
    func draw(deck: Deck) -> Card
    {
        return deck.Deal()
    }
    
    func discard(card: Card) -> BooleanType
    {
        var exists = false
        
        for i in 0..<hand.count
        {
            if((card.power == hand[i].power) && (card.suit == hand[i].suit) && (card.value == hand[i].value))
            {
                hand.removeAtIndex(i)
                exists = true
            }
            else
            {
                exists = false
            }
        }
        return exists
    }
}


var deck1: Deck = Deck()
print(deck1.cards.count)
print("Card at position 1 is \(deck1.cards[0]) and card at last position is \(deck1.cards[51])")

var player1 : Player = Player(name: "Bill")

player1.draw(deck1)
print(deck1.cards.count)
print("card at last positon is \(deck1.cards[50])")


deck1.shuffle()
print("Card at position 1 is \(deck1.cards[0]) and card at last position is \(deck1.cards[50])")


























