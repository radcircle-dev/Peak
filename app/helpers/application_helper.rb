module ApplicationHelper
	def user_logged_in_msg
		str = ''
		str += '<div class="row">'
		str += '<div class="col-xs-12 col-md-3 hidden-xs"></div>'
		str +=  '<!-- left side -->  <div class="col-xs-12 col-md-6"><div class = "userloggedin">'
		
		if user_signed_in?
			str += "<p id = ""user_info"">Logged in as #{current_user}<br>#{link_to('Logout', destroy_user_session_path, :method => :delete)}</p>"
		else
      if(Flip.on?(:sign_in) && Flip.on?(:sign_up))
        str += "<p id = ""user_info"">#{link_to('Login', new_user_session_path)} or #{link_to('Sign Up', new_user_registration_path)}</p>"
      end
		end
		str += '</div>'
		str += '<div class="col-xs-12 col-md-3 hidden-xs"></div> <!-- right side --></div></div>'
		raw(str)
	end

	def admin_logged_in_msg
		str = ''
		str += '<div class="row">
		<div class="col-xs-12 col-md-2 hidden-xs"></div> <!-- left side -->
			<div class="col-xs-12 col-md-8"><div class = "adminloggedin">'
		if admin_signed_in?
			str += "<p id = ""user_info"">#{current_admin}<br>#{link_to('Logout', destroy_admin_session_path, :method => :delete)}</p>"
		
		end
		str += '</div><div class="col-xs-12 col-md-2 hidden-xs"></div> <!-- right side --></div></div>'
		raw(str)
	end
end
