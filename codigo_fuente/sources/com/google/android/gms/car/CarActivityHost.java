package com.google.android.gms.car;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.google.android.gms.car.input.InputManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes.dex */
public interface CarActivityHost {

    /* loaded from: classes.dex */
    public interface HostedCarActivity {
        void attach(CarActivityHost carActivityHost);

        void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

        void onConfigurationChanged(Configuration configuration);

        void onCreate(Bundle bundle);

        void onDestroy();

        boolean onKeyDown(int i, KeyEvent keyEvent);

        boolean onKeyLongPress(int i, KeyEvent keyEvent);

        boolean onKeyUp(int i, KeyEvent keyEvent);

        void onLowMemory();

        void onNewIntent(Intent intent);

        void onPause();

        void onPostResume();

        void onRestoreInstanceState(Bundle bundle);

        void onResume();

        Object onRetainNonConfigurationInstance();

        void onSaveInstanceState(Bundle bundle);

        void onStart();

        void onStop();

        void onWindowFocusChanged(boolean z, boolean z2);

        void setContext(Context context);
    }

    View findViewById(int i);

    void finish();

    Object getCarActivityService();

    Object getCarManager(String str);

    InputManager getInputManager();

    Intent getIntent();

    LayoutInflater getLayoutInflater();

    Object getNonConfigurationInstance();

    Window getWindow();

    boolean hasWindowFocus();

    boolean isFinishing();

    void onRestoreInstanceState(Bundle bundle);

    void onSaveInstanceState(Bundle bundle);

    void setContentView(int i);

    void setContentView(View view);

    void setContentView(View view, ViewGroup.LayoutParams layoutParams);

    void setIgnoreConfigChanges(int i);

    void setIntent(Intent intent);

    void startCarProjectionActivity(Intent intent);
}
