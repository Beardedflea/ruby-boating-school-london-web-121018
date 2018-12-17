class BoatingTest

    attr_accessor :student, :instructor, :boat_test, :status

    @@all = []

    def initialize(student, boat_test, status, instructor)
        @student = student
        @boat_test = boat_test 
        @status = status 
        @instructor = instructor 
        @@all << self
    end

    def self.all
        @@all
    end



end
