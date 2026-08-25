package defpackage;

import android.text.TextUtils;
import android.view.View;
/* renamed from: b70  reason: default package */
/* loaded from: classes.dex */
public final class b70 extends d40 {
    public final /* synthetic */ int e;

    public b70(int i, Class cls, int i2, int i3, int i4) {
        this.e = i4;
        this.a = i;
        this.d = cls;
        this.c = i2;
        this.b = i3;
    }

    @Override // defpackage.d40
    public final Object b(View view) {
        switch (this.e) {
            case 0:
                return Boolean.valueOf(n70.d(view));
            case 1:
                return n70.b(view);
            case 2:
                return p70.a(view);
            default:
                return Boolean.valueOf(n70.c(view));
        }
    }

    @Override // defpackage.d40
    public final void c(View view, Object obj) {
        switch (this.e) {
            case 0:
                n70.i(view, ((Boolean) obj).booleanValue());
                return;
            case 1:
                n70.h(view, (CharSequence) obj);
                return;
            case 2:
                p70.b(view, (CharSequence) obj);
                return;
            default:
                n70.g(view, ((Boolean) obj).booleanValue());
                return;
        }
    }

    @Override // defpackage.d40
    public final boolean e(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        boolean equals;
        boolean z3;
        boolean z4;
        boolean z5 = false;
        switch (this.e) {
            case 0:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                if (bool != null && bool.booleanValue()) {
                    z = true;
                } else {
                    z = false;
                }
                if (bool2 != null && bool2.booleanValue()) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z == z2) {
                    z5 = true;
                }
                return !z5;
            case 1:
                equals = TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
                break;
            case 2:
                equals = TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
                break;
            default:
                Boolean bool3 = (Boolean) obj;
                Boolean bool4 = (Boolean) obj2;
                if (bool3 != null && bool3.booleanValue()) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                if (bool4 != null && bool4.booleanValue()) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (z3 == z4) {
                    z5 = true;
                }
                return !z5;
        }
        return !equals;
    }
}
