class Menu
 
  
 def input
  puts "enter the array"
  a=Array.new
  @sum=0
  begin
  puts "choose
        1.add value
        2.minimum
        3.maximum
        4.sum
        5.average
        6.search
        7.display
        8.delete by index
        9.delete value
        10.exit"
  x=gets.chomp.to_i
  case x
  when 1
  a<< gets.chomp.to_i
  when 2
  result=a.sort
  puts result.first
   
  when 3
  result=a.sort
  puts result.last
  when 4
  i = 0
    while i < a.length
      @sum += a[i]
      i=i+1
    end
    puts @sum
  when 5
   puts @sum/a.size
  when 6
  y=gets.chomp.to_i
   for i in 0..a.size do
   puts i if a[i]==y
   end
  when 7
   puts a
  
  when 8
  z=gets.chomp.to_i
  a.delete_at(z)
  when 9
  c=gets.chomp.to_i
  a.delete(c)
  when 10
  puts "end of options"
 end
 end while x<=10
 end 
 
end

arr=Menu.new
arr.input
