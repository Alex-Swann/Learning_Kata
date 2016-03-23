def validSolution(board)
  arr = []
  board.transpose.map{|x| x.sort}.each{|x| x.each{|i| arr << i}}

  arr2 = []
  board.map{|x| x.sort}.each{|x| x.each{|i| arr2 << i}}

  arr3 = []
  board_subgrid = []
  r = 0
    while r < 9
      c = 0
      board_subgrid <<  ( board[(0+c)][(0+r)..(2+r)] | board[(1+c)][(0+r)..(2+r)] | board[(2+c)][(0+r)..(2+r)] )
      c += 3
      board_subgrid <<  ( board[(0+c)][(0+r)..(2+r)] | board[(1+c)][(0+r)..(2+r)] | board[(2+c)][(0+r)..(2+r)] )
      c += 3
      board_subgrid <<  ( board[(0+c)][(0+r)..(2+r)] | board[(1+c)][(0+r)..(2+r)] | board[(2+c)][(0+r)..(2+r)] )
      c += 3
      r += 3
    end
  board_subgrid.map{|x| x.sort}.each{|x| x.each{|i| arr3 << i}}
 
  s = [*1..9].join.to_s * 9
  s == arr.join && s == arr2.join && s == arr3.join ? true : false    

end