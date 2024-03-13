package app07;

public class UserService {
	private static UserService instance = new UserService();
	private UserRepo repo;
	
	public static UserService getInstance() {
		return instance;
	}
	
	private UserService() {
		repo = UserRepo.getInstance();
	}
	
	public User login(String id, String password) {
		return repo.getUserByIdPassword(id, password);
	}
}
