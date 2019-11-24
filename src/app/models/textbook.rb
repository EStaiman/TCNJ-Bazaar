class Textbook < ApplicationRecord
  validates_presence_of :name, :condition
  belongs_to :user, optional:false
end
