class BloodOath

    attr_reader :initiation_date, :follower, :cult

    @@all = []

    def initialize(initiation_date, follower, cult)
        @initiation_date = initiation_date
        @follower = follower
        @cult = cult 
        @@all << self
    end 
    
    def self.all 
        @@all
    end

    def self.first_oath
        first_oath = nil
        all.each do |bloodoath|
            if first_oath == nil
                first_oath = bloodoath
            elsif bloodoath.initiation_date < first_oath.initiation_date
                first_oath = bloodoath
            end
        end
        first_oath.follower
    end

end