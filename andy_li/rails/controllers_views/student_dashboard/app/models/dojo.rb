class Dojo < ActiveRecord::Base
  has_many :students, dependent: :delete_all
  validates :branch, :street, :city, :state, presence: true

end
