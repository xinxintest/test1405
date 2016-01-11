package com.xinxin.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Md5Util {
	/**
	 * 榛樿鐨勫瘑鐮佸瓧绗︿覆缁勫悎锛宎pache鏍￠獙涓嬭浇鐨勬枃浠剁殑姝ｇ‘鎬х敤鐨勫氨鏄粯璁ょ殑杩欎釜缁勫悎
	 */
	protected static char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6','7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f' };
	protected static MessageDigest messagedigest = null;
	static {
		try {
			messagedigest = MessageDigest.getInstance("MD5");
		} catch (NoSuchAlgorithmException nsaex) {
			System.err.println(Md5Util.class.getName()+  "初始化失败，MessageDigest不支持MD5Util。");
			nsaex.printStackTrace();
		}
	}

	/**
	 * 
	 * 鍚慻etMD5鏂规硶浼犲叆涓�釜浣犻渶瑕佽浆鎹㈢殑鍘熷瀛楃涓诧紝灏嗚繑鍥炲瓧绗︿覆鐨凪D5鐮�
	 * 
	 * @param code鍘熷瀛楃涓�
	 * @return 杩斿洖瀛楃涓茬殑MD5鐮�
	 * */
	public static String getMD5(String code)  {
		MessageDigest messageDigest;
		try {
			messageDigest = MessageDigest.getInstance("MD5");
			byte[] bytes = code.getBytes();
			byte[] results = messageDigest.digest(bytes);
			StringBuilder stringBuilder = new StringBuilder();
			for (byte result : results) {
				// 灏哹yte鏁扮粍杞寲涓�6杩涘埗瀛楃瀛樺叆stringbuilder涓�
				stringBuilder.append(String.format("%02x", result));
			}
			return stringBuilder.toString();
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	/**
	 * 閫傜敤浜庝笂G澶х殑鏂囦欢 * @param file
	 * 
	 * @return
	 * @throws IOException
	 */
	public static String getFileMD5String(File file) throws IOException {
		FileInputStream in = new FileInputStream(file);
		FileChannel ch = in.getChannel();
		MappedByteBuffer byteBuffer = ch.map(FileChannel.MapMode.READ_ONLY, 0,
				file.length());
		messagedigest.update(byteBuffer);
		return bufferToHex(messagedigest.digest());
	}

	private static String bufferToHex(byte bytes[]) {
		return bufferToHex(bytes, 0, bytes.length);
	}

	private static String bufferToHex(byte bytes[], int m, int n) {
		StringBuffer stringbuffer = new StringBuffer(2 * n);
		int k = m + n;
		for (int l = m; l < k; l++) {
			appendHexPair(bytes[l], stringbuffer);
		}
		return stringbuffer.toString();
	}

	private static void appendHexPair(byte bt, StringBuffer stringbuffer) {
		char c0 = hexDigits[(bt & 0xf0) >> 4];
		char c1 = hexDigits[bt & 0xf];
		stringbuffer.append(c0);
		stringbuffer.append(c1);
	}

	public static boolean checkPassword(String password, String md5PwdStr) {
		String s = getMD5String(password);
		return s.equals(md5PwdStr);
	}

	public static String getMD5String(String s) {
		return getMD5String(s.getBytes());
	}

	public static String getMD5String(byte[] bytes) {
		messagedigest.update(bytes);
		return bufferToHex(messagedigest.digest());
	}
	public static void main(String[] args) {
		String md5 = getMD5("1O4h1L5twuXBrkz1IGRVTQbYiDCc5caF8");
		System.out.println(md5);
	}

}
