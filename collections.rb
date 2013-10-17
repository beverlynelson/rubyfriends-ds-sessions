collection = [126, 516, 846, 491, 774, 824, 640, 913, 276, 309, 127, 175, 471, 274, 200, 56, 40, 533, 514, 451, 893, 723, 395,
 217, 65, 158, 121, 573, 574, 91, 235, 17, 54, 889, 332, 404, 120, 178, 35, 162, 670, 837, 576, 645, 370, 203, 420,
 400, 498, 270, 207, 648, 22, 524, 818, 821, 307, 588, 413, 52, 102, 352, 537, 634, 347, 42, 673, 116, 350, 884,
 446, 108, 190, 764, 817, 608, 734, 79, 883, 584, 231, 50, 892, 353, 183, 660, 95, 945, 630, 58, 348, 812, 663, 865,
 830, 791, 1000, 605, 756, 229, 583, 37, 874, 291, 686, 147, 948, 689, 125, 265, 96, 890, 64, 844, 195, 894, 579,
 129, 257, 703, 20, 788, 443, 526, 606, 384, 698, 742, 34, 596, 357, 825, 852, 953, 354, 853, 531, 790, 432, 558,
 656, 221, 293, 595, 754, 938, 885, 599, 399, 355]
 
 puts "Exercise 1 - Find all the even numbers"
 #This line creates a new array (even_collection) with only the even numbers from collection ^
 even_collection = collection.select {|item| item.even? }
 #This line prints the title of the collection
 puts "Even Collection"
 #This line takes each item in even_collection and displays it.  Without the .join(', ') it would display each on
 #individual lines and take up the whole screen.  Try it without the .join(', ') and see what happens.
 puts even_collection.join(', ')

 
 puts "Exercise 2 - Find the square of each number"

 square_collection = collection.collect {|item| Math.sqrt(item)}
 puts "Square Collection"
 puts square_collection.join(', ')
 
 puts "Exercise 3 - Find items divisible by 31"

 thirtyone_collection = [ ]
 collection.each do |item|
   if item.modulo(31).zero?
     thirtyone_collection << item
   end
 end
 puts "Divisible by 31Collection"
 puts thirtyone_collection.join(', ') if thirtyone_collection.any?

puts "Exercise 4 - Divide into above 500 and below 500"

items_below = []
items_above = []
collection.each do |item|
  if item <= 500
    items_below << item
  else
    items_above <<item
  end
end
puts "Items below 500"
puts items_below.join(', ')
puts "Items above 500"
puts items_above.join(', ')

puts "Print them in ascending order with a place marker"
 sort_collection = collection.sort
 marker_collection = sort_collection.each_with_index {|item, i| puts [i, item].join(". ")}

puts "Show sum of numbers between 600 and 700"
select_collection = collection.select { |number| number >= 600 && number <=700 }


puts select_collection.inject(:+)

puts "Create groups of 100's"

puts "Numbers between 0 and 100"
puts select_collection = collection.select { |number| number >= 0 && number <= 101}

puts "Numbers between 100 and 200"
puts select_collection = collection.select { |number| number >= 100 && number <= 201}

puts "Numbers between 200 and 300"
puts select_collection = collection.select { |number| number >= 200 && number <= 301}

puts "Numbers between 300 and 400"
puts select_collection = collection.select { |number| number >= 300 && number <= 401}

puts "Numbers between 400 and 500"
puts select_collection = collection.select { |number| number >= 400 && number <= 501}

puts "Numbers between 500 and 600"
puts select_collection = collection.select { |number| number >= 500 && number <= 601}

puts "Numbers between 600 and 700"
puts select_collection = collection.select { |number| number >= 600 && number <= 701}

puts "Numbers between 700 and 800"
puts select_collection = collection.select { |number| number >= 700 && number <= 801}

puts "Numbers between 800 and 900"
puts select_collection = collection.select { |number| number >= 800 && number <= 901}

puts "Find all numbers that include 6"
puts select_collection = collection.find_all { |number| number.to_s.include? ("6")}

 
