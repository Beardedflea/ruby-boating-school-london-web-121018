class Student

    attr_accessor :name, :instructor

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all 
        @@all
    end

    def add_boating_test(boat_test, status, instructor)
        BoatingTest.new(self, boat_test, status, instructor)
    end

    def self.find_student(name)
        self.all.find {|student| student.name == name}
    end

    def grade_percentage
        passed_tests = BoatingTest.all.select{|boating| boating.student == self && boating.status == "passed"}.count
        all_student_tests = BoatingTest.all.select{|boating| boating.student == self}.count

        grade = (passed_tests.to_f / all_student_tests.to_f) * 100.0
    end

    

end