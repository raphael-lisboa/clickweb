package br.com.rpl.controller;

import java.util.List;

import org.jboss.logging.Logger;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.rpl.clickweb.modelo.Usuario;
import br.com.rpl.clickweb.repositorio.UsuarioDao;

@Resource
public class UsuarioController {

	private Logger log= Logger.getLogger(getClass());
	private Result result;
	
	
	private UsuarioDao usuarioDao;

	public UsuarioController(Result result,UsuarioDao  usuarioDao){
		this.usuarioDao = usuarioDao;		
		this.result = result;
			
	}
	
	public void novo(){}
	
	public void salva(Usuario usuario){
		log.info("Salvando usuario "+usuario);
		usuarioDao.adicionaUsuario(usuario);
		result.redirectTo(UsuarioController.class).lista();
	}
	
	public List<Usuario> lista(){
		return usuarioDao.listaUsuario();
	}
}
