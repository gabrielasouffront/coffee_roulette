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
    month.coffee_dates.create(employees:[emp1, emp2])
    @unpaired_employees.delete(emp1)
    @unpaired_employees.delete(emp2)
  end

  def check_a_pair
    emp1 = @unpaired_employees.sample
    emp2 = @unpaired_employees.sample
    create_a_date(emp1, emp2) if good_match?(emp1, emp2)
  end

  def pairs_are_possible?
    emp1 = @unpaired_employees.first
    the_rest = @unpaired_employees - [emp1]
    @unpaired_employees < 2 ||
    the_rest - emp1.first.previous_coffee_mates != []
  end

  def pair_everyone_up
    while pairs_are_possible?
      check_a_pair
    end
    if @unpaired_employees > 1
      @month.coffee_dates.destroy_all
      @unpaired_employees = Employee.all
      pair_everyone_up
    end
  end

end
