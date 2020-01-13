class Menu
 
  
 def input
  puts "enter the email ids"
  a=Array.new
  begin
  puts "choose
        1.add 
        2.display all
        3.display edu ids
        4.search
        5.delete by value
        6.display unique domain ids
        7.count the no. of ids in a domain
        8.exit"
  x=gets.chomp.to_i
 case x
 when 1
  a<< gets.chomp
 when 2
  puts a
 when 3
  i=0
  while i < a.length
  if(a[i].include? "edu")
   puts a[i]
  end
  i=i+1
  end
 when 4
  y=gets.chomp
   i=0
  while i < a.length
  if(a[i].include? y)
   puts "found at #{i}"
  end
  i=i+1
   end
 when 5
 c=gets.chomp
 a.delete(c)
 when 6
  i=0
  while i < a.length
  v=a[i].index("@")
  value=a[i]
  puts value[v..-1]
  i=i+1
   end
  when 7
  count=0
  puts" enter the domain"
  m=gets.chomp
  i=0
  while i < a.length
  if(a[i].include? m)
   count=count+1
  end
  i=i+1
   end
   puts count

  when 8
  break
 end
  end while x<8

   end
end

 a1=Menu.new
 a1.input
  
