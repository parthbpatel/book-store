class Book < ApplicationRecord
  def self.search(search)
    search ? where(["name LIKE ?", "%#{search}%"]) : all 
  end
end
