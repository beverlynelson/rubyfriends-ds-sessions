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

 