package com.google.android.apps.auto.sdk;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.car.CarNotConnectedException;
/* loaded from: classes.dex */
public class CarActivity extends ya0 {
    private CarUiController d;
    private aa e;
    private ac f;
    private ViewGroup g;

    @Override // defpackage.bb0
    public View findViewById(int i) {
        return super.findViewById(i);
    }

    public CarUiController getCarUiController() {
        return this.d;
    }

    @Override // defpackage.bb0
    public LayoutInflater getLayoutInflater() {
        return super.getLayoutInflater();
    }

    @Override // defpackage.cb0
    public k90 getSupportFragmentManager() {
        return super.getSupportFragmentManager();
    }

    @Override // defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        String valueOf = String.valueOf(configuration);
        StringBuilder sb = new StringBuilder(valueOf.length() + 23);
        sb.append("onConfigurationChanged ");
        sb.append(valueOf);
        Log.d("CSL.CarActivity", sb.toString());
        getResources().getConfiguration().updateFrom(configuration);
        this.d.a(getResources().getConfiguration());
    }

    @Override // defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.e = new aa(getBaseContext());
        this.f = new ac();
        CarUiController carUiController = new CarUiController(this.e, b(), this.f);
        this.d = carUiController;
        super.setContentView(carUiController.d());
        this.g = (ViewGroup) findViewById(this.d.c());
        StatusBarController statusBarController = this.d.getStatusBarController();
        try {
            if (h()) {
                statusBarController.c();
            }
            if (g()) {
                statusBarController.b();
            }
            if (f()) {
                statusBarController.a();
            }
        } catch (CarNotConnectedException e) {
            Log.w("CSL.CarActivity", "Unable to get car info", e);
        }
    }

    @Override // defpackage.cb0, android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = this.f.onCreateView(str, context, attributeSet);
        return onCreateView != null ? onCreateView : super.onCreateView(str, context, attributeSet);
    }

    @Override // defpackage.bb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onRestoreInstanceState(Bundle bundle) {
        Bundle bundle2 = bundle.getBundle("android:viewHierarchyState");
        if (bundle2 != null) {
            bundle2.setClassLoader(this.e.a().getClassLoader());
        }
        super.onRestoreInstanceState(bundle);
        this.d.a(bundle);
    }

    @Override // defpackage.cb0, defpackage.bb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        this.d.b(bundle);
    }

    @Override // defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onStart() {
        super.onStart();
        this.d.a();
    }

    @Override // defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onStop() {
        super.onStop();
        this.d.b();
    }

    public void setContentView(int i) {
        this.g.removeAllViews();
        getLayoutInflater().inflate(i, this.g, true);
    }

    public void startCarActivity(Intent intent) {
        intent.putExtra("android.intent.extra.PACKAGE_NAME", getBaseContext().getPackageName());
        this.d.a(intent);
    }

    @Override // defpackage.bb0
    public void setContentView(View view) {
        this.g.removeAllViews();
        this.g.addView(view);
    }
}
