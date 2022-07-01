class Animal < ApplicationRecord
  validates :name, presence: true
  validates :age, presence: true
  validates :breed, presence: true



  before_save(:titleize_animal)

  private

  def titleize_animal
    self.name = self.name.titleize
  end
end
