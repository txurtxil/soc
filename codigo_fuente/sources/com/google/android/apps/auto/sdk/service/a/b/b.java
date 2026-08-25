package com.google.android.apps.auto.sdk.service.a.b;

import com.google.android.gms.car.CarNavigationStatusManager;
/* loaded from: classes.dex */
final class b implements CarNavigationStatusManager.CarNavigationStatusListener {
    wa0 a;
    va0 b;
    a c;

    public b(a aVar) {
        this.c = aVar;
    }

    @Override // com.google.android.gms.car.CarNavigationStatusManager.CarNavigationStatusListener
    public final void onStart(int i, int i2, int i3, int i4, int i5) {
        if (i2 == 1) {
            this.b = new va0(i, 1, i3, i4, i5);
        } else {
            this.b = new va0(i, 2, 0, 0, 0);
        }
    }

    @Override // com.google.android.gms.car.CarNavigationStatusManager.CarNavigationStatusListener
    public final void onStop() {
    }
}
