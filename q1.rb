class Cal
   
   def input
   @no1=gets.chomp.to_i
   @no2=gets.chomp.to_i
   end
   def add
   
    @result=@no1+@no2
    puts @result
   end
   def sub
   
    @result=@no1-@no2
    puts @result
   end

   def mul
   
    @result=@no1*@no2
    puts @result
   end
   
   def div
   
    @result=@no1/@no2
    puts @result
   end
 end
 
a=Cal.new



begin
puts "choose 
     1.input
     2.add
     3.sub
     4.mul
     5.div
     6.exit"
   x=gets.chomp.to_i
   case x
   when 1 
   a.input
   when 2
   a.add
   when 3
   a.sub
   when 4
    a.mul
   when 5
   a.div
    when 6
   puts " thats the result"
    end
 end while x<=6

