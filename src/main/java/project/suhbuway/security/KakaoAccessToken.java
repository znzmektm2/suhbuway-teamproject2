package project.suhbuway.security;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.message.BasicNameValuePair;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class KakaoAccessToken {
	/**
	 * kako 로그인
	 */
	public static JsonNode getKakaoAccessToken(String code) {

		final String RequestUrl = "https://kauth.kakao.com/oauth/token"; // Host
		final List<NameValuePair> postParams = new ArrayList<NameValuePair>();

		postParams.add(new BasicNameValuePair("grant_type", "authorization_code"));
		postParams.add(new BasicNameValuePair("client_id", "fc703eb6c92f8e680a4d2922d4000a47")); // REST API KEY
		postParams.add(new BasicNameValuePair("redirect_uri", "http://localhost:8000/controller/kakaoLogin")); // 리다이렉트
																												// URI
		postParams.add(new BasicNameValuePair("code", code)); // 로그인 과정중 얻은 code 값

		final HttpClient client = HttpClientBuilder.create().build();
		final HttpPost post = new HttpPost(RequestUrl);

		JsonNode returnNode = null;

		try {
			post.setEntity(new UrlEncodedFormEntity(postParams));

			final HttpResponse response = client.execute(post);
			final int responseCode = response.getStatusLine().getStatusCode();

			// System.out.println("\nSending 'POST' request to URL : " + RequestUrl);
			// System.out.println("Post parameters : " + postParams);
			// System.out.println("Response Code : " + responseCode);

			// JSON 형태 반환값 처리
			ObjectMapper mapper = new ObjectMapper();

			returnNode = mapper.readTree(response.getEntity().getContent());

		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
		}

		return returnNode;
	}

	/**
	 * kakao 로그아웃
	 */
	public JsonNode Logout(String autorize_code) {
		// System.out.println("kakao 로그아웃 autorize_code: " + autorize_code );

		final String RequestUrl = "https://kapi.kakao.com/v1/user/logout";
		final HttpClient client = HttpClientBuilder.create().build();
		final HttpPost post = new HttpPost(RequestUrl);

		post.addHeader("Authorization", "Bearer " + autorize_code);
		JsonNode returnNode = null;

		try {
			final HttpResponse response = client.execute(post);
			ObjectMapper mapper = new ObjectMapper();
			returnNode = mapper.readTree(response.getEntity().getContent());
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (ClientProtocolException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
		}
		return returnNode;
	}

	/**
	 * kakao 로그인 정보 Map<String, Object>
	 */
	public Map<String, Object> getUserInfo(String access_Token) {

		// 요청하는 클라이언트마다 가진 정보가 다를 수 있기에 HashMap타입으로 선언
		Map<String, Object> userInfo = new HashMap<>();
		String reqURL = "https://kapi.kakao.com/v2/user/me";
		try {
			// 요청 URL
			URL url = new URL(reqURL);
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.setRequestMethod("POST");

			// 요청에 필요한 Header에 포함될 내용
			conn.setRequestProperty("Authorization", "Bearer " + access_Token);

			// 요청 상태
			int responseCode = conn.getResponseCode();
			// System.out.println("responseCode : " + responseCode);

			// 요청 값 읽음
			BufferedReader br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
			String line = "";
			String result = "";
			while ((line = br.readLine()) != null) {
				result += line;
			}
			System.out.println("response body : " + result);

			// json parser
			JsonParser parser = new JsonParser();
			JsonElement element = parser.parse(result);

			JsonObject properties = element.getAsJsonObject().get("properties").getAsJsonObject();
			JsonObject kakao_account = element.getAsJsonObject().get("kakao_account").getAsJsonObject();

			String id = element.getAsJsonObject().get("id").getAsString();
			String nickname = properties.getAsJsonObject().get("nickname").getAsString();
			// String profileImage =
			// properties.getAsJsonObject().get("profile_image").getAsString();

			// 값 넣기
			userInfo.put("id", id);
			userInfo.put("nickname", nickname);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return userInfo;
	}
}
