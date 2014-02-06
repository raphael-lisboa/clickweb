package br.com.rpl.clickweb.util;

import java.security.MessageDigest;

import org.apache.log4j.Logger;

import br.com.caelum.vraptor.ioc.Component;

@Component
public class Encriptador {

	private Logger LOG = Logger.getLogger(getClass());

	public String encripta(String paraEncriptar) {
		String encriptado = null;
		try {
			MessageDigest md = MessageDigest.getInstance("MD5");
			byte[] bytes = md.digest(paraEncriptar.getBytes("UTF-8"));
			StringBuffer sb = new StringBuffer();
			for (int i = 0; i < bytes.length; i++) {
				sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
			}
			encriptado = sb.toString();

		} catch (Exception e) {
			LOG.error("Falha ao encriptar a mensagem " + e.getLocalizedMessage(), e);
		}
		return encriptado;
	}
}
