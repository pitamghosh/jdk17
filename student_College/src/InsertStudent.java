import java.sql.*;
import java.util.Scanner;

public class InsertStudent {
    public static void main(String[] args) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            Connection con = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3307/schooldb",
                    "root",
                    "P8804@pitam#");

            Scanner sc = new Scanner(System.in);

            System.out.print("Enter number of students: ");
            int n = sc.nextInt();

            String sql = "insert into stud values(?, ?)";
            PreparedStatement ps = con.prepareStatement(sql);

            for (int i = 1; i <= n; i++) {
                System.out.print("Enter Student ID: ");
                int id = sc.nextInt();
                sc.nextLine();

                System.out.print("Enter Student Name: ");
                String name = sc.nextLine();

                ps.setInt(1, id);
                ps.setString(2, name);

                ps.executeUpdate();
            }

            System.out.println("Records inserted successfully");

            con.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}