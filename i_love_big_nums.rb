
arr = [1,34,67,123,1,654,789,443,7777,8048,456,2,3,9,545]

arr.map(&:to_s).sort{ |a,b| b+a <=> a+b }.join.sub(/^0+(?!$)/, '')

# returns largest cat number in array
