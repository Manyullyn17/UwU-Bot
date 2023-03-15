package com.example.joystick;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;

public class JoystickView extends View {
    private float xPos, yPos;
    private float centerX, centerY;
    private float joystickRadius;
    private float buttonRadius;
    private Paint paint;

    public JoystickView(Context context, AttributeSet attrs) {
        super(context, attrs);
        paint = new Paint();
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        centerX = w / 2;
        centerY = h / 2;
        joystickRadius = Math.min(w, h) / 3;
        buttonRadius = Math.min(w, h) / 6;
        xPos = centerX;
        yPos = centerY;
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        float x = event.getX();
        float y = event.getY();
        if(event.getAction() == MotionEvent.ACTION_UP) {
            //y = centerY;
            y = y;
        } else {
            double abs = Math.sqrt((x - centerX) * (x - centerX) + (y - centerY) * (y - centerY));
            if (abs > joystickRadius) {
                y = (float) ((y - centerY) * joystickRadius / abs + centerY);
            }
        }
        xPos = centerX;
        yPos = y;
        invalidate();
        return true;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        paint.setColor(Color.GRAY);
        canvas.drawCircle(centerX, centerY, joystickRadius, paint);
        paint.setColor(Color.BLUE);
        canvas.drawCircle(xPos, yPos, buttonRadius, paint);
    }

    public float getXPos() {
        return 0;
    }

    public float getYPos() {
        float y = map(centerY - yPos, -joystickRadius/2, joystickRadius/2, -100, 100)/2F;
        return roundToNext5((int)y);
    }

    private float map(float x, float in_min, float in_max, float out_min, float out_max) {
        return (x - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
    }

    private static int roundToNext5(int num) {
        int remainder = num % 5;
        if (remainder == 0) {
            return num;
        }
        return num + (5 - remainder);
    }
}

