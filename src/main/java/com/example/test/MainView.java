package com.example.test;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import com.vaadin.flow.component.dialog.Dialog;
import com.vaadin.flow.component.orderedlayout.VerticalLayout;
import com.vaadin.flow.router.Route;

@Route("")
public class MainView extends VerticalLayout {

    public MainView() {
    	String url = "jdbc:postgresql://localhost:5432/db";
    	String username = "postgres";
    	String password = "postgres";
    	
    	String text;
    	
    	try {
    		Class.forName("org.postgresql.Driver");
    		Connection connection = DriverManager.getConnection(url, username, password);
    		String query = "SELECT \"field\" FROM \"table\" WHERE \"field\"='Hello World!'";
    		Statement statement = connection.createStatement();
    		ResultSet res = statement.executeQuery(query);
    		res.next();
    		text = res.getString(1);
    	} catch (Exception e) {
    		text = "Connection failed.";
    		System.out.println(e);
    	}
    	
        Dialog dialog = new Dialog();
        dialog.add(text);
        add(dialog);
        dialog.open();
    }
}
