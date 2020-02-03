class Passenger
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride_obj|
            ride_obj.passenger == self
        end
    end

    def drivers
        drivers = self.rides.map do |ride_obj|
            ride_obj.driver
        end
        drivers.uniq
    end

    def total_distance
        self.rides.map do |ride_obj|
            ride_obj.distance
        end.sum
        # end.reduce(:+)

        # total_d = 0.0
        # self.rides.each do |ride_obj|
        #     total_d += ride_obj.distance
        # end
        # total_d
    end

    def self.premium_members
        self.all.select do |passenger_obj|
            passenger_obj.total_distance > 100
        end
    end

end