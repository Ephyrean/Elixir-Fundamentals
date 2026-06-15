defmodule LanguageList do
  def new() do
    []
  end

  def add(list, language) do
    [language | list]
  end

  def remove(list) do
    [_ | tail] = list
    tail
  end

  def first([first_item | _rest]) do
    first_item
  end

  def first([]) do
    nil
  end

  def count(list) do
    length(list)
  end

  def functional_list?(list) do
    "Elixir" in list
  end
end
