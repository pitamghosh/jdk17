
import java.sql.*;
import java.util.Scanner;

public class UpdateStudent {

    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3307/schooldb",
                    "root",
                    "P8804@pitam#");

            Scanner sc = new Scanner(System.in);

            System.out.print("Enter Student ID: ");
            int id = sc.nextInt();
            sc.nextLine();

            System.out.print("Enter New Name: ");
            String name = sc.nextLine();

            String sql = "update stud set sname=? where sid=?";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setInt(2, id);

            int i = ps.executeUpdate();

            if (i > 0) {
                System.out.println("Record updated");
            } else {
                System.out.println("Record not found");
            }

            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
