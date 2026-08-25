package com.google.android.apps.auto.sdk.service.a;

import com.google.android.gms.car.CarSensorManager;
/* loaded from: classes.dex */
final class f implements com.google.android.apps.auto.sdk.service.a.c.a<ra0>, CarSensorManager.CarSensorEventListener {
    private ra0 a;
    private d b;

    public f(d dVar, ra0 ra0Var) {
        this.b = dVar;
    }

    @Override // com.google.android.apps.auto.sdk.service.a.c.a
    public final /* synthetic */ ra0 a() {
        return null;
    }

    @Override // com.google.android.gms.car.CarSensorManager.CarSensorEventListener
    public final void onSensorChanged(int i, long j, float[] fArr, byte[] bArr) {
        new pa0(i, j, fArr, bArr);
        throw null;
    }
}
