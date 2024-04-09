using {com.logali as logali} from '../db/schema';

service catalogSRV {
    entity Clientes as projection on logali.kna1;
    entity Materiales as projection on logali.mara;
    entity Pedidos as projection on logali.vbak;
    entity PosPedidos as projection on logali.vbap;

}
