package ryaminali01_JDBC;

import java.sql.*;
import java.util.Scanner;

public class myDatabaseConnection {

	public static void main(String args[]) {
		listQuery();
		InsertMysql();

	}

	public static void listQuery() {
		try {
			// establish a connection
			String host = "jdbc:mysql://ryaminali01.webhosting1.eeecs.qub.ac.uk:";

			String port = "3306/";
			String DB = "ryaminali01";
			String username = "ryaminali01";
			String password = "qHjwpYdNH0VHRG0q";
			String urlDB = host + port + DB;

			System.out.println("Connection Successful:");

			try {

				Connection con = DriverManager.getConnection(urlDB, username, password);
				Statement stmt = con.createStatement();
				// result is stored in a result set names rs.
				ResultSet rs = stmt.executeQuery("SELECT * FROM Applicant_Success");
				while (rs.next())
					System.out.println(rs.getString(2) + " " + rs.getString(3) + " " + rs.getString(4) + " "
							+ rs.getInt(5) + " " + rs.getInt(6) + " " + rs.getString(7));
				stmt.close(); // connection object is closed.
				con.close();
			} catch (Exception e) { // If error, output error message
				System.out.println(e);
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
//First part is all right!!!!!!
	}

	public static void InsertMysql() {

		Scanner input = new Scanner(System.in);
		try {
			String urlDB = "jdbc:mysql://ryaminali01.webhosting1.eeecs.qub.ac.uk/ryaminali01";
			String username = "ryaminali01";
			String password = "qHjwpYdNH0VHRG0q";
			Connection con = DriverManager.getConnection(urlDB, username, password);
			Statement stmt = con.createStatement();
			// result is stored in a result set names rs.

			System.out.println();
			System.out.println("Enter Recruiter First Name:");
			String RecuiterFirstName = input.nextLine();
			System.out.println("Enter Recruiter Last Name:");
			String RecruiterLastName = input.nextLine();
			System.out.println("Enter Recruiter Email:");
			String RecruiterEmail = input.nextLine();
			System.out.println("Enter Recruiter Phone:");
			int RecruiterPhone = input.nextInt();
			System.out.println("Enter CompanyID:");
			int CompanyID = input.nextInt();

			String MysqlInsert = "INSERT IGNORE INTO recruiter ( RecruiterFirstName, RecruiterLastName, RecruiterEmail, RecruiterPhone, CompanyID)  VALUES "
					+ " (" + "'" + RecuiterFirstName + "'" + "," + "'" + RecruiterLastName + "'" + "," + "'"
					+ RecruiterEmail + "'" + "," + "'" + RecruiterPhone + "'" + "," + "'" + CompanyID + "'" + ");";
			stmt.executeUpdate(MysqlInsert);
			System.out.println("\n Records added successfully! \n");
			stmt.close(); // connection object is closed.
			con.close();
		} catch (Exception e) { // If error, output error message
			System.out.println(e);
		}
		input.close();
	}
}
