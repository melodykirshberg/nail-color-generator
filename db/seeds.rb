# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

polishes = [{ brand: "essie", name: "Flirty Flutters", color: 2, polish_type: 9 },
            { brand: "Holo Taco", name: "Glossy Taco", color: 8, polish_type: 10 },
            { brand: "OPI", name: "Infinite Shine", color: 8, polish_type: 11},
            { brand: "Sally Hansen", name: "Hugs & Kisses", color: 6, polish_type: 7}]

polishes.each do |hash|
  Polish.find_or_create_by!(brand: hash[:brand], name: hash[:name], color: hash[:color], polish_type: hash[:polish_type])
end  