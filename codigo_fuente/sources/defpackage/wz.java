package defpackage;

import android.hardware.display.VirtualDisplay;
import android.util.Log;
/* renamed from: wz  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class wz implements Runnable {
    public final /* synthetic */ yz a;
    public final /* synthetic */ int b;
    public final /* synthetic */ int c;
    public final /* synthetic */ int d;

    public /* synthetic */ wz(yz yzVar, int i, int i2, int i3) {
        this.a = yzVar;
        this.b = i;
        this.c = i2;
        this.d = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        StringBuilder sb = new StringBuilder("resizeMirroring(");
        yz yzVar = this.a;
        sb.append(yzVar);
        sb.append("): w=");
        int i = this.b;
        sb.append(i);
        sb.append(" h=");
        int i2 = this.c;
        sb.append(i2);
        sb.append(" dpi=");
        int i3 = this.d;
        sb.append(i3);
        Log.d("ScreenMirrorManager", sb.toString());
        zz zzVar = b00.l;
        if (b00.o && yzVar == yz.b) {
            zzVar = b00.m;
        }
        zzVar.d = i;
        zzVar.e = i2;
        zzVar.f = i3;
        eq eqVar = zzVar.j;
        if (eqVar != null) {
            eqVar.b.post(new cq(eqVar, i, i2, 2));
            return;
        }
        VirtualDisplay virtualDisplay = zzVar.a;
        if (virtualDisplay != null) {
            virtualDisplay.resize(i, i2, i3);
            zzVar.g = i;
            zzVar.h = i2;
        }
    }
}
