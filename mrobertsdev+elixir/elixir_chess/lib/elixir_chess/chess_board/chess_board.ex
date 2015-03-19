defmodule ElixirChess.ChessBoard do
	def init(board_state) do

	end

	def parse(board_state, piece) do
  	bb = for c <- board_state, into: <<>> do
			case c do
  			^piece -> <<1::size(1)>>
  			_ 	   -> <<0::size(1)>>
  		end
  	end
  end
end