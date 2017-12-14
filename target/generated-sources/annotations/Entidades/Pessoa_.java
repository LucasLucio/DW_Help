package Entidades;

import Entidades.Cidade;
import Entidades.Contrato;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-12-12T22:41:32")
@StaticMetamodel(Pessoa.class)
public class Pessoa_ { 

    public static volatile SingularAttribute<Pessoa, String> telefone;
    public static volatile SingularAttribute<Pessoa, String> nome;
    public static volatile SingularAttribute<Pessoa, Integer> idPessoas;
    public static volatile SingularAttribute<Pessoa, String> login;
    public static volatile SingularAttribute<Pessoa, Cidade> cidadeIdCidade;
    public static volatile SingularAttribute<Pessoa, String> senha;
    public static volatile SingularAttribute<Pessoa, Date> dataNasc;
    public static volatile SingularAttribute<Pessoa, String> rg;
    public static volatile SingularAttribute<Pessoa, String> cpf;
    public static volatile SingularAttribute<Pessoa, String> sexo;
    public static volatile SingularAttribute<Pessoa, Date> dataCadastro;
    public static volatile SingularAttribute<Pessoa, String> email;
    public static volatile CollectionAttribute<Pessoa, Contrato> contratoCollection;

}