package com.example.lat3selasa08itentluasyusriltk20;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {
    Button btnLuas, btnKeliling;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        btnLuas = (Button) findViewById(R.id.btnLuas);
        btnKeliling = (Button) findViewById(R.id.btnKeliling);

        btnLuas.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent bukaLuas = new Intent(getApplicationContext(), LuasActivity.class);
                startActivity(bukaLuas);
            }
        });

        btnKeliling.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                Intent bukaKeliling = new Intent(getApplicationContext(), KelilingActivity.class);
                startActivity(bukaKeliling);
            }
        });
    }
}