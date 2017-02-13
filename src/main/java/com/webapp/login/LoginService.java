package com.webapp.login;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	public boolean authenticate(String name, String password)
	{
		if(name.equals("ajay")&& password.equals("asd"))
		{
			return true;
		}
		return false;
	}

}
