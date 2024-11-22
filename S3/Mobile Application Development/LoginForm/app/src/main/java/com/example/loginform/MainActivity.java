package com.example.loginform;
import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        EditText un =(EditText) findViewById(R.id.username);
        EditText pw =(EditText) findViewById(R.id.password);
        Button btn =(Button) findViewById(R.id.idBtnLogin);
        btn.setOnClickListener(view -> {
            String uname = un.getText().toString();
            String passwd = pw.getText().toString();
            if(uname.equals("user") && passwd.equals("123")){
                Toast.makeText(this,"Login Success",Toast.LENGTH_SHORT).show();
            }else{
                Toast.makeText(this,"invalid username/password",Toast.LENGTH_SHORT).show();
            }
        });
    }
}