package Entidades;

import Entidades.ServicosDescricao;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-12-12T22:41:32")
@StaticMetamodel(Servicos.class)
public class Servicos_ { 

    public static volatile SingularAttribute<Servicos, Integer> idServicos;
    public static volatile SingularAttribute<Servicos, Double> valor;
    public static volatile SingularAttribute<Servicos, String> nome;
    public static volatile CollectionAttribute<Servicos, ServicosDescricao> servicosDescricaoCollection;
    public static volatile SingularAttribute<Servicos, String> descricao;

}