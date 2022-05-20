package com.afpa.mondeafpa;

import static androidx.core.content.PackageManagerCompat.LOG_TAG;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

//herite de AppCompatActivity
public class MainActivity extends AppCompatActivity {


    private TextView faces; //on declare nos elements
    private EditText insertChiffreDé;



 public static final String EXTRA_MESSAGE ="MonDeAfpa.extra.MESSAGE";

    @Override //methode oncreate
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);


        insertChiffreDé = findViewById(R.id.insertChiffreDé);


    }

public void lancer(View view){
        //on cherche le contenu de l'input
   String chiffre = insertChiffreDé.getText().toString();
   //on crer une nouvelle activite
   Intent intent = new Intent(this,MainActivity2.class);
   //on va chercher le contenu de l'input
   intent.putExtra(EXTRA_MESSAGE,chiffre);
//on lance l'activite
    startActivity(intent);
}








}


