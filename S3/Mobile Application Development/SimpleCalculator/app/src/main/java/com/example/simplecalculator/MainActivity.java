package com.example.simplecalculator;

import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    private EditText editTextNumber1;
    private EditText editTextNumber2;
    private Button buttonAdd;
    private Button buttonSubtract;
    private Button buttonMultiply;
    private Button buttonDivide;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        editTextNumber1 = findViewById(R.id.editTextNumberDecimal);
        editTextNumber2 = findViewById(R.id.editTextNumberDecimal2);
        buttonAdd = findViewById(R.id.button_add);
        buttonSubtract = findViewById(R.id.button_subtract);
        buttonMultiply = findViewById(R.id.button_multiply);
        buttonDivide = findViewById(R.id.button_divide);

        buttonAdd.setOnClickListener(v -> performOperation('+'));
        buttonSubtract.setOnClickListener(v -> performOperation('-'));
        buttonMultiply.setOnClickListener(v -> performOperation('*'));
        buttonDivide.setOnClickListener(v -> performOperation('/'));
    }

    private void performOperation(char operation) {
        String input1 = editTextNumber1.getText().toString();
        String input2 = editTextNumber2.getText().toString();

        if (input1.isEmpty() || input2.isEmpty()) {
            Toast.makeText(this, "Please enter both numbers", Toast.LENGTH_SHORT).show();
            return;
        }

        try {
            double number1 = Double.parseDouble(input1);
            double number2 = Double.parseDouble(input2);
            double result;

            switch (operation) {
                case '+':
                    result = number1 + number2;
                    break;
                case '-':
                    result = number1 - number2;
                    break;
                case '*':
                    result = number1 * number2;
                    break;
                case '/':
                    if (number2 == 0) {
                        Toast.makeText(this, "Cannot divide by zero", Toast.LENGTH_SHORT).show();
                        return;
                    }
                    result = number1 / number2;
                    break;
                default:
                    Toast.makeText(this, "Unknown operation", Toast.LENGTH_SHORT).show();
                    return;
            }

            Toast.makeText(this, "Result: " + result, Toast.LENGTH_LONG).show();
        } catch (NumberFormatException e) {
            Toast.makeText(this, "Invalid number format", Toast.LENGTH_SHORT).show();
        }
    }
}
