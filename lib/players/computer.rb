def computer_places_piece!(brd)
  square = nil
  # pick 5th spot if available
  square = 5 if brd[5] == INITIAL_MARKER

  # Offense
  if !square
    WINNING_LINES.each do |line|
      square = find_at_risk_square(line, brd, COMPUTER_MARKER)
      break if square
    end
  end