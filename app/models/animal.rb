class Animal < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :breed, presence: true

  def self.search_name(search)
    if search
      where(["name ILIKE ?","%#{search}%"])
    else
      all
    end
  end 

  def self.search_breed(search)
    if search
      where(["breed ILIKE ?","%#{search}%"])
    else
      all
    end
  end 

  before_save(:titleize_animal)

  private

  def titleize_animal
    self.name = self.name.titleize
  end
end
