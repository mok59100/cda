package com.afpa.trouverunnombre;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;

public class Activity2 extends AppCompatActivity {
    int nombreChoisi;
    public static Object Class;
    private EditText resultat;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_2);

        Intent intent = getIntent();
        nombreChoisi = Integer.parseInt(intent.getStringExtra(MainActivity.EXTRA_MESSAGE));

        resultat = (EditText) findViewById(R.id.resultat);

        Button rejouer = (Button) findViewById(R.id.rejouer);
        Intent inRetour = new Intent(this,MainActivity.class);

        Intent intentReception=getIntent();

    }

    public class Class {
    }
}