defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    {_, volume_num} = volume_pair
    volume_num
  end

  def to_milliliter({:milliliter, amount}) when is_number(amount) do
    {:milliliter, amount}
  end

  def to_milliliter({:cup, amount}) when is_number(amount) do
    {:milliliter, amount * 240}
  end

  def to_milliliter({:fluid_ounce, amount}) when is_number(amount) do
    {:milliliter, amount * 30}
  end

  def to_milliliter({:teaspoon, amount}) when is_number(amount) do
    {:milliliter, amount * 5}
  end

  def to_milliliter({:tablespoon, amount}) when is_number(amount) do
    {:milliliter, amount * 15}
  end

  def from_milliliter(volume_pair, :milliliter = unit) do
    {unit, elem(volume_pair, 1)}
  end

  def from_milliliter(volume_pair, :cup = unit) do
    {unit, elem(volume_pair, 1) / 240}
  end

  def from_milliliter(volume_pair, :fluid_ounce = unit) do
    {unit, elem(volume_pair, 1) / 30}
  end

  def from_milliliter(volume_pair, :teaspoon = unit) do
    {unit, elem(volume_pair, 1) / 5}
  end

  def from_milliliter(volume_pair, :tablespoon = unit) do
    {unit, elem(volume_pair, 1) / 15}
  end

  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
