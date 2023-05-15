package com.example.myapplication;

import android.annotation.SuppressLint;
import android.bluetooth.BluetoothDevice;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.Button;
import android.widget.PopupMenu;
import android.widget.TextView;
import android.widget.Toast;

import androidx.appcompat.app.AppCompatActivity;

import com.example.joystick.JoystickView;
import com.harrysoft.androidbluetoothserial.BluetoothManager;
import com.harrysoft.androidbluetoothserial.BluetoothSerialDevice;
import com.harrysoft.androidbluetoothserial.SimpleBluetoothDeviceInterface;

import java.util.Collection;
import java.util.Objects;

import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.schedulers.Schedulers;


public class MainActivity extends AppCompatActivity implements View.OnClickListener {
    Button button;
    private JoystickView joystickViewR;
    private JoystickView joystickViewL;
    private SimpleBluetoothDeviceInterface deviceInterface;
    int previousR;
    int previousL;
    boolean connected = false;
    BluetoothManager bluetoothManager;
    String msg;
    @SuppressLint({"ClickableViewAccessibility", "MissingPermission"})
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        joystickViewR = (JoystickView) findViewById(R.id.joystickViewR);
        joystickViewL = (JoystickView) findViewById(R.id.joystickViewL);
        button = findViewById(R.id.button);

        button.setOnClickListener(this);

        joystickViewR.setOnTouchListener(new View.OnTouchListener() {
            @SuppressLint("DefaultLocale")
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                switch (event.getActionMasked()) {
                    case MotionEvent.ACTION_MOVE:
                        int y = (int)joystickViewR.getYPos();
                        if(y != previousR) {
                            previousR = y;
                            String txt = String.format("R%d\0", y);
                            if (connected)
                                msg = txt;
                        }
                        break;

                    case MotionEvent.ACTION_DOWN:
                        y = (int)joystickViewR.getYPos();
                        String txt = String.format("R%d\0", y);
                        if (connected)
                            msg = txt;
                        break;

                    case MotionEvent.ACTION_UP:
                        previousR = 0;
                        txt = "R0\0";
                        if (connected)
                            msg = txt;
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
                        int y = (int)joystickViewL.getYPos();
                        if (y != previousL) {
                            previousL = y;
                            String txt = String.format("L%d\0", (int) y);
                            if (connected)
                                msg = txt;
                        }
                        break;

                    case MotionEvent.ACTION_DOWN:
                        y = (int)joystickViewL.getYPos();
                        String txt = String.format("L%d\0", y);
                        if (connected)
                            msg = txt;
                        break;

                    case MotionEvent.ACTION_UP:
                        previousL = 0;
                        txt = "L0\0";
                        if (connected)
                            msg = txt;
                        break;
                }
                return false;
            }
        });

        Thread thread = new Thread(new Runnable() {
            public void run(){
                Process.setThreadPriority(Process.THREAD_PRIORITY_URGENT_AUDIO);
                while(true) {
                    if (!Objects.equals(msg, "") && connected) {
                        deviceInterface.sendMessage(msg);
                        msg = "";
                    }
                }
            }
        });

        // Setup our BluetoothManager
        bluetoothManager = BluetoothManager.getInstance();
        if (bluetoothManager == null) {
            // Bluetooth unavailable on this device :( tell the user
            Toast.makeText(this, "Bluetooth not available.", Toast.LENGTH_LONG).show(); // Replace context with your context instance.
            finish();
        }

        Collection<BluetoothDevice> pairedDevices = bluetoothManager.getPairedDevicesList();
        for (BluetoothDevice device : pairedDevices) {
            if (Objects.equals(device.getName(), "ESP32"))
                connectDevice(bluetoothManager, device.getAddress());
        }

        thread.start();
    }


    private void connectDevice(BluetoothManager bluetoothManager, String mac) {
        bluetoothManager.openSerialDevice(mac)
                .subscribeOn(Schedulers.io())
                .observeOn(AndroidSchedulers.mainThread())
                .subscribe(this::onConnected, this::onError);
    }

    private void onConnected(BluetoothSerialDevice connectedDevice) {
        deviceInterface = connectedDevice.toSimpleDeviceInterface();

        connected = true;
        Toast.makeText(this, "Connected.", Toast.LENGTH_SHORT).show();

        // Listen to bluetooth events
        deviceInterface.setListeners(this::onMessageReceived, this::onMessageSent, this::onError);
    }

    private void onMessageSent(String message) {

    }

    private void onMessageReceived(String message) {

    }

    private void onError(Throwable error) {

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
                                Toast.makeText(MainActivity.this, "UwU" , Toast.LENGTH_SHORT).show();
                                if (connected)
                                    msg = "F1";
                                break;
                            case R.id.bild2:
                                Toast.makeText(MainActivity.this, "Happy" , Toast.LENGTH_SHORT).show();
                                if (connected)
                                    msg = "F2";
                                break;
                            case R.id.bild3:
                                Toast.makeText(MainActivity.this, "Angry" , Toast.LENGTH_SHORT).show();
                                if (connected)
                                    msg = "F3";
                                break;
                            case R.id.bild4:
                                Toast.makeText(MainActivity.this, "Love" , Toast.LENGTH_SHORT).show();
                                if (connected)
                                    msg = "F4";
                                break;
                            case R.id.bild5:
                                Toast.makeText(MainActivity.this, "Sleepy" , Toast.LENGTH_SHORT).show();
                                if (connected)
                                    msg = "F5";
                                break;
                            case R.id.bild6:
                                Toast.makeText(MainActivity.this, "Sad" , Toast.LENGTH_SHORT).show();
                                if (connected)
                                    msg = "F6";
                                break;
                            case R.id.bild7:
                                Toast.makeText(MainActivity.this, "Scared" , Toast.LENGTH_SHORT).show();
                                if (connected)
                                    msg = "F7";
                                break;
                            case R.id.bild8:
                                Toast.makeText(MainActivity.this, "Surprised" , Toast.LENGTH_SHORT).show();
                                if (connected)
                                    msg = "F8";
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

    protected void onDestroy(){
        super.onDestroy();
        // Disconnect all devices
        bluetoothManager.close();
        finish();
    }
}