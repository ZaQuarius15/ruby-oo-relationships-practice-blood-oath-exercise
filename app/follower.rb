class Follower

    attr_accessor :name, :age, :life_motto

    @@all_followers = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all_followers << self
    end

    def cults
        BloodOath.all.each_with_object([]) do |bloodoath, cults|
            if bloodoath.follower == self
                cults << bloodoath.cult
            end
        end
    end

    def join_cult(initiation_date, cult)
        if cult.minimum_age == nil
            BloodOath.new(initiation_date, self, cult)
        elsif self.age >= cult.minimum_age
            BloodOath.new(initiation_date, self, cult)
        else
            puts "Sowwy, squirt! You're too young for this spiritual journey :( Try again later!"
        end
    end 

    def my_cults_slogans
        self.cults.each do |cult|
            puts cult.slogan 
        end
    end

    def fellow_cult_members
        fellow_followers = []
        self.cults.each do |cult|
            cult.followers.each do |follower|
                fellow_followers << follower
            end
            fellow_followers.reject! do |follower|
                follower == self
            end
        end
        fellow_followers.uniq
    end



    private

    def self.all
        @@all_followers
    end 

    def self.of_a_certain_age(age)
        @@all_followers.each_with_object([]) do |follower, final| 
            if follower.age >= age
                final << follower
            end
        end 
    end 

    def self.most_active
        most_active = nil
        Follower.all.each do |follower|
            if most_active == nil
                most_active = follower
            elsif follower.cults.count > most_active.cults.count
                most_active = follower
            end
        end
        most_active
    end

    def self.top_ten
        fsort = @@all_followers.sort_by do |follower|
            -(follower.cults.count)
        end
        fsort[0..9].each_with_object([]) do |follower, top_ten|
            top_ten << follower
        end
    end
    
end