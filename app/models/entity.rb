class Entity < ApplicationRecord
  belongs_to :user 
  belongs_to :Group
end
