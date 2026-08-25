package defpackage;

import java.util.Comparator;
/* renamed from: o6  reason: default package */
/* loaded from: classes.dex */
public final class o6 implements Comparator {
    public final /* synthetic */ int a;

    public /* synthetic */ o6(int i) {
        this.a = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0029, code lost:
        if (r4 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0032, code lost:
        if (r4 != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0034, code lost:
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:?, code lost:
        return 1;
     */
    @Override // java.util.Comparator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int compare(java.lang.Object r5, java.lang.Object r6) {
        /*
            r4 = this;
            int r4 = r4.a
            r0 = 0
            switch(r4) {
                case 0: goto L4a;
                case 1: goto L14;
                default: goto L6;
            }
        L6:
            android.view.View r5 = (android.view.View) r5
            android.view.View r6 = (android.view.View) r6
            int r4 = r5.getTop()
            int r5 = r6.getTop()
            int r4 = r4 - r5
            return r4
        L14:
            ph r5 = (defpackage.ph) r5
            ph r6 = (defpackage.ph) r6
            androidx.recyclerview.widget.RecyclerView r4 = r5.d
            r1 = 1
            if (r4 != 0) goto L1f
            r2 = r1
            goto L20
        L1f:
            r2 = r0
        L20:
            androidx.recyclerview.widget.RecyclerView r3 = r6.d
            if (r3 != 0) goto L26
            r3 = r1
            goto L27
        L26:
            r3 = r0
        L27:
            if (r2 == r3) goto L2c
            if (r4 != 0) goto L34
            goto L36
        L2c:
            boolean r4 = r5.a
            boolean r2 = r6.a
            if (r4 == r2) goto L38
            if (r4 == 0) goto L36
        L34:
            r0 = -1
            goto L49
        L36:
            r0 = r1
            goto L49
        L38:
            int r4 = r6.b
            int r1 = r5.b
            int r4 = r4 - r1
            if (r4 == 0) goto L41
        L3f:
            r0 = r4
            goto L49
        L41:
            int r4 = r5.c
            int r5 = r6.c
            int r4 = r4 - r5
            if (r4 == 0) goto L49
            goto L3f
        L49:
            return r0
        L4a:
            n6 r5 = (defpackage.n6) r5
            java.lang.String r4 = r5.b
            java.util.Locale r5 = java.util.Locale.ROOT
            java.lang.String r4 = r4.toLowerCase(r5)
            r4.getClass()
            n6 r6 = (defpackage.n6) r6
            java.lang.String r6 = r6.b
            java.lang.String r5 = r6.toLowerCase(r5)
            r5.getClass()
            if (r4 != r5) goto L65
            goto L69
        L65:
            int r0 = r4.compareTo(r5)
        L69:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.o6.compare(java.lang.Object, java.lang.Object):int");
    }
}
