package defpackage;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: pz  reason: default package */
/* loaded from: classes.dex */
public class pz implements Iterable {
    public mz a;
    public mz b;
    public final WeakHashMap c = new WeakHashMap();
    public int d = 0;

    public mz a(Object obj) {
        mz mzVar = this.a;
        while (mzVar != null && !mzVar.a.equals(obj)) {
            mzVar = mzVar.c;
        }
        return mzVar;
    }

    public Object b(Object obj) {
        mz a = a(obj);
        if (a == null) {
            return null;
        }
        this.d--;
        WeakHashMap weakHashMap = this.c;
        if (!weakHashMap.isEmpty()) {
            for (oz ozVar : weakHashMap.keySet()) {
                ozVar.a(a);
            }
        }
        mz mzVar = a.d;
        mz mzVar2 = a.c;
        if (mzVar != null) {
            mzVar.c = mzVar2;
        } else {
            this.a = mzVar2;
        }
        mz mzVar3 = a.c;
        if (mzVar3 != null) {
            mzVar3.d = mzVar;
        } else {
            this.b = mzVar;
        }
        a.c = null;
        a.d = null;
        return a.b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
        if (r1.hasNext() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
        if (((defpackage.lz) r6).hasNext() != false) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0052, code lost:
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0053, code lost:
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = 1
            if (r6 != r5) goto L4
            return r0
        L4:
            boolean r1 = r6 instanceof defpackage.pz
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            pz r6 = (defpackage.pz) r6
            int r1 = r5.d
            int r3 = r6.d
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r5 = r5.iterator()
            java.util.Iterator r6 = r6.iterator()
        L1b:
            r1 = r5
            lz r1 = (defpackage.lz) r1
            boolean r3 = r1.hasNext()
            if (r3 == 0) goto L44
            r3 = r6
            lz r3 = (defpackage.lz) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            java.lang.Object r1 = r1.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r3 = r3.next()
            if (r1 != 0) goto L3b
            if (r3 != 0) goto L43
        L3b:
            if (r1 == 0) goto L1b
            boolean r1 = r1.equals(r3)
            if (r1 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r5 = r1.hasNext()
            if (r5 != 0) goto L53
            lz r6 = (defpackage.lz) r6
            boolean r5 = r6.hasNext()
            if (r5 != 0) goto L53
            return r0
        L53:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.pz.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (true) {
            lz lzVar = (lz) it;
            if (lzVar.hasNext()) {
                i += ((Map.Entry) lzVar.next()).hashCode();
            } else {
                return i;
            }
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        lz lzVar = new lz(this.a, this.b, 0);
        this.c.put(lzVar, Boolean.FALSE);
        return lzVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            lz lzVar = (lz) it;
            if (lzVar.hasNext()) {
                sb.append(((Map.Entry) lzVar.next()).toString());
                if (lzVar.hasNext()) {
                    sb.append(", ");
                }
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }
}
