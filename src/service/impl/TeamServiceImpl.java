package service.impl;

import dao.TeamsDao;
import dao.impl.TeamDaoImpl;
import entity.Teams;
import service.TeamService;

public class TeamServiceImpl implements TeamService {
    //声明Dao层对象
    TeamsDao td = new TeamDaoImpl();

    @Override
    public int TeamRegService(Teams t) {
        return td.TeamRegDao(t);
    }
}
