package androidx.car.app;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Parcelable;
/* loaded from: classes.dex */
public final /* synthetic */ class c implements hx {
    public final /* synthetic */ int a;
    public final /* synthetic */ CarAppBinder b;
    public final /* synthetic */ Parcelable c;

    public /* synthetic */ c(CarAppBinder carAppBinder, Parcelable parcelable, int i) {
        this.a = i;
        this.b = carAppBinder;
        this.c = parcelable;
    }

    @Override // defpackage.hx
    public final Object b() {
        int i = this.a;
        Parcelable parcelable = this.c;
        CarAppBinder carAppBinder = this.b;
        switch (i) {
            case 0:
                return CarAppBinder.l(carAppBinder, (Configuration) parcelable);
            default:
                return CarAppBinder.n(carAppBinder, (Intent) parcelable);
        }
    }
}
