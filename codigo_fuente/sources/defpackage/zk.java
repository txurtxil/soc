package defpackage;

import android.view.View;
import androidx.car.app.model.Alert;
import java.util.List;
/* renamed from: zk  reason: default package */
/* loaded from: classes.dex */
public final class zk {
    public boolean a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public List k;
    public boolean l;

    public final void a(View view) {
        int c;
        int size = this.k.size();
        View view2 = null;
        int i = Alert.DURATION_SHOW_INDEFINITELY;
        for (int i2 = 0; i2 < size; i2++) {
            View view3 = ((nu) this.k.get(i2)).a;
            mw mwVar = (mw) view3.getLayoutParams();
            if (view3 != view && !mwVar.a.i() && (c = (mwVar.a.c() - this.d) * this.e) >= 0 && c < i) {
                view2 = view3;
                if (c == 0) {
                    break;
                }
                i = c;
            }
        }
        if (view2 == null) {
            this.d = -1;
        } else {
            this.d = ((mw) view2.getLayoutParams()).a.c();
        }
    }

    public final View b(rw rwVar) {
        List list = this.k;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                View view = ((nu) this.k.get(i)).a;
                mw mwVar = (mw) view.getLayoutParams();
                if (!mwVar.a.i() && this.d == mwVar.a.c()) {
                    a(view);
                    return view;
                }
            }
            return null;
        }
        View view2 = rwVar.i(this.d, Long.MAX_VALUE).a;
        this.d += this.e;
        return view2;
    }
}
