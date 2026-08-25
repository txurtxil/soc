package defpackage;

import androidx.lifecycle.b;
/* renamed from: sl  reason: default package */
/* loaded from: classes.dex */
public abstract class sl {
    public final c9 a;
    public boolean b;
    public int c = -1;
    public final /* synthetic */ b d;

    public sl(b bVar, c9 c9Var) {
        this.d = bVar;
        this.a = c9Var;
    }

    public final void h(boolean z) {
        int i;
        if (z != this.b) {
            this.b = z;
            if (z) {
                i = 1;
            } else {
                i = -1;
            }
            b bVar = this.d;
            int i2 = bVar.c;
            bVar.c = i + i2;
            if (!bVar.d) {
                bVar.d = true;
                while (true) {
                    try {
                        int i3 = bVar.c;
                        if (i2 == i3) {
                            break;
                        }
                        i2 = i3;
                    } finally {
                        bVar.d = false;
                    }
                }
            }
            if (this.b) {
                bVar.c(this);
            }
        }
    }

    public abstract boolean j();

    public void i() {
    }
}
