class Log < ActiveRecord::Base
	validates :title, presence: true, length: { maximum: 200 }
  	belongs_to :users
 	belongs_to :cities
end
