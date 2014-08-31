class Sqoot

	def self.search(category)
		url = URI.escape("http://api.sqoot.com/v2/deals?api_key=e158uj&category_slugs=#{category}")
		request = HTTParty.get(url)
		deals_aray = request['deals']
	end

end
