package se.kth.iv1351;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.Scanner;

public class SoundgoodJdbc {

private static PreparedStatement findAvailableInstrumentsStmt;
private static PreparedStatement findInstrumentStmt;
private static PreparedStatement studentRentalsStmt;
private static PreparedStatement createRentalStmt;
private static PreparedStatement numberOfRentalsStmt;
private static PreparedStatement updateIsRentedTrueStmt;
private static PreparedStatement terminateRentalStmt;
private static PreparedStatement updateIsTerminationFalseStmt;



public Scanner scanner = new Scanner(System.in);


private void SoundgoodJdbcc() {
  
    try (Connection connection = createConnection()) {
      connection.setAutoCommit(false);
      prepareStatements(connection);

    boolean com = true;
      while(com){
      System.out.println("");
      System.out.println("LIST OF COMMANDS");
      System.out.println("list = lists all available instruments for rent");
      System.out.println("list instrument = list specific type of instrument");
      System.out.println("rent new = rent instrument");
      System.out.println("terminate = return instrument");                
      System.out.println("rented = show all your rentals");
      System.out.println("exit = program will exit");
      System.out.println("");
      System.out.println("--INSTRUMENT RENTAL--");
      System.out.println("Enter command:");
      String cmd = scanner.nextLine();
      

      if(cmd.equals("help")){
        System.out.println("");
        System.out.println("LIST OF COMMANDS");
        System.out.println("list = lists all available instruments for rent");
        System.out.println("list instrument = list specific type of instrument");
        System.out.println("rent new = rent instrument");
        System.out.println("terminate = return instrument");                
        System.out.println("rented = show all your rentals");
        System.out.println("exit = program will exit");
      }
      

      else if(cmd.equals("list")){

        System.out.println("");
        System.out.println("LIST OF ALL AVAILABLE INSTRUMENTS:");
        getInstruments();
    }


    else if (cmd.equals("list instrument")){
      System.out.println("Enter instrumentl, will list all specific instrument available: ");
      String cmd2 = scanner.nextLine();
      prepareStatements(connection); 

      System.out.println("");
      System.out.println("ALL AVAILABLE " + cmd2 + " INSTRUMENTS: ");
      getAvailableInstrument(cmd2);
    }

    else if (cmd.equals("rented")){
      System.out.println("");
      System.out.println("RENTED INSTRUMENTS");
      System.out.println("Students who are currently renting: ");

      System.out.println("");
      getStudentRental();
    
    }

    else if (cmd.equals("rent new")){

      System.out.println("");
      System.out.println("Enter student ID to rent:");
      String studentId = scanner.nextLine();

      int b = checkStudentNbrOfRentals(studentId);
      System.out.println("");
      

      if (b==2){
        System.out.print("Max number of rentals reached! NOT ALLOWED TO RENT MORE.");
        System.out.print("");
      }
      

      else{
      System.out.println("LIST OF AVAILABLE INSTRUMENTS:");
      System.out.println("");
      getInstruments();
      System.out.println("");
      System.out.println("Enter which instrument (by instrument ID) to rent:");
      String instrumentId = scanner.nextLine();
      rentInstruments(connection, instrumentId, studentId);
      
      getInstruments();
      }
    }


    else if (cmd.equals("terminate")){
      System.out.println("");
      System.out.println("--END CURRENT INSTRUMENT RENTAL--");
      System.out.println("");
      System.out.println("List of current ongoing rentals:");
      getStudentRental();
      System.out.println("");
      System.out.println("Enter student ID: ");
      String studentId = scanner.nextLine();
      System.out.println("");

      System.out.println("Enter instrument id to end ongoing rental then press ENTER:");
      String  instrumentId = scanner.nextLine();
      
      terminateRental(connection, studentId, instrumentId);
      getInstruments();
    
    }
    else if (cmd.equals("exit")){
      System.out.println("");
      System.out.println("Thank you for visiting SOUNDGOOD MUSIC SCHOOL");
      System.out.println(" +\"\"\"\"\"+ ");
        System.out.println("[| o o |]");
        System.out.println(" |  ^  | ");
        System.out.println(" | '-' | ");
        System.out.println(" +-----+ ");
      com = false;
      break;
    }


    else{
      System.out.println("");
      System.out.println("ERROR wrong command!");

    }
  }
  } catch (SQLException | ClassNotFoundException ex) {
    ex.printStackTrace();
  }
}

