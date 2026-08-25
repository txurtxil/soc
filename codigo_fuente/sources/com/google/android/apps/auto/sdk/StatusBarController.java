package com.google.android.apps.auto.sdk;

import android.os.RemoteException;
import android.util.Log;
/* loaded from: classes.dex */
public class StatusBarController {
    private s a;

    public StatusBarController(s sVar) {
        this.a = sVar;
    }

    public final void a() {
        Log.d("CSL.StatusBarController", "hideConnectivityLevel");
        try {
            this.a.d();
        } catch (RemoteException e) {
            Log.e("CSL.StatusBarController", "Error hiding connectivity level", e);
        }
    }

    public final void b() {
        Log.d("CSL.StatusBarController", "hideBatteryLevel");
        try {
            this.a.e();
        } catch (RemoteException e) {
            Log.e("CSL.StatusBarController", "Error hiding battery level", e);
        }
    }

    public final void c() {
        Log.d("CSL.StatusBarController", "hideClock");
        try {
            this.a.f();
        } catch (RemoteException e) {
            Log.e("CSL.StatusBarController", "Error hiding clock", e);
        }
    }

    public void hideTitle() {
        Log.d("CSL.StatusBarController", "hideTitle");
        try {
            this.a.c();
        } catch (RemoteException e) {
            Log.e("CSL.StatusBarController", "Error hiding title", e);
        }
    }

    public boolean isTitleVisible() {
        Log.d("CSL.StatusBarController", "isTitleVisible");
        try {
            return this.a.a();
        } catch (RemoteException e) {
            Log.e("CSL.StatusBarController", "Error querying title visibility", e);
            return false;
        }
    }

    public void setDayNightStyle(int i) {
        StringBuilder sb = new StringBuilder(28);
        sb.append("setDayNightStyle ");
        sb.append(i);
        Log.d("CSL.StatusBarController", sb.toString());
        try {
            this.a.a(i);
        } catch (RemoteException e) {
            Log.e("CSL.StatusBarController", "Error setting day style", e);
        }
    }

    public void setTitle(CharSequence charSequence) {
        String valueOf = String.valueOf(charSequence);
        StringBuilder sb = new StringBuilder(valueOf.length() + 9);
        sb.append("setTitle ");
        sb.append(valueOf);
        Log.d("CSL.StatusBarController", sb.toString());
        try {
            this.a.a(charSequence);
        } catch (RemoteException e) {
            Log.e("CSL.StatusBarController", "Error setting title", e);
        }
    }

    public void showTitle() {
        Log.d("CSL.StatusBarController", "showTitle");
        try {
            this.a.b();
        } catch (RemoteException e) {
            Log.e("CSL.StatusBarController", "Error showing title", e);
        }
    }
}
