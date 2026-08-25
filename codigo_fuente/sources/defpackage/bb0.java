package defpackage;

import android.content.ContextWrapper;
import android.os.Bundle;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import com.google.android.gms.car.CarActivityHost;
import com.google.android.gms.car.input.InputManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: bb0  reason: default package */
/* loaded from: classes.dex */
public abstract class bb0 extends ContextWrapper implements LayoutInflater.Factory, CarActivityHost.HostedCarActivity {
    private CarActivityHost a;
    private boolean b;

    public final Object a(String str) {
        return this.a.getCarManager(str);
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void attach(CarActivityHost carActivityHost) {
        if (Log.isLoggable("CAR.PROJECTION", 2)) {
            int i = getResources().getConfiguration().densityDpi;
            StringBuilder sb = new StringBuilder(24);
            sb.append("Context DPI: ");
            sb.append(i);
            Log.v("CAR.PROJECTION", sb.toString());
        }
        this.a = carActivityHost;
    }

    public final InputManager b() {
        return this.a.getInputManager();
    }

    public final boolean c() {
        CarActivityHost carActivityHost = this.a;
        if (carActivityHost != null) {
            return carActivityHost.isFinishing();
        }
        return true;
    }

    public final Window d() {
        return this.a.getWindow();
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public final Object e() {
        return this.a.getNonConfigurationInstance();
    }

    public View findViewById(int i) {
        return this.a.findViewById(i);
    }

    public LayoutInflater getLayoutInflater() {
        return this.a.getLayoutInflater();
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public boolean onKeyLongPress(int i, KeyEvent keyEvent) {
        return false;
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (i == 4) {
            this.b = true;
            a();
            return this.b;
        }
        return false;
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onRestoreInstanceState(Bundle bundle) {
        this.a.onRestoreInstanceState(bundle);
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onSaveInstanceState(Bundle bundle) {
        this.a.onSaveInstanceState(bundle);
    }

    @Override // com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public void onWindowFocusChanged(boolean z, boolean z2) {
    }

    public void setContentView(View view) {
        this.a.setContentView(view);
    }

    public void a() {
        this.b = false;
    }
}
