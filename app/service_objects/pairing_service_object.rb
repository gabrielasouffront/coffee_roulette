class PairingServiceObject

  attr_reader :unpaired_employees

  def initialize
    @unpaired_employees = Employee.all
  end

  def good_match?(emp1, emp2)
    (emp1.department != emp2.department)
  end

  def find_a_pair
    emp1 = @unpaired_employees.sample
    emp2 = @unpaired_employees.sample
  end

end
