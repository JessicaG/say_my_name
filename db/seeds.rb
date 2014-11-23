require 'csv'

CSV.foreach('app/assets/images/turing_students.csv') do |row|
  if row[0] != nil
    Student.create(name: row[0], picture: "#{row[0]} #{row[1]}", cohort: row[2])
  end
end
