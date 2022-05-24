package com.afpa.trouverunnombre;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

import java.text.BreakIterator;
import java.util.Random;

public class MainActivity extends AppCompatActivity {
//on declare nos elements

private TextView proposition;
private TextView texte;
private EditText nom ;


public static final String EXTRA_MESSAGE ="TrouverUnNombre.extra.MESSAGE";


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        texte= (TextView)findViewById(R.id.texte);
        proposition = (EditText) findViewById(R.id.proposition);
        Button validation = (Button) findViewById(R.id.button);
        validation.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                Intent intent;
                intent.putExtra("nom", nom.getText().toString());
                intent.putExtra("proposition", proposition.getText().toString());
                //intent.putExtra("ChiffreInconnu", ChiffreInconnu().getText().ToString());
                startActivity(intent);

    }
            public void Validation(View view) {

                //on va chercher le contenu de l'edittext
                String valeur = proposition.getText().toString();

                //on cree une nouvelle activité
                Intent intent = new Intent(this, Activity2.class);

                //on va chercher le contenu
                intent.putExtra(EXTRA_MESSAGE, valeur);

                //on lance l'activité
                startActivity(intent);

            }

            public void ChiffreInconnu() {
                Random result = new Random();
                //je recupere le random sans le chiffre 0
                int randomNumber = result.nextInt(Integer.parseInt(ChiffreInconnu().getText().toString())) + 1;
            }

            public void propositionJoueur () {

                System.out.println("[" + nom + "]: Je propose " + proposition);


            }
        });
    }
}