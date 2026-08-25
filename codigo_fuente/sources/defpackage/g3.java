package defpackage;

import android.content.Context;
import androidx.profileinstaller.ProfileInstallerInitializer;
/* renamed from: g3  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class g3 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Context b;

    public /* synthetic */ g3(ProfileInstallerInitializer profileInstallerInitializer, Context context) {
        this.a = 1;
        this.b = context;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bd, code lost:
        if (r4 != null) goto L32;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00cc  */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r10 = this;
            int r0 = r10.a
            r1 = 1
            android.content.Context r10 = r10.b
            switch(r0) {
                case 0: goto L62;
                case 1: goto L2e;
                case 2: goto L14;
                default: goto L8;
            }
        L8:
            cv r0 = new cv
            r1 = 0
            r0.<init>(r1)
            hd r2 = defpackage.qj.e
            defpackage.qj.w(r10, r0, r2, r1)
            return
        L14:
            java.util.concurrent.ThreadPoolExecutor r3 = new java.util.concurrent.ThreadPoolExecutor
            java.util.concurrent.LinkedBlockingQueue r9 = new java.util.concurrent.LinkedBlockingQueue
            r9.<init>()
            r4 = 0
            r5 = 1
            r6 = 0
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.MILLISECONDS
            r3.<init>(r4, r5, r6, r8, r9)
            g3 r0 = new g3
            r1 = 3
            r0.<init>(r10, r1)
            r3.execute(r0)
            return
        L2e:
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 28
            if (r0 < r2) goto L3d
            android.os.Looper r0 = android.os.Looper.getMainLooper()
            android.os.Handler r0 = defpackage.gv.a(r0)
            goto L46
        L3d:
            android.os.Handler r0 = new android.os.Handler
            android.os.Looper r2 = android.os.Looper.getMainLooper()
            r0.<init>(r2)
        L46:
            java.util.Random r2 = new java.util.Random
            r2.<init>()
            r3 = 1000(0x3e8, float:1.401E-42)
            int r1 = java.lang.Math.max(r3, r1)
            int r1 = r2.nextInt(r1)
            g3 r2 = new g3
            r3 = 2
            r2.<init>(r10, r3)
            int r1 = r1 + 5000
            long r3 = (long) r1
            r0.postDelayed(r2, r3)
            return
        L62:
            int r0 = android.os.Build.VERSION.SDK_INT
            r2 = 33
            if (r0 < r2) goto Le4
            android.content.ComponentName r0 = new android.content.ComponentName
            java.lang.String r2 = "androidx.appcompat.app.AppLocalesMetadataHolderService"
            r0.<init>(r10, r2)
            android.content.pm.PackageManager r2 = r10.getPackageManager()
            int r2 = r2.getComponentEnabledSetting(r0)
            if (r2 == r1) goto Le4
            boolean r2 = defpackage.t7.a()
            java.lang.String r3 = "locale"
            if (r2 == 0) goto Lbb
            v6 r2 = defpackage.j3.g
            java.util.Iterator r2 = r2.iterator()
        L87:
            r4 = r2
            hm r4 = (defpackage.hm) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto La9
            java.lang.Object r4 = r4.next()
            java.lang.ref.WeakReference r4 = (java.lang.ref.WeakReference) r4
            java.lang.Object r4 = r4.get()
            j3 r4 = (defpackage.j3) r4
            if (r4 == 0) goto L87
            w3 r4 = (defpackage.w3) r4
            android.content.Context r4 = r4.k
            if (r4 == 0) goto L87
            java.lang.Object r2 = r4.getSystemService(r3)
            goto Laa
        La9:
            r2 = 0
        Laa:
            if (r2 == 0) goto Lc0
            android.os.LocaleList r2 = defpackage.i3.a(r2)
            wl r4 = new wl
            xl r5 = new xl
            r5.<init>(r2)
            r4.<init>(r5)
            goto Lc2
        Lbb:
            wl r4 = defpackage.j3.c
            if (r4 == 0) goto Lc0
            goto Lc2
        Lc0:
            wl r4 = defpackage.wl.b
        Lc2:
            xl r2 = r4.a
            android.os.LocaleList r2 = r2.a
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto Ldd
            java.lang.String r2 = defpackage.gt.q(r10)
            java.lang.Object r3 = r10.getSystemService(r3)
            if (r3 == 0) goto Ldd
            android.os.LocaleList r2 = defpackage.h3.a(r2)
            defpackage.i3.b(r3, r2)
        Ldd:
            android.content.pm.PackageManager r10 = r10.getPackageManager()
            r10.setComponentEnabledSetting(r0, r1, r1)
        Le4:
            defpackage.j3.f = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g3.run():void");
    }

    public /* synthetic */ g3(Context context, int i) {
        this.a = i;
        this.b = context;
    }
}
