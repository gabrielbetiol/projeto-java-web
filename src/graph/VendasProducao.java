package graph;

import java.io.IOException;
import java.io.Serializable;
import java.rmi.ServerException;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.jfree.data.category.CategoryDataset;
import org.jfree.data.category.DefaultCategoryDataset;

import prod_venda.ProdVenda;
import producao.Producao;
import de.laures.cewolf.DatasetProduceException;
import de.laures.cewolf.DatasetProducer;
import de.laures.cewolf.links.CategoryItemLinkGenerator;
import de.laures.cewolf.tooltips.CategoryToolTipGenerator;

/** 
 * An example data producer.
 * @author  Guido Laures 
 */

public class VendasProducao implements DatasetProducer, CategoryToolTipGenerator, CategoryItemLinkGenerator, Serializable {

	private String id;
	
	private static final Log log = LogFactory.getLog(VendasProducao.class);

    // These values would normally not be hard coded but produced by
    // some kind of data source like a database or a file
    private final String[] categories =    {"mon", "tue", "wen", "thu", "fri", "sat", "sun"};
    private final String[] seriesNames =    {"cewolfset.jsp", "tutorial.jsp", "testpage.jsp", "performancetest.jsp"};

    public void printNome(){
    	System.out.print(this.id);
    }
    
	/**
	 *  Produces some random data.
	 */
    public Object produceDataset(Map params) throws DatasetProduceException {
    	log.debug("producing data.");
        DefaultCategoryDataset dataset = new DefaultCategoryDataset(){
			/**
			 * @see java.lang.Object#finalize()
			 */
			protected void finalize() throws Throwable {
				super.finalize();
				log.debug(this +" finalized.");
			}
        };
        /*
        for (int series = 0; series < seriesNames.length; series ++) {
            int lastY = (int)(Math.random() * 1000 + 1000);
            for (int i = 0; i < categories.length; i++) {
                final int y = lastY + (int)(Math.random() * 200 - 100);
                lastY = y;
                dataset.addValue(y, seriesNames[series], categories[i]);
            }
        }
        */
        Producao pv = new Producao();
        pv.producaoId(this.id);
        //terminar
        dataset.addValue(new Double(25000), "País", "PR");
        dataset.addValue(new Double(5000), "Exterior", "PR");
        dataset.addValue(new Double(22000), "País", "SP");
        dataset.addValue(new Double(10000), "Exterior", "SP");
        dataset.addValue(new Double(21000), "País", "SC");
        dataset.addValue(new Double(15000), "Exterior", "SC");
        dataset.addValue(new Double(15000), "País", "RJ");
        dataset.addValue(new Double(1000), "Exterior", "RJ");
        dataset.addValue(new Double(10000), "País", "RS");
        dataset.addValue(new Double(1500), "Exterior", "RS");
        
        return dataset;
    }

    /**
     * This producer's data is invalidated after 5 seconds. By this method the
     * producer can influence Cewolf's caching behaviour the way it wants to.
     */
	public boolean hasExpired(Map params, Date since) {		
        log.debug(getClass().getName() + "hasExpired()");
		return (System.currentTimeMillis() - since.getTime())  > 5000;
	}

	/**
	 * Returns a unique ID for this DatasetProducer
	 */
	public String getProducerId() {
		return "VendasProducao DatasetProducer";
	}

    /**
     * Returns a link target for a special data item.
     */
    public String generateLink(Object data, int series, Object category) {
        return seriesNames[series];
    }
    
	/**
	 * @see java.lang.Object#finalize()
	 */
	protected void finalize() throws Throwable {
		super.finalize();
		log.debug(this + " finalized.");
	}

	/**
	 * @see org.jfree.chart.tooltips.CategoryToolTipGenerator#generateToolTip(CategoryDataset, int, int)
	 */
	public String generateToolTip(CategoryDataset arg0, int series, int arg2) {
		return seriesNames[series];
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}
	
	

}
