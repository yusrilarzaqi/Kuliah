package com.example.lat3selasa08itentluasyusriltk20;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class KelilingActivity extends AppCompatActivity {
    EditText edPanjang, edLebar;
    TextView hasilKeliling;
    Button btnHasilKeliling;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_keliling);


        edPanjang = (EditText) findViewById(R.id.edPanjang);
        edLebar = (EditText) findViewById(R.id.edLebar);
        hasilKeliling= (TextView) findViewById(R.id.hasilKeliling);
        btnHasilKeliling = (Button) findViewById(R.id.btnHasilKeliling);

        btnHasilKeliling.setOnClickListener(this::klikHitungKelilingPersegiPanjang);
    }

    public void klikHitungKelilingPersegiPanjang(View v) {
        double panjang = Double.parseDouble(edPanjang.getText().toString());
        double lebar  = Double.parseDouble(edLebar.getText().toString());

        hasilKeliling.setText(String.valueOf((4 * (panjang + lebar))));
    }
}