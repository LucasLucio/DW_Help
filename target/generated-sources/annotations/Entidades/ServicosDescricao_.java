package Entidades;

import Entidades.Contrato;
import Entidades.Servicos;
import Entidades.ServicosDescricaoPK;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-12-12T22:41:32")
@StaticMetamodel(ServicosDescricao.class)
public class ServicosDescricao_ { 

    public static volatile SingularAttribute<ServicosDescricao, Double> valorCobrado;
    public static volatile SingularAttribute<ServicosDescricao, Servicos> servicos;
    public static volatile SingularAttribute<ServicosDescricao, ServicosDescricaoPK> servicosDescricaoPK;
    public static volatile SingularAttribute<ServicosDescricao, Contrato> contrato;
    public static volatile SingularAttribute<ServicosDescricao, Date> dataServico;

}