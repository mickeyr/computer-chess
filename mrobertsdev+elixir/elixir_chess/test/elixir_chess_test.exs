defmodule ElixirChessTest do
  use ExUnit.Case
  alias ElixirChess.ChessBoard

  test "can generate WR bitboard" do
  	board = [
  		:WR, :WB, :WN, :WK, :WQ, :WN, :WB, :WR,
  		:WP, :WP, :WP, :WP, :WP, :WO, :WP, :WP,
  		:BS, :BS, :BS, :BS, :BS, :BS, :BS, :BS,
  		:BS, :BS, :BS, :BS, :BS, :BS, :BS, :BS,
  		:BS, :BS, :BS, :BS, :BS, :BS, :BS, :BS,
  		:BS, :BS, :BS, :BS, :BS, :BS, :BS, :BS,
  		:BP, :BP, :BP, :BP, :BP, :BP, :BP, :BP,
  		:BR, :BB, :BN, :BQ, :BK, :BN, :BB, :BR
    ]
  	expected = << 1::size(1), 0::size(6), 1::size(1), 0::size(56)>>
  	actual = ChessBoard.parse(board, :WR)
  	assert expected == actual	
  end
end
