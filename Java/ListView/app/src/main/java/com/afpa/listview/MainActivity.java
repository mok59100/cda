package com.afpa.listview;

import androidx.appcompat.app.AppCompatActivity;

import android.widget.ArrayAdapter;
import android.widget.ListView;

public class MainActivity<arrayAdapter> extends AppCompatActivity {



    // Récupération de listview ListView
     ListView listView= (ListView) findViewById(R.id.listView);
     //Création des users
    UserAccount francois = new UserAccount("François","admin", false);
    UserAccount germain = new UserAccount("Germain","user", false);
    UserAccount cedric = new UserAccount("Cédric","guest",false);
    //Création de la liste
    UserAccount[] users = new UserAccount[]{francois,germain,cedric};

    //Création de l'adapter
    ArrayAdapter<UserAccount> arrayAdapter = new ArrayAdapter<UserAccount>(this, android.R.layout.simple_list_item_1,users);

    //Affectation de l'adapter
    listView.setAdapter(arrayAdapter);

    for(int i = 0; i < users.length; i++)

    {
        listView.setItemChecked(i, users[i].isActive());
    }
//    @Override
//    protected void onCreate(Bundle savedInstanceState) {
//        super.onCreate(savedInstanceState);
//        setContentView(R.layout.activity_main);
//    }
}