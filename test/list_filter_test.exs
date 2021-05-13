defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "count the amount of odd numbers for a given list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]

      response =
        list
        |> ListFilter.call()

      expected_response = 3

      assert response == expected_response
    end
  end
end
