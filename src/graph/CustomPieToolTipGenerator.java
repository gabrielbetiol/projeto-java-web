package graph;

import org.jfree.data.general.PieDataset;

public class CustomPieToolTipGenerator implements
de.laures.cewolf.tooltips.PieToolTipGenerator { 

public String generateToolTip(PieDataset dataset,
Comparable section, int index) {
  return String.valueOf(dataset.getValue(index));
}

}
