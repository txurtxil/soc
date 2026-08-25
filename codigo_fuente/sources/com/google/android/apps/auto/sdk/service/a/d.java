package com.google.android.apps.auto.sdk.service.a;

import android.util.Log;
import com.google.android.gms.car.CarNotConnectedException;
import com.google.android.gms.car.CarSensorManager;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class d extends sa0 {
    private static final List<Integer> b;
    private final CarSensorManager a;
    private ArrayList<Integer> c;
    private int[] d;
    private com.google.android.apps.auto.sdk.service.a.c.b<ra0, f> e = new com.google.android.apps.auto.sdk.service.a.c.b<>(new e(this));

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(1);
        arrayList.add(11);
        arrayList.add(9);
        arrayList.add(6);
    }

    public d(CarSensorManager carSensorManager) {
        this.a = carSensorManager;
    }

    private final List<Integer> a() {
        ArrayList<Integer> arrayList = this.c;
        if (arrayList != null) {
            return arrayList;
        }
        this.c = new ArrayList<>();
        try {
            int[] supportedSensors = this.a.getSupportedSensors();
            if (supportedSensors != null) {
                for (int i : supportedSensors) {
                    if (b.contains(Integer.valueOf(i))) {
                        this.c.add(Integer.valueOf(i));
                    }
                }
            }
            return this.c;
        } catch (CarNotConnectedException e) {
            Log.e("CSL.CarSensorManagerGms", "Car Not Connected", e);
            throw new Exception(e);
        }
    }

    public final boolean addListener(ra0 ra0Var, int i, int i2) {
        if (!isSensorSupported(i)) {
            return false;
        }
        try {
            return this.a.registerListener(this.e.a(Integer.valueOf(i), ra0Var), i, i2);
        } catch (CarNotConnectedException e) {
            this.e.b(Integer.valueOf(i), ra0Var);
            throw new Exception(e);
        }
    }

    public final pa0 getLatestSensorEvent(int i) {
        try {
            CarSensorManager.RawEventData latestSensorEvent = this.a.getLatestSensorEvent(i);
            return new pa0(latestSensorEvent.sensorType, latestSensorEvent.timeStamp, latestSensorEvent.floatValues, latestSensorEvent.byteValues);
        } catch (CarNotConnectedException e) {
            Log.e("CSL.CarSensorManagerGms", "Car Not Connected", e);
            throw new Exception(e);
        }
    }

    public final int[] getSupportedSensors() {
        if (this.d == null) {
            List<Integer> a = a();
            this.d = new int[a.size()];
            for (int i = 0; i < a.size(); i++) {
                this.d[i] = a.get(i).intValue();
            }
        }
        return this.d;
    }

    public final boolean isSensorSupported(int i) {
        return a().contains(Integer.valueOf(i));
    }

    public final void onCarDisconnected() {
        com.google.android.apps.auto.sdk.service.a.c.b<ra0, f> bVar = this.e;
        synchronized (bVar.b) {
            bVar.b.clear();
            bVar.a.clear();
        }
    }

    public final void removeListener(ra0 ra0Var, int i) {
        this.a.unregisterListener(this.e.b(Integer.valueOf(i), ra0Var), i);
    }

    public final void removeListener(ra0 ra0Var) {
        this.a.unregisterListener(this.e.a(ra0Var));
    }
}
