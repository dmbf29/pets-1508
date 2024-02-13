class Pet < ApplicationRecord
  # associations
  # valiations
  SPECIES = ['dog', 'sasquatch', 'axolotl', 'penguin', 'unicorn', 'cat']
  validates :species, inclusion: { in: SPECIES }
  validates :name, presence: true
end

# Pet::SPECIES
