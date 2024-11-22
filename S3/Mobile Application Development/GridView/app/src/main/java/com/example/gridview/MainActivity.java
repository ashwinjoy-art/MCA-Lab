package com.example.gridview;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.GridView;
import android.widget.SimpleAdapter;
import android.widget.Toast;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
public class MainActivity extends AppCompatActivity {
    private GridView gridView;
    private int[] imageIds = {R.drawable.pic1, R.drawable.pic2, R.drawable.pic3};
    private String[] imageNames = {"ship", "car", "bike"};
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        gridView = findViewById(R.id.gridView);
        setupGridView();
    }
    private void setupGridView() {
        List<HashMap<String, Object>> aList = new ArrayList<>();
        for (int i = 0; i < imageIds.length; i++) {
            HashMap<String, Object> hm = new HashMap<>();
            hm.put("image", imageIds[i]);
            hm.put("name", imageNames[i]);
            aList.add(hm);
        }
        String[] from = {"image", "name"};
        int[] to = {R.id.gridImageView, R.id.gridItemName};
        SimpleAdapter adapter = new SimpleAdapter(getBaseContext(), aList,
                R.layout.activity_list, from, to);
        gridView.setAdapter(adapter);
        gridView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id)
            {
                showImageAlert(imageNames[position]);
            }
        });
    }
    private void showImageAlert(String imageName) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this);
        builder.setTitle("Image Selected");
        builder.setMessage("You selected: " + imageName);
        builder.setPositiveButton("OK", null);
        builder.show();
    }
}
