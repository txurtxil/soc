package defpackage;

import android.util.SparseArray;
import java.nio.ByteBuffer;
/* renamed from: be  reason: default package */
/* loaded from: classes.dex */
public final class be {
    public int a = 1;
    public final up b;
    public up c;
    public up d;
    public int e;
    public int f;

    public be(up upVar) {
        this.b = upVar;
        this.c = upVar;
    }

    public final int a(int i) {
        up upVar;
        SparseArray sparseArray = this.c.a;
        if (sparseArray == null) {
            upVar = null;
        } else {
            upVar = (up) sparseArray.get(i);
        }
        int i2 = 1;
        int i3 = 2;
        if (this.a != 2) {
            if (upVar == null) {
                b();
            } else {
                this.a = 2;
                this.c = upVar;
                this.f = 1;
                i2 = i3;
            }
        } else {
            if (upVar != null) {
                this.c = upVar;
                this.f++;
            } else if (i == 65038) {
                b();
            } else if (i != 65039) {
                up upVar2 = this.c;
                if (upVar2.b != null) {
                    i3 = 3;
                    if (this.f == 1) {
                        if (c()) {
                            this.d = this.c;
                            b();
                        } else {
                            b();
                        }
                    } else {
                        this.d = upVar2;
                        b();
                    }
                } else {
                    b();
                }
            }
            i2 = i3;
        }
        this.e = i;
        return i2;
    }

    public final void b() {
        this.a = 1;
        this.c = this.b;
        this.f = 0;
    }

    public final boolean c() {
        sp b = this.c.b.b();
        int a = b.a(6);
        if ((a != 0 && ((ByteBuffer) b.d).get(a + b.a) != 0) || this.e == 65039) {
            return true;
        }
        return false;
    }
}
