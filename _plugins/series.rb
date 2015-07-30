module Jekyll
	class Post
		attr_accessor :series

		alias series_initialize initialize
		def initialize(site, source, dir, name)
			series_initialize site, source, dir, name
			@series = self.data['series']
		end
	end
end
