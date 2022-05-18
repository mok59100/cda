package com.afpa.deuxactivites;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;

public class SecondActivity extends AppCompatActivity {

public static final String EXTRA_REPLY ="deuxactivites.extra.REPLY";
        private EditText mReply;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_second);
    TextView textView = findViewById(R.id.text_message);
    Intent intent = getIntent();
    String message = intent.getStringExtra(MainActivity.EXTRA_MESSAGE);
    textView.setText(message);
    mReply = findViewById(R.id.edit_text_reply);
    }

    public void returnReply(View view) {

        String reply = mReply.getText().toString();
        Intent replyIntent = new Intent();
        replyIntent.putExtra(EXTRA_REPLY,reply);
        setResult(RESULT_OK,replyIntent);
        finish();
    }
}