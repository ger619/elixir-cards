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
    "hello world"
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

  def deal(deck, hand_size) do     # { :ok, hand } or :error
    Enum.split(deck, hand_size)
  end

  def save(deck, filename) do
    binary = :erlang.term_to_binary(deck)
    File.write(filename, binary)
  end

  def load(filename) do
    {status, binary} = File.read(filename)
    :erlang.binary_to_term binary
  end


end
