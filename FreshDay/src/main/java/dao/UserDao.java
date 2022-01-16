package dao;

import vo.UserVO;

public class UserDao extends DBConn {

    public int insert(UserVO vo) {
        int result = 0;
        String sql = "insert into 유저DB values()";
        getPreparedStatement(sql);

        try {

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }
}
