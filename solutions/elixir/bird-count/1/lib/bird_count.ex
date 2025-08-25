defmodule BirdCount do
  @spec today(list()) :: any()
  def today([head | _]), do: head
  def today([]), do: nil

  @spec increment_day_count([...]) :: nonempty_maybe_improper_list()
  def increment_day_count([head | tail]), do: [head + 1 | tail]
  def increment_day_count([]), do: [1]

  @spec has_day_without_birds?([integer()]) :: boolean()
  def has_day_without_birds?([0 | _]), do: true
  def has_day_without_birds?([_ | tail]), do: has_day_without_birds?(tail)
  def has_day_without_birds?([]), do: false

  @spec total([number()]) :: number()
  def total([head | tail]), do: head + total(tail)
  def total([]), do: 0

  def busy_days([]), do: 0
  def busy_days([head | tail]) when head >= 5, do: 1 + busy_days(tail)
  def busy_days([_ | tail]), do: busy_days(tail)
end
