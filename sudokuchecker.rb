sudoku = File.foreach('sudoku.txt').map { |line| line.split(' ') }

if sudoku.flatten != sudoku.flatten.uniq
  print "There are duplicates in your solution!"
elsif (sudoku[0][0]).to_i + (sudoku[0][1]).to_i + (sudoku[0][2]).to_i != 15
  print "Your rows do not add up to 15!"
elsif (sudoku[1][0]).to_i + (sudoku[1][1]).to_i + (sudoku[1][2]).to_i != 15
  print "Your rows do not add up to 15!"
elsif (sudoku[2][0]).to_i + (sudoku[2][1]).to_i + (sudoku[2][2]).to_i != 15
  print "Your rows do not add up to 15!"
elsif (sudoku[0][0]).to_i + (sudoku[1][0]).to_i + (sudoku[2][0]).to_i != 15
  print "Your columns do not add up to 15!"
elsif (sudoku[0][1]).to_i + (sudoku[1][1]).to_i + (sudoku[2][1]).to_i != 15
  print "Your columns do not add up to 15!"
elsif (sudoku[0][2]).to_i + (sudoku[1][2]).to_i + (sudoku[2][2]).to_i != 15
  print "Your columns do not add up to 15!"
else
  print "Congratulations! Your solution is correct!"
end
