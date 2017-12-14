package Entidades;

import Entidades.Contrato;
import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2017-12-12T22:41:32")
@StaticMetamodel(Pagamento.class)
public class Pagamento_ { 

    public static volatile SingularAttribute<Pagamento, Integer> idPagamento;
    public static volatile SingularAttribute<Pagamento, String> tipo;
    public static volatile SingularAttribute<Pagamento, Date> dataPagamento;
    public static volatile SingularAttribute<Pagamento, Contrato> contratoIdContrato;
    public static volatile SingularAttribute<Pagamento, String> descricao;

}