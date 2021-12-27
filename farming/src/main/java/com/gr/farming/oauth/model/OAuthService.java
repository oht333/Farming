package com.gr.farming.oauth.model;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.impl.client.BasicResponseHandler;
import org.apache.http.impl.client.HttpClientBuilder;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.stereotype.Service;

import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.gr.farming.oauth.controller.OAuthController;

@Service
public class OAuthService{
	/* 페이스북 */
	private final static String F_CLIENT_ID= "386526876602759";
	private final static String F_CLIENT_SECRET= "79bc59abb1660145f2c1e091d4bd6354";
	private final static String F_REDIRECT_URI= "http://localhost:9091/farming/login/facebook";


	public String getKakaoAccessToken (String code) {
		String access_Token = "";
		String refresh_Token = "";
		String reqURL = "https://kauth.kakao.com/oauth/token";

		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();

			//POST 요청을 위해 기본값이 false인 setDoOutput을 true로
			conn.setRequestMethod("POST");
			conn.setDoOutput(true);

			//POST 요청에 필요로 요구하는 파라미터 스트림을 통해 전송
			BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(conn.getOutputStream()));
			StringBuilder sb = new StringBuilder();
			sb.append("grant_type=authorization_code");
			sb.append("&client_id=1036628c40962a9f65fae188105a4731"); // TODO REST_API_KEY 입력
			sb.append("&redirect_uri=http://localhost:9091/farming/login/kakao"); // TODO 인가코드 받은 redirect_uri 입력
			sb.append("&code=" + code);
			bw.write(sb.toString());
			bw.flush();

			//결과 코드가 200이라면 성공
			int responseCode = conn.getResponseCode();
			System.out.println("responseCode1 : " + responseCode);

			//요청을 통해 얻은 JSON타입의 Response 메세지 읽어오기
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body1 : " + result);

			//Gson 라이브러리에 포함된 클래스로 JSON파싱 객체 생성
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			access_Token = element.getAsJsonObject().get("access_token").getAsString();
			refresh_Token = element.getAsJsonObject().get("refresh_token").getAsString();

			System.out.println("access_token : " + access_Token);
			System.out.println("refresh_token : " + refresh_Token);

			br.close();
			bw.close();
		} catch (IOException e) {
			e.printStackTrace();
		}

		return access_Token;
	}

	public HashMap<String, Object> getUserInfo (String access_Token) {

		//    요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
		HashMap<String, Object> userInfo = new HashMap<>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");

			//    요청에 필요한 Header에 포함될 내용
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);

			int responseCode = conn.getResponseCode();
			System.out.println("responseCode2 : " + responseCode);

			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));

			String line = "";
			String result = "";

			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body2 : " + result);

			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			String email = kakao_account.getAsJsonObject().get("email").getAsString();
			String img = kakao_account.getAsJsonObject().get("profile").getAsJsonObject().get("profile_image_url").getAsString();

			userInfo.put("nickname", nickname);
			userInfo.put("email", email);
			userInfo.put("img", img);

			//           response body2 : {
			//            	"id":2050536140,
			//            	"connected_at":"2021-12-25T19:29:23Z",
			//            	"properties":{
			//            		"nickname":"김지우"
			//            	},
			//            	"kakao_account":{
			//            		"profile_nickname_needs_agreement":false,
			//            		"profile_image_needs_agreement":false,
			//            		"profile":{
			//            			"nickname":"김지우",
			//            			"thumbnail_image_url":"http://k.kakaocdn.net/dn/dpk9l1/btqmGhA2lKL/Oz0wDuJn1YV2DIn92f6DVK/img_110x110.jpg",
			//            			"profile_image_url":"http://k.kakaocdn.net/dn/dpk9l1/btqmGhA2lKL/Oz0wDuJn1YV2DIn92f6DVK/img_640x640.jpg",
			//            			"is_default_image":true
			//            		},
			//            		"has_email":true,
			//            		"email_needs_agreement":false,
			//            		"is_email_valid":true,
			//            		"is_email_verified":true,
			//           		"email":"dkgtpzjs5479@naver.com"
			//            	}
			//          }


		} catch (IOException e) {
			e.printStackTrace();
		}

		return userInfo;
	}

	/* facebook */

	public String getAuthorizationUrl(){

		//로그인 버튼연결 주소 생성 
		String facebookUrl =
				"https://www.facebook.com/v2.8/dialog/oauth?"+ "client_id="+F_CLIENT_ID+
				"&redirect_uri="+F_REDIRECT_URI+ "&scope=public_profile,email"; 
		return facebookUrl; 
	}

	public String requesFaceBooktAccesToken(String code) throws Exception {

		String facebookUrl = "https://graph.facebook.com/v2.8/oauth/access_token?"+
				"client_id=" + F_CLIENT_ID + "&redirect_uri=" + F_REDIRECT_URI +
				"&client_secret=" + F_CLIENT_SECRET + "&code="+code;

		HttpClient client = HttpClientBuilder.create().build(); 
		HttpGet getRequest = new HttpGet(facebookUrl); 
		String rawJsonString = client.execute(getRequest, new BasicResponseHandler());
				//logger.debug("facebookAccessToken / raw json : "+rawJsonString);

		JSONParser jsonParser = new JSONParser(); JSONObject jsonObject = (JSONObject) jsonParser.parse(rawJsonString); 
		String faceBookAccessToken = (String) jsonObject.get("access_token");
		//logger.debug("facebookAccessToken / accessToken : "+faceBookAccessToken);
		System.out.println("faceBookAccessToken : "+faceBookAccessToken); 
		
		return faceBookAccessToken; 
	}



	public HashMap<String, Object> facebookUserDataLoadAndSave(String accessToken) throws Exception {
		HashMap<String, Object> userInfo = new HashMap<>();
		String facebookUrl = "https://graph.facebook.com/me?"+
				"access_token="+accessToken+
				"&fields=id,name,email,picture";

		HttpClient client = HttpClientBuilder.create().build();
		HttpGet getRequest = new HttpGet(facebookUrl);
		String rawJsonString = client.execute(getRequest, new BasicResponseHandler());
		//logger.debug("facebookAccessToken / rawJson!  : "+rawJsonString);
		System.out.println("rawJsonString : "+rawJsonString);
		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject) jsonParser.parse(rawJsonString);
		//logger.debug("facebookUserDataLoadAndSave / raw json : "+jsonObject);
		System.out.println("jsonObject : "+jsonObject);
		/* 가져온 데이터를 서비스에 맞춰 가공하는 로직*/
		String name = (String)jsonObject.get("name");
		String email = (String)jsonObject.get("email");
		
		userInfo.put("name", name);
		userInfo.put("email", email);
		return userInfo;
		
		/*
		jsonObject : {
			"name":"김지우",
			"id":"4531778206951882",
			"email":"dkgtpzjs5479@naver.com",
			"picture":{
				"data":{
					"is_silhouette":true,
					"width":50,
					"url":"https:\/\/scontent-gmp1-1.xx.fbcdn.net\/v\/t1.30497-1\/cp0\/c15.0.50.50a\/p50x50\/84628273_176159830277856_972693363922829312_n.jpg?_nc_cat=1&ccb=1-5&_nc_sid=12b3be&_nc_ohc=lYicA0lpyHUAX9LXt_1&_nc_ht=scontent-gmp1-1.xx&edm=AP4hL3IEAAAA&oh=00_AT-l0T2f071xsGrFyNWaGULZe70jHnBPXdwpGVo1-lX7nw&oe=61EE2AB8",
					"height":50
				}
			}
		}
		*/
	}

}
