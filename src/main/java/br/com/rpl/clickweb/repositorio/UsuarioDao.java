package br.com.rpl.clickweb.repositorio;

import java.util.List;

import br.com.rpl.clickweb.modelo.Usuario;

public interface UsuarioDao {

	
	public void adicionaUsuario(Usuario usuario);
	
	public List<Usuario> listaUsuario();
	public Usuario usuario(String email, String senha);
}
