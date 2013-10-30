package org.kframework.kil;

/**
 * @author AndreiS
 */
public class CellList extends CellDataStructure {

    private final String elementCellLabel;

    public CellList(String listCellLabel, String elementCellLabel) {
        super(listCellLabel);
        this.elementCellLabel = elementCellLabel;
    }

    public String elementCellLabel() {
        return elementCellLabel;
    }

}
