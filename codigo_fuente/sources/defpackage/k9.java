package defpackage;
/* renamed from: k9  reason: default package */
/* loaded from: classes.dex */
public final class k9 implements Runnable {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Object d;
    public final /* synthetic */ Object e;

    public /* synthetic */ k9(Object obj, Object obj2, Object obj3, Object obj4, int i) {
        this.a = i;
        this.e = obj;
        this.b = obj2;
        this.c = obj3;
        this.d = obj4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x004a, code lost:
        if (r0.remove(r8) != null) goto L13;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            r8 = this;
            int r0 = r8.a
            r1 = 1
            r2 = 0
            java.lang.Object r3 = r8.d
            r4 = 0
            java.lang.Object r5 = r8.e
            java.lang.Object r6 = r8.b
            java.lang.Object r8 = r8.c
            switch(r0) {
                case 0: goto L93;
                default: goto L10;
            }
        L10:
            java.lang.String r8 = (java.lang.String) r8
            c9 r6 = (defpackage.c9) r6
            java.lang.Object r0 = r6.b
            android.os.Messenger r0 = (android.os.Messenger) r0
            android.os.IBinder r0 = r0.getBinder()
            c9 r5 = (defpackage.c9) r5
            java.lang.Object r5 = r5.b
            vn r5 = (defpackage.vn) r5
            u6 r5 = r5.d
            java.lang.Object r0 = r5.getOrDefault(r0, r4)
            kn r0 = (defpackage.kn) r0
            java.lang.String r4 = "MBServiceCompat"
            if (r0 != 0) goto L40
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "removeSubscription for callback that isn't registered id="
            r0.<init>(r1)
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            android.util.Log.w(r4, r8)
            goto L92
        L40:
            java.util.HashMap r0 = r0.e
            android.os.IBinder r3 = (android.os.IBinder) r3
            if (r3 != 0) goto L4f
            java.lang.Object r0 = r0.remove(r8)
            if (r0 == 0) goto L4d
            goto L7a
        L4d:
            r1 = r2
            goto L7a
        L4f:
            java.lang.Object r5 = r0.get(r8)
            java.util.List r5 = (java.util.List) r5
            if (r5 == 0) goto L4d
            java.util.Iterator r6 = r5.iterator()
        L5b:
            boolean r7 = r6.hasNext()
            if (r7 == 0) goto L70
            java.lang.Object r7 = r6.next()
            bt r7 = (defpackage.bt) r7
            java.lang.Object r7 = r7.a
            if (r3 != r7) goto L5b
            r6.remove()
            r2 = r1
            goto L5b
        L70:
            int r1 = r5.size()
            if (r1 != 0) goto L4d
            r0.remove(r8)
            goto L4d
        L7a:
            if (r1 != 0) goto L92
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "removeSubscription called for "
            r0.<init>(r1)
            r0.append(r8)
            java.lang.String r8 = " which is not subscribed"
            r0.append(r8)
            java.lang.String r8 = r0.toString()
            android.util.Log.w(r4, r8)
        L92:
            return
        L93:
            c9 r5 = (defpackage.c9) r5
            java.lang.Object r0 = r5.b
            m9 r0 = (defpackage.m9) r0
            wo r8 = (defpackage.wo) r8
            l9 r6 = (defpackage.l9) r6
            if (r6 == 0) goto La8
            r0.A = r1
            so r1 = r6.b
            r1.c(r2)
            r0.A = r2
        La8:
            boolean r0 = r8.isEnabled()
            if (r0 == 0) goto Lba
            boolean r0 = r8.hasSubMenu()
            if (r0 == 0) goto Lba
            so r3 = (defpackage.so) r3
            r0 = 4
            r3.q(r8, r4, r0)
        Lba:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k9.run():void");
    }
}
