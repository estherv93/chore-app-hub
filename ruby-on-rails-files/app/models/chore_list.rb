class ChoreList < ActiveRecord::Base
    has_many :chore_items
end
