package com.example.spinner;
import androidx.appcompat.app.AppCompatActivity;
import android.annotation.SuppressLint;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.Toast;
public class MainActivity extends AppCompatActivity implements
        AdapterView.OnItemSelectedListener {
    Spinner ap;
    String[] list = {"Apple","Kiwi","Mango","Orange"};
    @SuppressLint("MissingInflatedId")
    @SuppressWarnings("unchecked")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ap = findViewById(R.id.spinner);
        ap.setOnItemSelectedListener(this);
        ArrayAdapter ar = new ArrayAdapter(this, android.R.layout.simple_spinner_item,list);
        ar.setDropDownViewResource(android.R.layout.simple_spinner_dropdown_item);
        ap.setAdapter(ar);
    }
    @Override
    public void onItemSelected(AdapterView<?> adapterView, View view, int i,
    long l) {
        Toast.makeText(this, "You clicked on "+list[i],
                Toast.LENGTH_SHORT).show();
    }
    @Override
    public void onNothingSelected(AdapterView<?> adapterView) {
        Toast.makeText(this, "", Toast.LENGTH_SHORT).show();
    }
}