
import java.sql.*;

public class ViewStudent {

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3307/schooldb",
                    "root",
                    "P8804@pitam#");

            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from stud");

            while (rs.next()) {
                System.out.println(
                        rs.getInt("sid") + " "
                        + rs.getString("sname"));
            }

            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
