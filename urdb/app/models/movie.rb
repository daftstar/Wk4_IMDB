class Movie < ActiveRecord::Base

	def snippet
		self.description.truncate(50)
	end

end
