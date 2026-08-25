package androidx.car.app;
/* loaded from: classes.dex */
public final /* synthetic */ class d implements hx {
    public final /* synthetic */ int a;
    public final /* synthetic */ CarAppBinder b;

    public /* synthetic */ d(CarAppBinder carAppBinder, int i) {
        this.a = i;
        this.b = carAppBinder;
    }

    @Override // defpackage.hx
    public final Object b() {
        int i = this.a;
        CarAppBinder carAppBinder = this.b;
        switch (i) {
            case 0:
                return CarAppBinder.i(carAppBinder);
            case 1:
                return CarAppBinder.k(carAppBinder);
            case 2:
                return CarAppBinder.g(carAppBinder);
            default:
                return CarAppBinder.h(carAppBinder);
        }
    }
}
