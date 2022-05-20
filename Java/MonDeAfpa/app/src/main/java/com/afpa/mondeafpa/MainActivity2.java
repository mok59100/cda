package com.afpa.mondeafpa;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.util.Random;

public class MainActivity2 extends AppCompatActivity {

    int nombreChoisi;
    private TextView resultat; //on declare nos elements
    private Button relancer;

    @Override

    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main2);

        Intent intent = getIntent();
        nombreChoisi = Integer.parseInt(intent.getStringExtra(MainActivity.EXTRA_MESSAGE));
    }
    public void resultatChiffre(){

        Random result = new Random();
        //je recuperer le ramdom sans chiffre o
        int ramdomNumber= result.nextInt(nombreChoisi)+1;

        
    }
}