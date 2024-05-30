package controller;

import java.sql.SQLException;
import java.util.List;

import modelo.Area_Verde;
import modelo.Area_Verde_DAO;

public class ListAreaController {
	private Area_Verde_DAO areaVerdeDAO;

    public ListAreaController() {
        areaVerdeDAO = new Area_Verde_DAO();
    }

    public List<Area_Verde> listarAreas() throws SQLException {
        return areaVerdeDAO.selectAll();
    }

}
