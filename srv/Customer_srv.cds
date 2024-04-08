using {com.logali as logali} from '../db/schema';

service CustomerSrv {
    entity CustomerService as projection on logali.Customer;

}
