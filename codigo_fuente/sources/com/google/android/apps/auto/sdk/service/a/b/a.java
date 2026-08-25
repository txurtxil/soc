package com.google.android.apps.auto.sdk.service.a.b;

import android.graphics.Bitmap;
import com.google.android.gms.car.CarNavigationStatusManager;
import com.google.android.gms.car.CarNotConnectedException;
import java.io.ByteArrayOutputStream;
/* loaded from: classes.dex */
public final class a extends xa0 {
    private final CarNavigationStatusManager a;
    private b b;

    public a(CarNavigationStatusManager carNavigationStatusManager) {
        this.a = carNavigationStatusManager;
        b bVar = new b(this);
        this.b = bVar;
        try {
            carNavigationStatusManager.registerListener(bVar);
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        }
    }

    public final void addListener(wa0 wa0Var) {
        b bVar = this.b;
        bVar.getClass();
        if (bVar.b != null) {
            throw null;
        }
    }

    public final void onCarDisconnected() {
    }

    public final void removeListener() {
        this.a.unregisterListener();
    }

    public final void sendNavigationStatus(int i) {
        try {
            this.a.sendNavigationStatus(i);
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        }
    }

    public final void sendNavigationTurnDistanceEvent(int i, int i2, int i3, int i4) {
        int i5 = 1;
        if (i4 != 1) {
            i5 = 2;
            if (i4 != 2) {
                i5 = 4;
                if (i4 != 4) {
                    i5 = 6;
                    if (i4 != 6) {
                        i5 = 7;
                        if (i4 != 7) {
                            c2.n("The units provided are not supported.");
                            return;
                        }
                    }
                }
            }
        }
        try {
            this.a.sendNavigationTurnDistanceEvent(i, i2, i3, i5);
        } catch (CarNotConnectedException e) {
            throw new Exception(e);
        }
    }

    public final void sendNavigationTurnEvent(int i, CharSequence charSequence, int i2, int i3, Bitmap bitmap, int i4) {
        byte[] bArr;
        String str = null;
        if (bitmap != null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, byteArrayOutputStream);
            bArr = byteArrayOutputStream.toByteArray();
        } else {
            bArr = null;
        }
        if (charSequence != null) {
            try {
                str = charSequence.toString();
            } catch (CarNotConnectedException e) {
                throw new Exception(e);
            }
        }
        this.a.sendNavigationTurnEvent(i, str, i2, i3, bArr, i4);
    }

    public final void sendNavigationTurnEvent(int i, CharSequence charSequence, int i2, int i3, int i4) {
        sendNavigationTurnEvent(i, charSequence == null ? null : charSequence.toString(), i2, i3, null, i4);
    }
}
