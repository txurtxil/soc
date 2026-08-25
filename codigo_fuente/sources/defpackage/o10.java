package defpackage;

import java.io.FilterOutputStream;
/* renamed from: o10  reason: default package */
/* loaded from: classes.dex */
public final class o10 extends FilterOutputStream {
    public final void a() {
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((FilterOutputStream) this).out.flush();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        ((FilterOutputStream) this).out.write(bArr, i, i2);
    }
}
