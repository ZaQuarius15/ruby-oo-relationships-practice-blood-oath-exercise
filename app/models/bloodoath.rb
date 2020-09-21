class BloodOath

    attr_reader :initiation_date, :follower, :cult

    @@all_bloodoaths = []

    def initialize(initiation_date, follower, cult)
        @initiation_date = initiation_date
        @follower = follower
        @cult = cult 
        @@all_bloodoaths << self
    end 
    
    def self.all 
        @@all_bloodoaths
    end

    def self.first_oath
        first_oath = nil
        @@all_bloodoaths.each do |bloodoath|
            if first_oath == nil
                first_oath = bloodoath
            elsif bloodoath.initiation_date < first_oath.initiation_date
                first_oath = bloodoath
            end
        end
        first_oath.follower
    end


    
end