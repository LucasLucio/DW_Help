package Entidades;

import Entidades.Pagamento;
import Entidades.Pessoa;
import Entidades.ServicosDescricao;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.CollectionAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-12-12T22:41:32")
@StaticMetamodel(Contrato.class)
public class Contrato_ { 

    public static volatile SingularAttribute<Contrato, Double> valorContrato;
    public static volatile SingularAttribute<Contrato, Date> dataContrato;
    public static volatile CollectionAttribute<Contrato, ServicosDescricao> servicosDescricaoCollection;
    public static volatile CollectionAttribute<Contrato, Pagamento> pagamentoCollection;
    public static volatile SingularAttribute<Contrato, Integer> idContrato;
    public static volatile SingularAttribute<Contrato, String> contratoDescricao;
    public static volatile SingularAttribute<Contrato, Pessoa> pessoaIdPessoas;

}