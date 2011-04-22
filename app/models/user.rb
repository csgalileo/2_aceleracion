class User < ActiveRecord::Base
	
	
	def User.modifyUser(user_id, user_nick, user_name, user_email)
		
		
		
		user = User.where(:id => user_id)
		user = user[0]
		
		
		#~ Verifica si el nuevo nick es válido
		
		if(user_nick != null)
			user_nicks = User.where(:nick => user_nick)
			if(user_nicks != null)
				return false;
			
			else
				user.nick = user_nick
			end
		end
		
		#~ Verifica si el nuevo nombre es válido
		
		if(user_name != null)
			
			user.name = user_name
		
		end
		
		#~ Verifica si el email es válido
		if(user_email != null)
			
			user.email = user_email
		
		end
	
		#~ return user.save
		
	end

	
	
	
	
end
