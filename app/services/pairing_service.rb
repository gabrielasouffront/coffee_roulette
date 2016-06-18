class PairingService

  attr_reader :unpaired_employees

  def initialize(month)
    @unpaired_employees = Employee.all
    @month = month
  end

  def good_match?(emp1, emp2)
    (emp1.department != emp2.department) &&
    !emp1.previous_coffee_mates.include?(emp2)
  end

  def create_a_date(emp1, emp2)
    @month.coffee_dates.create(employees:[emp1, emp2])
    @unpaired_employees -= [emp1]
    @unpaired_employees -= [emp2]
  end

  def check_a_pair
    emp1 = @unpaired_employees.sample
    emp2 = @unpaired_employees.sample
    create_a_date(emp1, emp2) if good_match?(emp1, emp2)
  end

  def pairs_are_possible?
    emp1 = @unpaired_employees.first
    emp2 = @unpaired_employees.second
    the_rest = @unpaired_employees - [emp1]
    @unpaired_employees.count > 1 &&
    the_rest - emp1.previous_coffee_mates != [] &&
    emp1.department != emp2.department
  end

  def pair_everyone_up
    # count = 0
    while pairs_are_possible?
      check_a_pair
      # count += 1
      # binding.pry if count > 2000
    end
    if @unpaired_employees.count > 1
      puts "OH SNAP, GONNA HAVE TO DO THIS AGAIN!"
      @month.coffee_dates.destroy_all
      @unpaired_employees = Employee.all
      pair_everyone_up
    end
  end

end
