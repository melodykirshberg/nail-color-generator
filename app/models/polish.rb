class Polish < ApplicationRecord
validates :brand, :name, :color, :polish_type, presence: true

enum color: { 
              red: 0, 
              orange: 1, 
              pink: 2, 
              yellow: 3, 
              green: 4, 
              blue: 5, 
              violet: 6,
              black: 7,
              clear: 8
            }

enum polish_type: {
             shimmer: 0,
             matte: 1,
             holographic: 2,
             thermal_solar: 3,
             creme: 4,
             metallic: 5,
             glitter: 6,
             magnetic: 7,
             jelly: 8,
             sheer: 9,
             top: 10,
             base: 11
           }
end
