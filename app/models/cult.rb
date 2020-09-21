class Cult

    attr_accessor :name, :location, :slogan, :founding_year, :minimum_age
     

    @@all_cults = []

    def initialize(name, location, founding_year, slogan, minimum_age=nil)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @minimum_age = minimum_age
        @@all_cults << self
    end 

    def recruit_follower(initiation_date, follower)
        if self.minimum_age == nil
            BloodOath.new(initiation_date, follower, self)
        elsif follower.age >= self.minimum_age
            BloodOath.new(initiation_date, follower, self) 
        else
            puts "Sowwy, squirt! You're too young for this spiritual journey :( Try again later!"
        end
    end

    def followers 
        followers = []
        BloodOath.all.each do |bloodoath|
            if bloodoath.cult == self
                followers << bloodoath.follower 
            end
        end
        followers
    end

    def cult_population
        self.followers.count    
    end 

    def average_age
        total_age = 0
        self.followers.each do |follower|
            total_age += follower.age 
        end
        (total_age.to_f / self.followers.count).round(2)
    end
    
    def my_followers_mottos
        self.followers.each do |follower|
            puts follower.life_motto
        end
    end


    private

    def self.all
        @@all_cults
    end

    def self.find_by_name(name)
        @@all_cults.select {|cult| cult.name == name}
    end 

    def self.find_by_location(location)
        @@all_cults.select {|cult| cult.location == location}
    end 

    def self.find_by_founding_year(founding_year)
        @@all_cults.select {|cult| cult.founding_year == founding_year}
    end 

    def self.least_popular
        least_popular = nil
        @@all_cults.each do |cult|
            if least_popular == nil
                least_popular = cult
            elsif cult.cult_population < least_popular.cult_population
                least_popular = cult
            end
        end
        least_popular
    end

    def self.most_common_location
        locations = []
        all.each do |cult|
            locations << cult.location
        end
        locations = locations.group_by do |location| 
            location
        end
        (locations.max do |loc1, loc2|
            loc1[1].length <=> loc2[1].length
        end)[0]
    end
    
end