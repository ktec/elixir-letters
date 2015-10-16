defmodule ElixirLetters.PageController do
  use ElixirLetters.Web, :controller

  def index(conn, _params) do
    # uppercase = %{ "E" => 125, "T" => 92, "A" => 80, "O" => 76, "I" => 72, "N" => 70, "S" => 65, "R" => 61, "H" => 54, "L" => 41, "D" => 39, "C" => 30, "U" => 27, "M" => 25, "F" => 23, "P" => 20, "G" => 19, "W" => 19, "Y" => 17, "B" => 15, "V" => 9, "K" => 6, "X" => 1, "J" => 1, "Q" => 1, "Z" => 1, "e" => 12, "t" => 9, "a" => 8, "o" => 7, "i" => 7, "n" => 7, "s" => 6, "r" => 6, "h" => 5, "l" => 4, "d" => 3, "c" => 3, "u" => 2, "m" => 2, "f" => 2, "p" => 2, "g" => 2, "w" => 2, "y" => 2, "b" => 1, "v" => 9, "k" => 6, "x" => 1, "j" => 1, "q" => 1, "z" => 1, "!" => 5, "?" => 5 }
    # uppercase = %{ "E" => 12, "T" => 9, "A" => 8, "O" => 8, "I" => 7, "N" => 7, "S" => 6, "R" => 6, "H" => 5, "L" => 4, "D" => 3, "C" => 3, "U" => 2, "M" => 2, "F" => 2, "P" => 2, "G" => 1, "W" => 1, "Y" => 1, "B" => 1, "V" => 1, "K" => 1, "X" => 1, "J" => 1, "Q" => 1, "Z" => 1 }
    lowercase = %{ "k" => 1, "e" => 1, "i" => 1, "t" => 1, "h" => 1 }
    # lowercase = %{ "e" => 125, "t" => 92, "a" => 80, "o" => 76, "i" => 72, "n" => 70, "s" => 65, "r" => 61, "h" => 54, "l" => 41, "d" => 39, "c" => 30, "u" => 27, "m" => 25, "f" => 23, "p" => 20, "g" => 19, "w" => 19, "y" => 17, "b" => 15, "v" => 9, "k" => 6, "x" => 1, "j" => 1, "q" => 1, "z" => 1 }
    chars = %{ "!" => 5, "?" => 5 }
    # numbers = %{ "0" => 5, "1" => 5, "2" => 5, "3" => 5, "4" => 5, "5" => 5, "6" => 5, "7" => 5, "8" => 5, "9" => 5  }

    letters = %{}
      # |> Map.merge(uppercase)
      |> Map.merge(lowercase)
      |> Map.merge(chars)
      # |> Map.merge(numbers)

    #letters = %{ "E" => 1, "T" => 1 }

    # colours = ["#ce1e0c","#466dda","#03c03c","#e6d253"]     # pastels
    colours = ["#9C2E23", "#C5A02F", "#002F6B", "#3D6F24"]
    # colours = ["#9C2E23", "#E1E40D", "#005ADA", "#11D60E"]
    # colours = ["#ff0000", "#00ff00", "#0000ff"] # primary
    # colours = ["#3F2757", "#897999", "#6E5C80", "#533b6b", "#452D5E", "#B5ACC0"]

    render(conn, "index.html", letters: letters, colours: colours)
  end
end
