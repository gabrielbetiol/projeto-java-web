package graph;

import java.io.Serializable;
import java.util.Map;
 
import org.jfree.data.general.DefaultPieDataset;
 
import de.laures.cewolf.DatasetProducer;
 
public class MaisVendidos implements DatasetProducer, Serializable {
 
    public MaisVendidos() {
        super();
    }
 
    public Object produceDataset(Map params) {
        DefaultPieDataset ds = null;
 
        ds = new DefaultPieDataset();
        for (int i=0; i<=10; i++) {
            ds.setValue("DEPT-"+i,new Integer(i));
        }
        return ds;
    }
 
    public String getProducerId() {
        return "Sample Test";
    }
 
    public boolean hasExpired(Map params, java.util.Date since) {
        return false;
    }
 
}
