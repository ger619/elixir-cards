defmodule CardsTest do
  use ExUnit.Case
  doctest Cards


  test "create a deck of cards" do
    assert Cards.create_deck() == ["Ace of Spade", "Ace of Diamond", "Ace of Club", "Ace of Heart", "Two of Spade", "Two of Diamond", "Two of Club", "Two of Heart", "Three of Spade", "Three of Diamond", "Three of Club", "Three of Heart", "Four of Spade", "Four of Diamond", "Four of Club", "Four of Heart", "King of Spade", "King of Diamond", "King of Club", "King of Heart"]
  end

  test "shuffle a deck of cards" do
    assert Cards.shuffle(["Ace of Spade", "Ace of Diamond", "Ace of Club", "Ace of Heart", "Two of Spade", "Two of Diamond", "Two of Club", "Two of Heart", "Three of Spade", "Three of Diamond", "Three of Club", "Three of Heart", "Four of Spade", "Four of Diamond", "Four of Club", "Four of Heart", "King of Spade", "King of Diamond", "King of Club", "King of Heart"]) != ["Ace of Spade", "Ace of Diamond", "Ace of Club", "Ace of Heart", "Two of Spade", "Two of Diamond", "Two of Club", "Two of Heart", "Three of Spade", "Three of Diamond", "Three of Club", "Three of Heart", "Four of Spade", "Four of Diamond", "Four of Club", "Four of Heart", "King of Spade", "King of Diamond", "King of Club", "King of Heart"]
  end

  test "contains a card" do
    assert Cards.contains?(["Ace of Spade", "Ace of Diamond", "Ace of Club", "Ace of Heart", "Two of Spade", "Two of Diamond", "Two of Club", "Two of Heart", "Three of Spade", "Three of Diamond", "Three of Club", "Three of Heart", "Four of Spade", "Four of Diamond", "Four of Club", "Four of Heart", "King of Spade", "King of Diamond", "King of Club", "King of Heart"], "Ace of Spade") == true
  end

end
