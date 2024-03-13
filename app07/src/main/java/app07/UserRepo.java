package app07;

import java.util.ArrayList;
import java.util.List;

public class UserRepo {
	private static UserRepo instance = new UserRepo();
	private List<User> list;
	
	public static UserRepo getInstance() {
		return instance;
	}

	private UserRepo() {
		list = new ArrayList<>();
		list.add(new User("admin", "admin"));
	}
	
	public User getUserByIdPassword(String id, String password) {
		User target = new User(id, password);
		for (User u : list) {
			if (u.equals(target)) {
				return u;
			}
		}
		return null;
	}
}