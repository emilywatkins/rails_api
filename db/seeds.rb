require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'Health_AnimalBites.csv'))
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  bite = Bite.new
  bite.species = row[1]
  bite.zip = row[7]
  bite.save!
end

# class Seed
#
#   def self.begin
#     seed = Seed.new
#     seed.generate_data
#   end
#
#   def generate_data
#     20.times do |i|
#       author =
#       quote = Quote.create!(
#         author: Faker::TheFreshPrinceOfBelAir.character,
#         content: Faker::TheFreshPrinceOfBelAir.quote
#       )
#       puts "Quote #{i}: Author is #{quote.author} and quotation is '#{quote.content}'."
#     end
#   end
# end
#
# Seed.begin
