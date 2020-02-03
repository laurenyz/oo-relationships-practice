class Ride
    attr_reader :distance, :driver, :passenger
    @@all = [] 

    def initialize (passenger_obj:, driver_obj:, distance:)
        @driver = driver_obj
        @passenger = passenger_obj
        @distance = distance.to_f
        @@all << self
    end

    def self.all
        @@all
    end

    def self.average_distance
        # total = 0.0
        # self.all.each do |ride_obj|
        #     total += ride_obj.distance
        # end
        # number_of_rides = self.all.count
        # average = total / number_of_rides
        total_distance = self.all.map do |ride_obj|
            ride_obj.distance
        end.sum

        total_distance / self.all.count

        #average.round(2)
    end
end
