
import java.sql.*;
import java.util.Scanner;

public class DeleteStudent {

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3307/schooldb",
                    "root",
                    "P8804@pitam#");

            Scanner sc = new Scanner(System.in);

            System.out.print("Enter Student ID to delete: ");
            int id = sc.nextInt();

            String sql = "delete from stud where sid=?";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, id);

            int i = ps.executeUpdate();

            if (i > 0) {
                System.out.println("Record deleted");
            } else {
                System.out.println("Record not found");
            }

            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
