defmodule Cards do
  @moduledoc """
  Documentation for `Cards`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Cards.hello()
      :world

  """
  def hello do
    "ello world"
  end

  def create_deck do
    values = ["Ace", "Two", "Three","Four", "King" ]
    suits= ["Spade", "Diamond", "Club", "Heart"]

    for value <-values, suit <- suits do
        "#{value} of #{suit}"
    end

  end


  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

def deck(deal, handsize) do

end


end
