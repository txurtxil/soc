package defpackage;

import android.util.Log;
import java.io.Writer;
/* renamed from: yl  reason: default package */
/* loaded from: classes.dex */
public final class yl extends Writer {
    public final /* synthetic */ int a;
    public final String b;
    public final StringBuilder c;

    public yl(int i) {
        this.a = i;
        switch (i) {
            case 1:
                this.c = new StringBuilder(128);
                this.b = "FragmentManager";
                return;
            default:
                this.c = new StringBuilder(128);
                this.b = "FragmentManager";
                return;
        }
    }

    public void a() {
        StringBuilder sb = this.c;
        if (sb.length() > 0) {
            Log.d(this.b, sb.toString());
            sb.delete(0, sb.length());
        }
    }

    public void b() {
        StringBuilder sb = this.c;
        if (sb.length() > 0) {
            Log.d(this.b, sb.toString());
            sb.delete(0, sb.length());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.a) {
            case 0:
                b();
                return;
            default:
                a();
                return;
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        switch (this.a) {
            case 0:
                b();
                return;
            default:
                a();
                return;
        }
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        int i3 = this.a;
        StringBuilder sb = this.c;
        int i4 = 0;
        switch (i3) {
            case 0:
                while (i4 < i2) {
                    char c = cArr[i + i4];
                    if (c == '\n') {
                        b();
                    } else {
                        sb.append(c);
                    }
                    i4++;
                }
                return;
            default:
                while (i4 < i2) {
                    char c2 = cArr[i + i4];
                    if (c2 == '\n') {
                        a();
                    } else {
                        sb.append(c2);
                    }
                    i4++;
                }
                return;
        }
    }
}
