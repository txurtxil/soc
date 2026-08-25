package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.Arrays;
/* renamed from: oh  reason: default package */
/* loaded from: classes.dex */
public final class oh {
    public int a;
    public int b;
    public int[] c;
    public int d;

    public final void a(int i, int i2) {
        if (i >= 0) {
            if (i2 >= 0) {
                int i3 = this.d;
                int i4 = i3 * 2;
                int[] iArr = this.c;
                if (iArr == null) {
                    int[] iArr2 = new int[4];
                    this.c = iArr2;
                    Arrays.fill(iArr2, -1);
                } else if (i4 >= iArr.length) {
                    int[] iArr3 = new int[i3 * 4];
                    this.c = iArr3;
                    System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                }
                int[] iArr4 = this.c;
                iArr4[i4] = i;
                iArr4[i4 + 1] = i2;
                this.d++;
                return;
            }
            c2.n("Pixel distance must be non-negative");
            return;
        }
        c2.n("Layout positions must be non-negative");
    }

    public final void b(RecyclerView recyclerView, boolean z) {
        this.d = 0;
        int[] iArr = this.c;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        lw lwVar = recyclerView.m;
        if (recyclerView.l != null && lwVar != null && lwVar.h) {
            if (z) {
                if (!recyclerView.d.j()) {
                    lwVar.h(((ju) recyclerView.l).e.size(), this);
                }
            } else if (!recyclerView.I()) {
                lwVar.g(this.a, this.b, recyclerView.e0, this);
            }
            int i = this.d;
            if (i > lwVar.i) {
                lwVar.i = i;
                lwVar.j = z;
                recyclerView.b.k();
            }
        }
    }
}
