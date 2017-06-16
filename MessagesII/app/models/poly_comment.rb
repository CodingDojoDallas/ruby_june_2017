class PolyComment < ActiveRecord::Base
  belongs_to :commentable, polymorphic: true
end
