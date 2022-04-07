package br.com.caelum.clines.api.users;

import static br.com.caelum.clines.shared.util.StringNormalizer.normalize;

import org.springframework.stereotype.Component;

import br.com.caelum.clines.shared.domain.User;
import br.com.caelum.clines.shared.infra.Mapper;

@Component
public class UserForMapper implements Mapper<UserForm, User>  {

	@Override
	public User map(UserForm source) {
		return new User(normalize(source.getName()), source.getEmail(), source.getPassword());
	}

}
