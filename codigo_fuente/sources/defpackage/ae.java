package defpackage;

import java.nio.ByteBuffer;
/* renamed from: ae  reason: default package */
/* loaded from: classes.dex */
public final class ae {
    public static final ThreadLocal d = new ThreadLocal();
    public final int a;
    public final vp b;
    public volatile int c = 0;

    public ae(vp vpVar, int i) {
        this.b = vpVar;
        this.a = i;
    }

    public final int a(int i) {
        sp b = b();
        int a = b.a(16);
        if (a != 0) {
            ByteBuffer byteBuffer = (ByteBuffer) b.d;
            int i2 = a + b.a;
            return byteBuffer.getInt((i * 4) + byteBuffer.getInt(i2) + i2 + 4);
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v3, types: [d40, java.lang.Object] */
    public final sp b() {
        ThreadLocal threadLocal = d;
        sp spVar = (sp) threadLocal.get();
        sp spVar2 = spVar;
        if (spVar == null) {
            ?? d40Var = new d40();
            threadLocal.set(d40Var);
            spVar2 = d40Var;
        }
        tp tpVar = (tp) this.b.a;
        int a = tpVar.a(6);
        if (a != 0) {
            int i = a + tpVar.a;
            int i2 = (this.a * 4) + ((ByteBuffer) tpVar.d).getInt(i) + i + 4;
            int i3 = ((ByteBuffer) tpVar.d).getInt(i2) + i2;
            ByteBuffer byteBuffer = (ByteBuffer) tpVar.d;
            spVar2.d = byteBuffer;
            if (byteBuffer != null) {
                spVar2.a = i3;
                int i4 = i3 - byteBuffer.getInt(i3);
                spVar2.b = i4;
                spVar2.c = ((ByteBuffer) spVar2.d).getShort(i4);
                return spVar2;
            }
            spVar2.a = 0;
            spVar2.b = 0;
            spVar2.c = 0;
        }
        return spVar2;
    }

    public final String toString() {
        int i;
        int i2;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append(", id:");
        sp b = b();
        int a = b.a(4);
        if (a != 0) {
            i = ((ByteBuffer) b.d).getInt(a + b.a);
        } else {
            i = 0;
        }
        sb.append(Integer.toHexString(i));
        sb.append(", codepoints:");
        sp b2 = b();
        int a2 = b2.a(16);
        if (a2 != 0) {
            int i3 = a2 + b2.a;
            i2 = ((ByteBuffer) b2.d).getInt(((ByteBuffer) b2.d).getInt(i3) + i3);
        } else {
            i2 = 0;
        }
        for (int i4 = 0; i4 < i2; i4++) {
            sb.append(Integer.toHexString(a(i4)));
            sb.append(" ");
        }
        return sb.toString();
    }
}