 private Connection createConnection() throws SQLException, ClassNotFoundException {
    Class.forName("org.postgresql.Driver");
    Connection connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/soundgood",
      "parosh", "");
      return connection;
  }

  private void prepareStatements(Connection connection) throws SQLException {
    findAvailableInstrumentsStmt = connection.prepareStatement("SELECT * FROM instrument WHERE instrument_type = ? AND is_rented = 'false'");
    findInstrumentStmt = connection.prepareStatement("SELECT * FROM instrument WHERE is_rented = 'false'");
    studentRentalsStmt = connection.prepareStatement("SELECT student_id, instrument.instrument_type FROM instrument_rental INNER JOIN instrument ON instrument.instrument_id = instrument_rental.instrument_id WHERE instrument_rental.is_rented = 'true'");
    createRentalStmt = connection.prepareStatement("INSERT INTO instrument_rental (instrument_id, rental_start_date, is_rented, student_id) VALUES(?,CURRENT_DATE,'true',?)");
    numberOfRentalsStmt = connection.prepareStatement ("SELECT COUNT(*) FROM instrument_rental WHERE is_rented = 'true' AND student_id=?");
    updateIsRentedTrueStmt = connection.prepareStatement("UPDATE instrument SET is_rented='true' WHERE instrument_id = ?");

    terminateRentalStmt = connection.prepareStatement("UPDATE instrument_rental SET is_rented='false', rental_end_date=CURRENT_DATE WHERE instrument_id = ? AND student_id = ?");
    updateIsTerminationFalseStmt = connection.prepareStatement("UPDATE instrument SET is_rented='false' WHERE instrument_id = ?");
  
  }


  public int checkStudentNbrOfRentals(String studentId) throws SQLException {
    int nbr = 0;
    
    try {
      numberOfRentalsStmt.setString(1, studentId);
      
      ResultSet studentRentals = numberOfRentalsStmt.executeQuery(); 
      
      while (studentRentals.next()) {
        nbr= studentRentals.getInt(1);
      }

    } catch (Exception exc) {
            exc.printStackTrace();
    }

    return nbr;

}


  public static void getAvailableInstrument(String command) {

    try {
      findAvailableInstrumentsStmt.setString(1, command);
      
      ResultSet instruments = findAvailableInstrumentsStmt.executeQuery(); 

      while (instruments.next()) {
        System.out.println(
        "Instrument type: " + instruments.getString("instrument_type") + "--- price: " + instruments.getString("price_per_month") + "--- brand: " + instruments.getString("brand") );
      }

    } catch (Exception exc) {
      
      exc.printStackTrace();
    }
}


public static void getInstruments() {
  try {
    ResultSet instruments = findInstrumentStmt.executeQuery(); 
    while (instruments.next()) {
      System.out.println(
      "Instrument type: " + instruments.getString("instrument_type") + " --- Price: " + instruments.getString("price_per_month") + " --- Brand: " + instruments.getString("brand") + " --- Id: " + instruments.getString("instrument_id") );
    }

  } catch (Exception exc) {
    
    exc.printStackTrace();
  }
}

public static void getStudentRental() {
  try {
    ResultSet instruments = studentRentalsStmt.executeQuery(); 
    while (instruments.next()) {
      System.out.println(
      "Student id: " + instruments.getString("student_id") + ", Instrument type: " + instruments.getString("instrument_type"));
    }

  } catch (Exception exc) {
    
    exc.printStackTrace();
  }
}

public static void rentInstruments(Connection connection, String instrumentId, String studentId){
  
  try {
    
    createRentalStmt.setString(1,instrumentId);
    createRentalStmt.setString(2,studentId);
    updateIsRentedTrueStmt.setString(1,instrumentId);
    
    createRentalStmt.executeUpdate(); 
    updateIsRentedTrueStmt.executeUpdate();
    connection.commit();
    System.out.println(""); 
    System.out.println("You have successfully rented your instrument"); 
    System.out.println("");
    System.out.println("CURRENT available instruments:"); 


  } catch (Exception exc) {
    
    exc.printStackTrace();
  }
}

public static void terminateRental(Connection connection, String studentID, String instrumentID){
  try {
    
    terminateRentalStmt.setString(1,instrumentID);
    terminateRentalStmt.setString(2,studentID);
    updateIsTerminationFalseStmt.setString(1, instrumentID);
    
    terminateRentalStmt.executeUpdate(); 
    updateIsTerminationFalseStmt.executeUpdate();
    connection.commit();

    System.out.println(""); 
    System.out.println("You have successfully ended your rental"); 
    System.out.println("");
    System.out.println("CURRENT AVAILABLE INSTRUMENTS:"); 


  } catch (Exception exc) {
    
    exc.printStackTrace();
  }

} 


  public static void main(String[] args) {

    new SoundgoodJdbc().SoundgoodJdbcc();
  
    
  }

}
