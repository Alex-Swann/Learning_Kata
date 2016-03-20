require 'benchmark'

def total_nums x
  return 0 if x == nil
  return 1 if x == 0

  1.upto(10 ** x).count do |i|
    s = i.to_s.chars
    t = s.sort
    s == t || s == t.reverse
  end
end


def total_nums2(x)
        xf, nf, tf = (1..x).inject(1, :*), (1..9).inject(1, :*), (1..(x + 9)).inject(1, :*)
        ( ((x + 10) * tf) /xf/nf/10) + (tf/xf/nf) - (10 * x) - 1
end
    
  
Benchmark.bm do |x|
  x.report { puts total_nums(6) }
  x.report { puts total_nums2(6) }
end