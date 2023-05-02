package com.example.lat3selasa08itentluasyusriltk20;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class LuasActivity extends AppCompatActivity {
    EditText edPanjang, edLebar;
    TextView hasilLuas;
    Button btnHasilLuas;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_luas);

        edPanjang = (EditText) findViewById(R.id.edPanjang);
        edLebar = (EditText) findViewById(R.id.edLebar);
        hasilLuas = (TextView) findViewById(R.id.hasilLuas);
        btnHasilLuas = (Button) findViewById(R.id.btnHasilLuas);

        btnHasilLuas.setOnClickListener(this::klikHitungPersegiPanjang);
    }

    public void klikHitungPersegiPanjang(View v) {
        double panjang = Double.parseDouble(edPanjang.getText().toString());
        double lebar  = Double.parseDouble(edLebar.getText().toString());

        hasilLuas.setText(String.valueOf((panjang * lebar)));
    }
}