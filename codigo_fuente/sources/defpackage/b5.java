package defpackage;

import android.graphics.Typeface;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.widget.TextView;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* renamed from: b5  reason: default package */
/* loaded from: classes.dex */
public final class b5 {
    public final /* synthetic */ int a;
    public final /* synthetic */ int b;
    public final /* synthetic */ WeakReference c;
    public final /* synthetic */ h5 d;

    public b5(h5 h5Var, int i, int i2, WeakReference weakReference) {
        this.d = h5Var;
        this.a = i;
        this.b = i2;
        this.c = weakReference;
    }

    public final void a() {
        new Handler(Looper.getMainLooper()).post(new ou(this));
    }

    public final void b(Typeface typeface) {
        int i;
        boolean z;
        if (Build.VERSION.SDK_INT >= 28 && (i = this.a) != -1) {
            if ((this.b & 2) != 0) {
                z = true;
            } else {
                z = false;
            }
            typeface = g5.a(typeface, i, z);
        }
        h5 h5Var = this.d;
        if (h5Var.m) {
            h5Var.l = typeface;
            TextView textView = (TextView) this.c.get();
            if (textView != null) {
                WeakHashMap weakHashMap = u70.a;
                boolean b = g70.b(textView);
                int i2 = h5Var.j;
                if (b) {
                    textView.post(new c5(textView, typeface, i2));
                } else {
                    textView.setTypeface(typeface, i2);
                }
            }
        }
    }
}
