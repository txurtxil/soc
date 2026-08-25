package defpackage;

import android.content.Context;
import android.util.TypedValue;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: md  reason: default package */
/* loaded from: classes.dex */
public final class md {
    public static final int f = (int) Math.round(5.1000000000000005d);
    public final boolean a;
    public final int b;
    public final int c;
    public final int d;
    public final float e;

    public md(Context context) {
        int i;
        int i2;
        int i3 = 0;
        boolean u = em.u(context, R.attr.elevationOverlayEnabled, false);
        TypedValue t = em.t(context, R.attr.elevationOverlayColor);
        if (t != null) {
            int i4 = t.resourceId;
            if (i4 != 0) {
                i = za.a(context, i4);
            } else {
                i = t.data;
            }
        } else {
            i = 0;
        }
        TypedValue t2 = em.t(context, R.attr.elevationOverlayAccentColor);
        if (t2 != null) {
            int i5 = t2.resourceId;
            if (i5 != 0) {
                i2 = za.a(context, i5);
            } else {
                i2 = t2.data;
            }
        } else {
            i2 = 0;
        }
        TypedValue t3 = em.t(context, R.attr.colorSurface);
        if (t3 != null) {
            int i6 = t3.resourceId;
            if (i6 != 0) {
                i3 = za.a(context, i6);
            } else {
                i3 = t3.data;
            }
        }
        float f2 = context.getResources().getDisplayMetrics().density;
        this.a = u;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = f2;
    }
}
