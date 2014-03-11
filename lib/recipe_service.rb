require 'pry'
require 'pry-debugger'

class RecipeService
	FILE_PATH = File.expand_path("./app/fake_recipes")

	class << self
		def get_json_data filename
			raw_content = get_content("/#{filename}.json")
			raw_content.nil? ? nil : raw_content	
		end

		private
			def get_content file
				content = ""
				File.open(FILE_PATH + file, "r") do |line|
					line.each do |l|
						content << l
					end
				end
				content
			end
	end
end