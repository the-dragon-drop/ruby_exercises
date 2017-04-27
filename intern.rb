require "./employee.rb"
require "./reporting.rb"

module Actualize
  class Intern < Employee
    include Reporting
  end
end