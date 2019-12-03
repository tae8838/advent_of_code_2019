def get_fuel_required(mass)
  (mass.to_i / 3).floor - 2
end

file = File.open('1.txt')
mass_list = file.readlines.map(&:chomp)

p mass_list.inject(0) { |sum, mass| sum + get_fuel_required(mass) }