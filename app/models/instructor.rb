class Instructor

    attr_accessor :name, :student, :boatingtest

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end
    
    def self.all 
        @@all
    end

    def pass_student(name, boat_test)
        BoatingTest.all.each do |boatingtest| 
            if boatingtest.student.name == name && boatingtest.boat_test == boat_test
                 boatingtest.status = 'passed'
            end         
        end
        new_test = Student.find_student(name)
        new_test.add_boating_test(boat_test, "passed", self)
    end

    def fail_student(name, boat_test)
        BoatingTest.all.each do |boatingtest| 
            if boatingtest.student.name == name && boatingtest.boat_test == boat_test
                 boatingtest.status = 'failed'
            end         
        end
        new_test = Student.find_student(name)
        new_test.add_boating_test(boat_test, "failed", self)
    end
    

end
