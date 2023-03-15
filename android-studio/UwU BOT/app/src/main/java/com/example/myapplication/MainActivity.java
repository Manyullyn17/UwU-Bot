package com.example.myapplication;

import android.Manifest;
import android.annotation.SuppressLint;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothSocket;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
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

import java.io.IOException;
import java.io.OutputStream;
import java.util.UUID;

public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    Button button;
    private JoystickView joystickViewR;
    private JoystickView joystickViewL;
    TextView textL;
    TextView textR;

    BluetoothAdapter mBluetoothAdapter;
    BluetoothDevice esp32;
    UUID uuid;
    BluetoothSocket socket;
    OutputStream outputStream;

    int previousR;
    int previousL;

    private static final int REQUEST_BLUETOOTH = 1;
    private static final String[] PERMISSIONS_BLUETOOTH = {
            Manifest.permission.BLUETOOTH,
            Manifest.permission.BLUETOOTH_ADMIN,
            Manifest.permission.BLUETOOTH_CONNECT
    };

    @SuppressLint({"ClickableViewAccessibility"})
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

        // Check if the BLUETOOTH and BLUETOOTH_ADMIN permissions have been granted
        if (ActivityCompat.checkSelfPermission(this, Manifest.permission.BLUETOOTH) != PackageManager.PERMISSION_GRANTED ||
                ActivityCompat.checkSelfPermission(this, Manifest.permission.BLUETOOTH_ADMIN) != PackageManager.PERMISSION_GRANTED ||
                ActivityCompat.checkSelfPermission(this, Manifest.permission.BLUETOOTH_CONNECT) != PackageManager.PERMISSION_GRANTED) {
            // Request the BLUETOOTH and BLUETOOTH_ADMIN permissions
            ActivityCompat.requestPermissions(this, PERMISSIONS_BLUETOOTH, REQUEST_BLUETOOTH);
        }
    }

    @SuppressLint({"MissingPermission", "ClickableViewAccessibility"})
    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        switch (requestCode) {
            case REQUEST_BLUETOOTH:
                if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                    // Permission has been granted, continue with your app

                    // Initialize the Bluetooth adapter
                    mBluetoothAdapter = BluetoothAdapter.getDefaultAdapter();

                    // Find the ESP32 using the device's name
                    esp32 = mBluetoothAdapter.getRemoteDevice("34:86:5D:FC:3F:A6");

                    // Connect to the ESP32
                    uuid = UUID.fromString("00001101-0000-1000-8000-00805f9b34fb"); // Standard SerialPortService ID

                    try {
                        socket = esp32.createRfcommSocketToServiceRecord(uuid);
                        socket.connect();

                        // Send data
                        outputStream = socket.getOutputStream();
                        Toast.makeText(this, "Connected", Toast.LENGTH_SHORT).show();
                        outputStream.write("Connected!".getBytes());
                        outputStream.flush();

                        joystickViewR.setOnTouchListener(new View.OnTouchListener() {
                            @SuppressLint("DefaultLocale")
                            @Override
                            public boolean onTouch(View v, MotionEvent event) {
                                switch (event.getActionMasked()) {
                                    case MotionEvent.ACTION_MOVE:
                                        try {
                                            int y = (int)joystickViewR.getYPos();
                                            if(y != previousR) {
                                                previousR = y;
                                                String txt = String.format("R %d\0", y);
                                                textR.setText(txt);
                                                outputStream.write(txt.getBytes());
                                                outputStream.flush();
                                            }
                                        } catch (IOException e) {
                                            Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                                        }
                                        break;

                                    case MotionEvent.ACTION_DOWN:
                                        try {
                                            int y = (int)joystickViewR.getYPos();
                                                String txt = String.format("R %d\0", y);
                                                textR.setText(txt);
                                                outputStream.write(txt.getBytes());
                                                outputStream.flush();
                                        } catch (IOException e) {
                                            Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                                        }
                                        break;

                                    case MotionEvent.ACTION_UP:
                                        try {
                                            previousR = 0;
                                            String txt = "R 0\n";
                                            //textR.setText(txt);
                                            //outputStream.write(txt.getBytes());
                                            outputStream.flush();
                                        } catch (IOException e) {
                                            Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                                        }
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
                                        try {
                                            int y = (int)joystickViewL.getYPos();
                                            if (y != previousL) {
                                                previousL = y;
                                                String txt = String.format("L %d\0", (int) y);
                                                textL.setText(txt);
                                                outputStream.write(txt.getBytes());
                                                outputStream.flush();
                                            }
                                        } catch (IOException e) {
                                            Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                                        }
                                        break;

                                    case MotionEvent.ACTION_DOWN:
                                        try {
                                            int y = (int)joystickViewL.getYPos();
                                            String txt = String.format("L %d\0", y);
                                            textL.setText(txt);
                                            outputStream.write(txt.getBytes());
                                            outputStream.flush();
                                        } catch (IOException e) {
                                            Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                                        }
                                        break;

                                    case MotionEvent.ACTION_UP:
                                        try {
                                            previousL = 0;
                                            String txt = "L 0\n";
                                            //textL.setText(txt);
                                            //outputStream.write(txt.getBytes());
                                            outputStream.flush();
                                        } catch (IOException e) {
                                            Toast.makeText(MainActivity.this, "Couldn't send Data", Toast.LENGTH_SHORT).show();
                                        }
                                        break;
                                }
                                return false;
                            }
                        });

                    } catch (IOException e) {
                        //throw new RuntimeException(e);
                        Toast.makeText(this, "Couldn't connect to Bluetooth", Toast.LENGTH_SHORT).show();
                    }
                } else {
                    // Permission has been denied, show an error message or close the app
                    Toast.makeText(this, "Bluetooth permission is required to use this app.", Toast.LENGTH_SHORT).show();
                    finish();
                }
                break;
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