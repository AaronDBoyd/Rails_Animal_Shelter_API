class Animal < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :breed, presence: true

  scope :search_name, -> (name_parameter) { where("name ilike ?", "%#{name_parameter}%")}
  scope :search_breed, -> (breed_parameter) { where("breed ilike ?", "%#{breed_parameter}%")}

  before_save(:titleize_animal)

  private

  def titleize_animal
    self.name = self.name.titleize
  end
end
