package dao;

import java.util.ArrayList;

import vo.UserVO;

public class UserDao extends DBConn {

    /*
     * 회원가입 insert
     */
    public int seller_insert(UserVO vo) {
        int result = 0;

        String hp = vo.getHp1() + vo.getHp2() + vo.getHp3();
        String sno = vo.getSnumber1() + vo.getSnumber2() + vo.getSnumber3();

        String sql = "insert into FreshDay_user values(?,?,?,?,?,?,?,?,?,?,?,sysdate,sysdate)";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, vo.getId());
            pstmt.setString(2, vo.getPass());
            pstmt.setString(3, vo.getName());
            pstmt.setString(4, hp);
            pstmt.setString(5, vo.getEid());
            pstmt.setString(6, vo.getDomain());
            pstmt.setString(7, vo.getAdd1());
            pstmt.setString(8, vo.getAdd2());
            pstmt.setString(9, "true");
            pstmt.setString(10, "true");
            pstmt.setString(11, sno);

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    public int buyer_insert(UserVO vo) {
        int result = 0;
        String hp1 = String.valueOf(vo.getHp1());
        String hp2 = String.valueOf(vo.getHp2());
        String hp3 = String.valueOf(vo.getHp3());
        String hp = hp1 + hp2 + hp3;

        String sql = "insert into FreshDay_user values(?,?,?,?,?,?,?,?,?,?,null,sysdate,sysdate)";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, vo.getId());
            pstmt.setString(2, vo.getPass());
            pstmt.setString(3, vo.getName());
            pstmt.setString(4, hp);
            pstmt.setString(5, vo.getEid());
            pstmt.setString(6, vo.getDomain());
            pstmt.setString(7, vo.getAdd1());
            pstmt.setString(8, vo.getAdd2());
            pstmt.setString(9, "true");
            pstmt.setString(10, "false");

            result = pstmt.executeUpdate();

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return result;
    }

    /*
     * 중복확인 체크
     */
    public int id_check(String id) {
        int result = 0;

        String sql = "select id from FreshDay_user where id = ?";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, id);

            rs = pstmt.executeQuery();
            if (rs.next()) {
                result = 1;
            } else {
                result = 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public int sell_check(String sell) {
        int result = 0;

        String sql = "select seller_number from FreshDay_user where seller_number = ?";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, sell);

            rs = pstmt.executeQuery();
            if (rs.next()) {
                result = 1;
            } else {
                result = 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /*
     * 아이디 / 비밀번호 찾기
     */
    public String find_id(String name, String number) {
        String result = "";

        String sql = "select id from FreshDay_user where name=? and phone_number=?";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, name);
            pstmt.setString(2, number);

            rs = pstmt.executeQuery();
            while (rs.next()) {

                result = rs.getString("id");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    public String find_pass(String id, String name, String number) {
        String result = "";

        String sql = "select password from FreshDay_user where id=? and name=? and phone_number=?";
        getPreparedStatement(sql);
        try {
            pstmt.setString(1, id);
            pstmt.setString(2, name);
            pstmt.setString(3, number);

            rs = pstmt.executeQuery();
            while (rs.next()) {
                result = rs.getString("password");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /*
     * 로그인 프로세스
     */
    public int loginResult(UserVO vo) {
        int result = 0;
        String sql = "select count(*) from FreshDay_user where id=? and password=?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, vo.getId());
            pstmt.setString(2, vo.getPass());

            rs = pstmt.executeQuery();
            while (rs.next()) {
                result = rs.getInt(1);
            }

            close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    /*
     * 로그인정보 불러오기 (결제창용)
     */
    public ArrayList<UserVO> pay_select(String sid) {
        ArrayList<UserVO> list = new ArrayList<UserVO>();
        String sql = "select name,to_char(SUBSTRB(phone_number,1,3)), to_char(SUBSTRB(phone_number,4,4)), "
                + " to_char(SUBSTRB(phone_number,8,4)), address1, address2 from freshday_user where id =?";
        getPreparedStatement(sql);

        try {
            pstmt.setString(1, sid);

            rs = pstmt.executeQuery();
            while (rs.next()) {
                UserVO vo = new UserVO();
                vo.setName(rs.getString(1));
                vo.setHp1(rs.getString(2));
                vo.setHp2(rs.getString(3));
                vo.setHp3(rs.getString(4));
                vo.setAdd1(rs.getString(5));
                vo.setAdd2(rs.getString(6));

                list.add(vo);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
