package br.com.rpl.clickweb.util;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotEquals;

import org.junit.Test;

public class EncriptadorTest {

	@Test
	public void testEncripta() {

		Encriptador encriptador= new Encriptador();
		String senhaLimpa = "minhasenha";
		String primeiraSenha = encriptador.encripta(senhaLimpa);
		String segundaSenha = encriptador.encripta(senhaLimpa);
		
		assertEquals(primeiraSenha, segundaSenha);
		assertNotEquals(primeiraSenha, senhaLimpa);
	}

}
