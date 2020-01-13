class Menu

   attr_accessor :name,:rollno,:branch,:state,:cgpa
    def initialize(name=nil,rollno=nil,branch=nil,state=nil,cgpa=nil)
        self.name=name
        self.rollno=rollno
        self.branch=branch
        self.state=state
        self.cgpa=cgpa
    end 

  def output
   puts "name: #{@name} rollno: #{@rollno} state: #{@state} branch: #{@branch} cgpa: #{@cgpa}"
   end 
  
end
 i=0
  
  a=Array.new
  
  begin
  puts "choose
        1.add student 
        2.display all
        3.display by branch
        4.display by state
        5.search by rollno
        6.search by name
        7.delete by roll no
        8.count and display no.of students by state
        9.count and display no.of students by branch
       10.exit"

  x=gets.chomp.to_i
  case x
  when 1
   puts "enter name,rollno,branch ,state,cgpa"
   a1=Menu.new(gets.chomp,gets.chomp.to_i,gets.chomp,gets.chomp,gets.chomp.to_f)
   
   a<< a1
    
 when 2
   for i in a
    i.output
  end
 when 3
 puts "enter the branch to display"
 branch=gets.chomp
  for i in a
   if i.branch.eql?branch
     puts i.output
    end
   end
  when 4
 puts "enter the state to display"
 state=gets.chomp
  for i in a
   if i.state.eql?state
     puts i.output
    end
   end
 when 5
 puts "search by rollno"
 rollno=gets.chomp.to_i
  for i in a
   if i.rollno==rollno
     puts i.output
    end
   end
 when 6
 puts "search by name"
 name=gets.chomp
  for i in a
   if i.name==name
     puts i.output
    end
   end
 when 7
 puts "enter the rollno to delete"
 rollno=gets.chomp.to_i
  for i in a
   if i.rollno==rollno
     a.delete(i)
    end
   end
 when 8
 puts "enter the state"
 state=gets.chomp
 count=0
  for i in a
   if i.state.eql? state
     count+=1
    end
   end 
  puts count
  when 9
 puts "enter the branch"
 branch=gets.chomp
 count=0
  for i in a
   if i.branch.eql? branch
     count+=1
    end
   end 
  puts count
  when 10
   break
    
   end
  end while x<11
