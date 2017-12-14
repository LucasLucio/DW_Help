package Entidades;

import Entidades.Pessoa;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-12-12T22:41:32")
@StaticMetamodel(Cidade.class)
public class Cidade_ { 

    public static volatile CollectionAttribute<Cidade, Pessoa> pessoaCollection;
    public static volatile SingularAttribute<Cidade, String> uf;
    public static volatile SingularAttribute<Cidade, Integer> idCidade;
    public static volatile SingularAttribute<Cidade, String> nome;
    public static volatile SingularAttribute<Cidade, Date> dataCadastro;

}