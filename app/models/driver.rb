class Driver
    attr_reader :driver_name
    @@all = []

    def initialize (driver_name)
        @driver_name = driver_name
        @@all << self
    end

    def name
        single_ride = Ride.all.detect {|ride_obj| }
    end


    def self.all
        @@all
    end

    def rides
        Ride.all.select do |ride_obj|
            ride_obj.driver == self
        end
    end

    def passengers
        passengers = self.rides.map do |ride_obj|
            ride_obj.passenger
        end
        passengers.uniq
    end

    def total_distance
        self.rides.map do |ride_obj|
            ride_obj.distance
        end.sum
    end

    def self.mileage_cap(cap_distance)
        self.all.select do |driver_obj|
            driver_obj.total_distance > cap_distance
        end
    end

end
