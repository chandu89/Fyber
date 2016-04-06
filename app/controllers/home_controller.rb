class HomeController < ApplicationController
	def index
		current_time = Time.now.to_i
		hashkey= Digest::SHA1.hexdigest "appid=157&apple_idfa=E7CE4B3-F68A-44D9-A923-F4E48D92B31E&apple_idfa_tracking_enabled=true&device_id=2b6f0cc904d137be2e1730235f5664094b83&ip=109.235.143.113&locale=de&offer_types=112&os_version=6.0&timestamp=#{current_time}&uid=player1&b07a12df7d52e6c118e5d47d3f9e60135b109a1f"

		response = HTTParty.get("http://api.fyber.com/feed/v1/offers.json?appid=157&apple_idfa=E7CE4B3-F68A-44D9-A923-F4E48D92B31E&apple_idfa_tracking_enabled=true&device_id=2b6f0cc904d137be2e1730235f5664094b83&ip=109.235.143.113&locale=de&offer_types=112&os_version=6.0&timestamp=#{current_time}&uid=player1&hashkey=#{hashkey}")
		@result = response.parsed_response["offers"]
		
	end
end
