class HighSchoolsController < ApplicationController

	def index

		json_education = RestClient.get('http://api.education.com/service/service.php?f=schoolSearch&key=068b396b4a183cb329a791a26099b837&sn=sf&v=4&city=san+francisco&state=ca&resf=json')
		education_data = JSON.load json_education
		highschools =[]
		@final_high_schools = []



			education_data.each do |school|
				if school["school"]["gradelevel"].downcase.include?"high"
					highschools.push school
				end
			end

		highschools.each do |school_data|
			school = HighSchool.new
			school.school_name = school_data['school']['schoolname']
			school.school_address = school_data['school']['address']



			@final_high_schools.push(school)

			# name = school_data['school']['schoolname']
			# address = school_data['school']['address']
			# url = school_data['school']['url']
			# total = school_data['school']['enrollment']['total'].to_s
			# schooltype = school_data['school']['schooltype']
			# city = school_data['school']['city']
			# state = school_data['school']['state']
			# zipcode = school_data['school']['zip'].to_s
		 #  school_info = build_data(name, total, schooltype, address, city, state, zipcode, url)  
		end	
	end 

end


