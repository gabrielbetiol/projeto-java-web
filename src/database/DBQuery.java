package database;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBQuery {

	private Connection 	connection = null;
	private Statement  	statement  = null;

	private String 	 	table  	   = null;
	private String[] 	fields     = null;
	private String[] 	values     = null;
	private String 	 	keyField   = null;
	
	public DBQuery() {
		this.connection = new DBConnection().getConnection();	
	}

	public DBQuery(Connection connection) {
		this.connection = connection;	
	}
	
	public DBQuery( String table, String[] fields, String keyField ) {
		this.connection = new DBConnection().getConnection();
		this.setTable(table);
		this.setFields(fields);
		this.setKeyField(keyField);
	}

	public DBQuery( Connection connection, String table, String[] fields, String keyField ) {
		this.connection = connection;
		this.setTable(table);
		this.setFields(fields);
		this.setKeyField(keyField);
	}
	
	public ResultSet executeQuery(String sql) {		
		ResultSet rs = null;
		try {
			this.statement 	= (Statement) this.connection.createStatement();
			rs = this.statement.executeQuery(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		} 
		return (rs);
	}
	
	public ResultSet select() {
		return ( select(""));
	}
	
	public ResultSet select( String where ) {
		
		String sql = "";
		String sqlFields = "";
		
		for ( int i=0; i<fields.length; i++ ) {
			String sep = ((fields[i] == fields[fields.length-1])?"":", ");
			sqlFields +=  fields[i] + sep;
			}
		
		sql += "SELECT " + sqlFields + " FROM "+ this.getTable(); 
		sql += ((where != "")? " WHERE "+ where : "");
		//System.out.println(sql);
		return ( this.executeQuery(sql));
	}
	

	public Statement getStatement() {
		return statement;
	}

	public void setStatement(Statement statement) {
		this.statement = statement;
	}

	public String getTable() {
		return table;
	}

	public void setTable(String table) {
		this.table = table;
	}

	public String[] getFields() {
		return fields;
	}

	public void setFields(String[] fields) {
		this.fields = fields;
	}

	public String[] getValues() {
		return values;
	}

	public void setValues(String[] values) {
		this.values = values;
	}

	public String getKeyField() {
		return keyField;
	}

	public void setKeyField(String keyField) {
		this.keyField = keyField;
	}

	public void setConnection(Connection connection) {
		this.connection = connection;
	}
	
	public Connection getConnection() {
		return connection;
	}
}
