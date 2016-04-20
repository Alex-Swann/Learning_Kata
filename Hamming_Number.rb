module Hamming
	e = Enumerator.new do |y|
		next_ham = 1
	  	queues = [[ 2, []], [3, []], [5, []] ]
	  		loop do
	   		 	y << next_ham   
	   		 	queues.each {|m,queue| queue << next_ham * m}
	 		 	next_ham = queues.collect{|m,queue| queue.first}.min
	   			 queues.each {|m,queue| queue.shift if queue.first==next_ham}
	 		 end
	end

	ARR = e.first(5000)
end



def hamming(n)
	Hamming::ARR[n-1]
end

p hamming(500)
