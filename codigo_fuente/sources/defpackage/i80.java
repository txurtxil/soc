package defpackage;

import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
/* renamed from: i80  reason: default package */
/* loaded from: classes.dex */
public final class i80 {
    public Interpolator c;
    public j80 d;
    public boolean e;
    public long b = -1;
    public final g50 f = new g50(this);
    public final ArrayList a = new ArrayList();

    public final void a() {
        if (!this.e) {
            return;
        }
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((h80) obj).b();
        }
        this.e = false;
    }

    public final void b() {
        View view;
        if (this.e) {
            return;
        }
        ArrayList arrayList = this.a;
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            h80 h80Var = (h80) obj;
            long j = this.b;
            if (j >= 0) {
                h80Var.c(j);
            }
            Interpolator interpolator = this.c;
            if (interpolator != null && (view = (View) h80Var.a.get()) != null) {
                view.animate().setInterpolator(interpolator);
            }
            if (this.d != null) {
                h80Var.d(this.f);
            }
            View view2 = (View) h80Var.a.get();
            if (view2 != null) {
                view2.animate().start();
            }
        }
        this.e = true;
    }
}
