defmodule Cards do
  @moduledoc """
   Documentation for `Cards`.
    Provides methods for creating, shuffling, and dealing a deck of cards.
  """

  @doc """
  Hello world.

  ## Examples

      ## iex> Cards.hello()
      :world

  """
  def hello do
    "hello world"
  end


  @doc """
   Create a deck of cards.
  """
  def create_deck do
    values = ["Ace", "Two", "Three","Four", "King" ]
    suits= ["Spade", "Diamond", "Club", "Heart"]

    for value <-values, suit <- suits do
        "#{value} of #{suit}"
    end
  end

  @doc """
   Shuffle a deck of cards.
  """
  def shuffle(deck) do
    Enum.shuffle(deck)
  end

  @doc """
   Check if a deck contains a card.
    iex> deck = Cards.create_deck
    iex> Cards.contains?(deck, "Ace of Spade")
    true
  """
  def contains?(deck, card) do
    Enum.member?(deck, card)
  end

  @doc """
   Deal a hand of cards.
  """
  def deal(deck, hand_size) do     # { :ok, hand } or :error
    Enum.split(deck, hand_size)
  end

  @doc """
   Save a deck of cards to a file.
  """
  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    case File.read(filename) do
    {:ok, binary} -> :erlang.binary_to_term binary
     {:error, _reason}  -> "Error reading file"
    end
  end


  @doc """
   Create a hand of cards.

  ## Examples

        iex> deck = Cards.create_deck
        iex> {hand, deck} = Cards.deal(deck, 1)
        iex> hand
        ["Ace of Spade"]

  """

  def create_hand(hand_size) do
    # deck = Cards.create_deck
    # deck = Cards.shuffle(deck)
    # hand = Cards.deal(deck, hand_size)

    # Pipe Operator
    Cards.create_deck
    |> Cards.shuffle
    |> Cards.deal(hand_size)

  end


end
