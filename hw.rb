# Initiate each Employee with their name, and level
# Each Employee starts with 20 days in their absence account.
# Create an absent method that subtracts the number of days that the employee skipped from their initial 20
# Create a late method that stores the number of times the employee was late to their late counter
# Make every 3 lates count as 1 absence
# Each Employee starts with a 0 money balance
# Create an add_balance method that adds salary money to the Employee's balance
# Employee's salaries depends on their level:
# A level 1 employee salary is 2000 riyals
# A level 2 employee salary is 4000 riyals
# A level 3 employee salary is 6000 riyals
# The add_balance method should subtract a single day's wage for every day where the employee was absent
# A single day's wage is the salary divided by 30
# Create a check method that shows the employee's name, level, number of days left in their absence account, number of times they were late, and their balance.


class Employee
    def initialize (name, level)
        @name  =  name 
        @level =  level
        @absence =  20 
        @late = 0
        @salary = 0 
        @total_lates = 0
    end
    def absent
        @absence= @absence - 1
    end
    def late
        @late =  @late + 1
        @total_lates = @total_lates + 1
        if @late  == 3 
            absent
            @late  =  0 
        end
    end
    def add_balance
        if (@level == 1)
            @salary = 2000 - ((2000/30) * (20 - @absence))
        elsif (@level == 2)
            @salary = 4000  - ((4000/30) * (20 - @absence))
        elsif (@level == 3)
            @salary = 6000  - ((6000/30) * (20 - @absence))
        end
    end
    def check
        p " #{@name} is a level #{@level} employee. he has #{@absence} abesence days. he was came in late #{@total_lates} times. #{@salary}  will be deposited at the end of the month "
    end
end

emp =  Employee.new('Omar', 1)
# 
emp.absent
emp.late
emp.late
emp.late
emp.add_balance
emp.check