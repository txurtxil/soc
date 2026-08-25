package defpackage;

import android.graphics.Rect;
import android.view.View;
/* renamed from: pd  reason: default package */
/* loaded from: classes.dex */
public abstract class pd {
    public int a;
    public final Object b;
    public final Object c;

    public pd(lw lwVar) {
        this.a = Integer.MIN_VALUE;
        this.c = new Rect();
        this.b = lwVar;
    }

    public static pd a(lw lwVar, int i) {
        if (i != 0) {
            if (i == 1) {
                return new vs(lwVar, 1);
            }
            c2.n("invalid orientation");
            return null;
        }
        return new vs(lwVar, 0);
    }

    public abstract int b(View view);

    public abstract int c(View view);

    public abstract int d(View view);

    public abstract int e(View view);

    public abstract int f();

    public abstract int g();

    public abstract int h();

    public abstract int i();

    public abstract int j();

    public abstract int k();

    public abstract int l();

    public abstract int m(View view);

    public abstract int n(View view);

    public abstract void o(int i);

    public pd(sd sdVar) {
        this.a = 0;
        this.c = new sb();
        this.b = sdVar;
    }
}
