package com.example.myapplication;

import android.Manifest;
import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.app.ActivityCompat;

import com.example.joystick.JoystickView;
import com.harrysoft.androidbluetoothserial.BluetoothManager;
import com.harrysoft.androidbluetoothserial.BluetoothSerialDevice;

import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.UUID;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    Button button;
    private JoystickView joystickViewR;
    private JoystickView joystickViewL;
    TextView textL;
    TextView textR;


    int previousR;
    int previousL;


    @SuppressLint({"ClickableViewAccessibility", "MissingPermission"})
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        joystickViewR = (JoystickView) findViewById(R.id.joystickViewR);
        joystickViewL = (JoystickView) findViewById(R.id.joystickViewL);
        button = findViewById(R.id.button);

        textR = (TextView)findViewById(R.id.textViewR);
        textL = (TextView)findViewById(R.id.textViewL);

        button.setOnClickListener(this);

        joystickViewR.setOnTouchListener(new View.OnTouchListener() {
            @SuppressLint("DefaultLocale")
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getActionMasked()) {
                    case MotionEvent.ACTION_MOVE:
                        //try {
                            int y = (int)joystickViewR.getYPos();
                            if(y != previousR) {
                                //previousR = y;
                                //String txt = String.format("R %d\0", y);
                                //textR.setText(txt);
                                //outputStream.write(txt.getBytes());
                                //outputStream.flush();
                            }
                        //} catch (IOException e) {
                        //    Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                        //}
                        break;

                    case MotionEvent.ACTION_DOWN:
                        //try {
                            //int y = (int)joystickViewR.getYPos();
                            //String txt = String.format("R %d\0", y);
                            //textR.setText(txt);
                            //outputStream.write(txt.getBytes());
                            //outputStream.flush();
                        //} catch (IOException e) {
                        //    Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                        //}
                        break;

                    case MotionEvent.ACTION_UP:
                        //try {
                            //previousR = 0;
                            //String txt = "R 0\n";
                            //textR.setText(txt);
                            //outputStream.write(txt.getBytes());
                            //outputStream.flush();
                        //} catch (IOException e) {
                        //    Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                        //}
                        break;
                }
                return false;
            }
        });

        joystickViewL.setOnTouchListener(new View.OnTouchListener() {
            @SuppressLint("DefaultLocale")
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getActionMasked()) {
                    case MotionEvent.ACTION_MOVE:
                        //try {
                            int y = (int)joystickViewL.getYPos();
                            if (y != previousL) {
                                //previousL = y;
                                //String txt = String.format("L %d\0", (int) y);
                                //textL.setText(txt);
                                //outputStream.write(txt.getBytes());
                                //outputStream.flush();
                            }
                        //} catch (IOException e) {
                        //    Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                        //}
                        break;

                    case MotionEvent.ACTION_DOWN:
                        //try {
                            //int y = (int)joystickViewL.getYPos();
                            //String txt = String.format("L %d\0", y);
                            //textL.setText(txt);
                            //outputStream.write(txt.getBytes());
                            //outputStream.flush();
                        //} catch (IOException e) {
                        //    Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                        //}
                        break;

                    case MotionEvent.ACTION_UP:
                        //try {
                            //previousL = 0;
                            //String txt = "L 0\n";
                            //textL.setText(txt);
                            //outputStream.write(txt.getBytes());
                            //outputStream.flush();
                        //} catch (IOException e) {
                        //    Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                        //}
                        break;
                }
                return false;
            }
        });

        // Setup our BluetoothManager
        BluetoothManager bluetoothManager = BluetoothManager.getInstance();
        if (bluetoothManager == null) {
            // Bluetooth unavailable on this device :( tell the user
            Toast.makeText(this, "Bluetooth not available.", Toast.LENGTH_LONG).show(); // Replace context with your context instance.
            finish();
        }

        Collection<BluetoothDevice> pairedDevices = bluetoothManager.getPairedDevicesList();
        for (BluetoothDevice device : pairedDevices) {
            Log.d("My Bluetooth App", "Device name: " + device.getName());
            Log.d("My Bluetooth App", "Device MAC Address: " + device.getAddress());
        }
    }

    @Override
    public void onClick(View v) {
        switch (v.getId()){
            case R.id.button:
                PopupMenu popup = new PopupMenu(MainActivity.this, button);
                popup.getMenuInflater().inflate(R.menu.main_menu, popup.getMenu());
                popup.setOnMenuItemClickListener(new PopupMenu.OnMenuItemClickListener() {
                    public boolean onMenuItemClick(MenuItem item) {
                        switch (item.getItemId()){
                            case R.id.bild1:
                                Toast.makeText(MainActivity.this, "Erstes Bild wurde gedrückt" , Toast.LENGTH_SHORT).show();
                                break;
                            case R.id.bild2:
                                Toast.makeText(MainActivity.this, "Zweites Bild wurde gedrückt" , Toast.LENGTH_SHORT).show();
                                break;
                            case R.id.bild3:
                                Toast.makeText(MainActivity.this, "Drittes Bild wurde gedrückt" , Toast.LENGTH_SHORT).show();
                                break;
                            case R.id.bild4:
                                Toast.makeText(MainActivity.this, "Viertes Bild wurde gedrückt" , Toast.LENGTH_SHORT).show();
                                break;
                            case R.id.bild5:
                                Toast.makeText(MainActivity.this, "Fünftes Bild wurde gedrückt" , Toast.LENGTH_SHORT).show();
                                break;
                            case R.id.bild6:
                                Toast.makeText(MainActivity.this, "Sechstes Bild wurde gedrückt" , Toast.LENGTH_SHORT).show();
                                break;
                            case R.id.bild7:
                                Toast.makeText(MainActivity.this, "Siebtes Bild wurde gedrückt" , Toast.LENGTH_SHORT).show();
                                break;
                            case R.id.bild8:
                                Toast.makeText(MainActivity.this, "Achtes Bild wurde gedrückt" , Toast.LENGTH_SHORT).show();
                                break;
                        }
                        return true;
                    }
                });
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                    popup.setForceShowIcon(true);
                }
                popup.show();
                break;
        }
    }
}