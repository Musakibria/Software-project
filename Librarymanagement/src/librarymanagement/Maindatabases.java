package librarymanagement;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Scanner;

public class Maindatabases {

    Connection connect = null;
    Statement statement = null;
    PreparedStatement preparedStatement = null;
    ResultSet result = null;
    Scanner sc = null;

    void databaseoperation() {
        try {
            connect = Librarymanagement.getInstance();
            statement = connect.createStatement();
            result = statement.executeQuery("SELECT * FROM book");
            sc = new Scanner(System.in);

            while (result.next()) {
                System.out.println("name: " + result.getString("name"));
                System.out.println("price: " + result.getString("price"));
                System.out.println("pages: " + result.getString("pages"));
                System.out.println("Writer: " + result.getString("isbn"));
                System.out.println("Publisher: " + result.getString("publisher"));
                System.out.println("Edition: " + result.getString("edition"));
            }

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Myerror;" + ex);
        }
        try {
            connect = Librarymanagement.getInstance();
            statement = connect.createStatement();
            result = statement.executeQuery("SELECT * FROM issueBook");
            sc = new Scanner(System.in);
            System.out.println("Now Let's know about issueBook");

            while (result.next()) {
                System.out.println("Student id: " + result.getString("student_id"));
                System.out.println("book name: " + result.getString("bname"));
                System.out.println("student name: " + result.getString("sname"));
                System.out.println("course: " + result.getString("course"));
                System.out.println("date of Issue: " + result.getString("dateofIssue"));
            }

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Myerror;" + ex);
        }
        try {
            connect = Librarymanagement.getInstance();
            statement = connect.createStatement();
            result = statement.executeQuery("SELECT * FROM returnBook");
            sc = new Scanner(System.in);
            System.out.println("Now Let's know about issueBook");

            while (result.next()) {

                System.out.println("date of Return: " + result.getString("dateofReturn"));
            }

        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Myerror;" + ex);
        }
        try {
            connect = Librarymanagement.getInstance();

            sc = new Scanner(System.in);

            preparedStatement = connect.prepareStatement("SELECT * FROM student WHERE student_id = ? AND branch=?;");
            while (true) {
                System.out.println("insert a id");
                preparedStatement.setString(1, sc.nextLine());
                System.out.println("insert a branch");
                preparedStatement.setString(2, sc.nextLine());
                result = preparedStatement.executeQuery();
               
                    while (result.next()) {
                        System.out.println("name: " + result.getString("name"));
                        System.out.println("father: " + result.getString("father"));
                        System.out.println("course: " + result.getString("course"));
                        System.out.println("branch: " + result.getString("branch"));
                        System.out.println("year: " + result.getString("year"));
                        System.out.println("semester: " + result.getString("semester"));
                    }
                
            }
        } catch (ClassNotFoundException | SQLException ex) {
            System.out.println("Myerror;" + ex);
        }
    }

}
