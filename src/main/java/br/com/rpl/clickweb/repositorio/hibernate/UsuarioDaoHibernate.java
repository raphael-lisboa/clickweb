package br.com.rpl.clickweb.repositorio.hibernate;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.com.rpl.clickweb.modelo.Usuario;
import br.com.rpl.clickweb.repositorio.UsuarioDao;
@Component
public class UsuarioDaoHibernate implements UsuarioDao {
	private Session session;

	public UsuarioDaoHibernate(Session session) {
		this.session = session;

	}

	public void adicionaUsuario(Usuario usuario) {
		session.save(usuario);
	}

	@SuppressWarnings("unchecked")
	public List<Usuario> listaUsuario() {
		return (List<Usuario>) session.createCriteria(Usuario.class).list();
	}

	public Usuario usuario(String email, String senha) {

		Criteria criteria = session.createCriteria(Usuario.class);
		criteria.add(Restrictions.eqOrIsNull("email", email)).add(Restrictions.eq("senha", senha));
		return (Usuario) criteria.uniqueResult();

	}
}
