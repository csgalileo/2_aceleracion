class RaceTime < ActiveRecord::Base
	
	def Race_time.newTime(user_id, car_id, time)
		
		if(user_id != null)
			test1 = User.where(:id => user_id)
			if(test1 != null)
				return false
			end
		end
		
		if(car_id != null)
			test2 = Carro.where(:id => user_id)
			if(test2 != null)
				return false
			end
		end
		
		input = Race_time.new
		input.user_id = user_id
		input.car_id = car_id
		input.time = time
		
		return input.save
		
	end
	
end
