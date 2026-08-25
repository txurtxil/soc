package defpackage;

import androidx.car.app.IOnDoneCallback;
import androidx.car.app.j;
/* renamed from: bi  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class bi implements ix {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;

    public /* synthetic */ bi(j jVar, String str, ai aiVar) {
        this.a = 0;
        this.c = jVar;
        this.b = str;
        this.d = aiVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0076  */
    @Override // defpackage.ix
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object call() {
        /*
            r6 = this;
            int r0 = r6.a
            java.lang.String r1 = "CarApp.Dispatch"
            r2 = 0
            java.lang.String r3 = r6.b
            java.lang.Object r4 = r6.d
            java.lang.Object r6 = r6.c
            switch(r0) {
                case 0: goto L3f;
                case 1: goto L2b;
                default: goto Le;
            }
        Le:
            androidx.car.app.IOnDoneCallback r6 = (androidx.car.app.IOnDoneCallback) r6
            java.lang.Exception r4 = (java.lang.Exception) r4
            androidx.car.app.FailureResponse r0 = new androidx.car.app.FailureResponse     // Catch: defpackage.b8 -> L20
            r0.<init>(r4)     // Catch: defpackage.b8 -> L20
            x7 r4 = new x7     // Catch: defpackage.b8 -> L20
            r4.<init>(r0)     // Catch: defpackage.b8 -> L20
            r6.onFailure(r4)     // Catch: defpackage.b8 -> L20
            goto L2a
        L20:
            r6 = move-exception
            java.lang.String r0 = "Serialization failure in "
            java.lang.String r0 = r0.concat(r3)
            android.util.Log.e(r1, r0, r6)
        L2a:
            return r2
        L2b:
            androidx.car.app.IOnDoneCallback r6 = (androidx.car.app.IOnDoneCallback) r6
            if (r4 != 0) goto L31
            r0 = r2
            goto L36
        L31:
            x7 r0 = new x7     // Catch: defpackage.b8 -> L3a
            r0.<init>(r4)     // Catch: defpackage.b8 -> L3a
        L36:
            r6.onSuccess(r0)     // Catch: defpackage.b8 -> L3a
            goto L3e
        L3a:
            r0 = move-exception
            androidx.car.app.utils.e.f(r6, r3, r0)
        L3e:
            return r2
        L3f:
            androidx.car.app.j r6 = (androidx.car.app.j) r6
            ai r4 = (defpackage.ai) r4
            androidx.car.app.ICarHost r0 = r6.a
            if (r0 != 0) goto L4e
            java.lang.String r6 = "Host is not bound when attempting to retrieve host service"
            android.util.Log.e(r1, r6)
        L4c:
            r6 = r2
            goto L6a
        L4e:
            androidx.car.app.IAppHost r0 = r6.b     // Catch: defpackage.ci -> L64
            if (r0 != 0) goto L61
            java.lang.String r0 = "getHost(App)"
            b2 r5 = new b2     // Catch: defpackage.ci -> L64
            r5.<init>(r6)     // Catch: defpackage.ci -> L64
            java.lang.Object r0 = androidx.car.app.utils.e.e(r0, r5)     // Catch: defpackage.ci -> L64
            androidx.car.app.IAppHost r0 = (androidx.car.app.IAppHost) r0     // Catch: defpackage.ci -> L64
            r6.b = r0     // Catch: defpackage.ci -> L64
        L61:
            androidx.car.app.IAppHost r6 = r6.b     // Catch: defpackage.ci -> L64
            goto L6a
        L64:
            java.lang.String r6 = "Host threw an exception when attempting to retrieve host service"
            android.util.Log.e(r1, r6)
            goto L4c
        L6a:
            if (r6 != 0) goto L76
            java.lang.String r6 = "Could not retrieve host while dispatching call "
            java.lang.String r6 = r6.concat(r3)
            android.util.Log.e(r1, r6)
            goto L79
        L76:
            r4.e(r6)
        L79:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.bi.call():java.lang.Object");
    }

    public /* synthetic */ bi(IOnDoneCallback iOnDoneCallback, Object obj, String str, int i) {
        this.a = i;
        this.c = iOnDoneCallback;
        this.d = obj;
        this.b = str;
    }
}
