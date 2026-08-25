package defpackage;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: n10  reason: default package */
/* loaded from: classes.dex */
public final class n10 extends FilterInputStream {
    public n10(InputStream inputStream) {
        super(inputStream);
    }

    public final void a() {
        ((FilterInputStream) this).in.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }
}
