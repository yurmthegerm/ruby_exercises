module Movable
    def can_move?(kg)
        kg < 2000
    end
end


class Vehicle
    @@vehicle_count = 0

    attr_accessor :color
    attr_reader :year

    def initialize(year, color, model)
        @year = year
        # using setter method to initialize @color
        self.color = color
        @model = model
        @current_speed = 0
        @@vehicle_count += 1
    end

    def speed_up(mph)
        @current_speed += mph
        puts "Current speed after speeding up: #{@current_speed}"
    end

    def brake(mph)
        @current_speed -= mph
        puts "Current speed after slowing down: #{@current_speed}"
    end

    def shut_down
        @current_speed = 0
        puts "You have shut off your vehicle. (current speed = #{@current_speed})"
    end

    def spray_paint(color)
        self.color = color
        puts "You have painted your vehicle #{color}."
    end

    def self.gas_mileage(gallons, miles)
        puts "#{miles/gallons} miles per gallon of gas"
    end

    def self.vehicle_count
        puts "There are #{@@vehicle_count} vehicles."
    end

    def age
        puts "Your #{@model} is #{years_count} years old."
    end
    
    private

    def years_count
        Time.now.year - year
    end
end

class MyCar < Vehicle
    NUMBER_OF_DOORS = 4

    def to_s
        puts "My car is #{year} #{self.color} #{@model}."
    end

end

class MyTruck < Vehicle
    include Movable

    NUMBER_OF_DOORS = 2
end

class Student 

    def initialize(name, grade)
        @name = name
        @grade = grade
    end

    def better_grade_than?(name)
        get_grade > name.get_grade
    end

    protected

    def get_grade
        @grade
    end

end

dodge = MyCar.new(2011, "black", "Dodge Grand Caravan")
dodge.speed_up(30)
dodge.brake(20)
dodge.shut_down
puts dodge.color
puts dodge.year
dodge.spray_paint("red")
dodge.color = "blue"
puts dodge.color
MyCar.gas_mileage(13,351)
dodge.to_s
truck1 = MyTruck.new(2020, "blue", "idk")
Vehicle.vehicle_count
puts truck1.can_move?(400)
puts "---Method Lookup for MyTruck---"
puts MyTruck.ancestors
puts "-------------------------------"
puts "----Method Lookup for MyCar----"
puts MyCar.ancestors
puts "-------------------------------"
puts "---Method Lookup for Vehicle---"
puts Vehicle.ancestors
puts "-------------------------------"
dodge.age

joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)
puts "Well done!" if joe.better_grade_than?(bob)