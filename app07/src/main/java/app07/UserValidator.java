package app07;

import java.util.HashMap;
import java.util.Map;

public class UserValidator {
	public Map<String, String> validate(String id,String password,String pwConfirm) {
		Map<String, String> map = new HashMap<String, String>();
		
		checkId(id, map);
		checkPW(password, pwConfirm, map);
		
		return map;
		
	}
	public void checkId(String id, Map<String, String> map) {
		if(id== null || id.trim().equals("")) {
			map.put("id", "아이디를 입력해주세요");
			return;
		}
		if(id.contains(" ")) {
			map.put("idHasSpace", "아이디에 공백을 포함할 수 없습니다.");
		}
		if(id.length()>20) {
			map.put("idTooLong", "아이디는 20자 이내로 작성해주세요");
		}
		
	}
	public void checkPW(String password,String pwConfirm, Map<String, String> map) {
		if(!password.equals(pwConfirm)) {
			map.put("pwNotMatch", "비밀번호 일치 하지않아요");
		}
	}
	


}
