class Follower

    attr_reader :name, :age, :motto

    @@all = []

    def initialize(name, age, motto)
        @name = name
        @age = age
        @motto = motto
        @@all << self
    end

    def cults
        BloodOath.all.select{|oaths| oaths.follower == self}
    end

    def join_cult(cult)
        BloodOath.new(cult, self)
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.select{|follower| follower.age >= age}
        #binding.pry
    end 
    
end