package defpackage;

import android.content.res.TypedArray;
import android.text.InputFilter;
import android.util.AttributeSet;
import android.widget.TextView;
/* renamed from: c4  reason: default package */
/* loaded from: classes.dex */
public final class c4 {
    public final TextView a;
    public final c9 b;

    public c4(TextView textView) {
        this.a = textView;
        this.b = new c9(textView);
    }

    public final InputFilter[] a(InputFilter[] inputFilterArr) {
        return ((gn) this.b.b).q(inputFilterArr);
    }

    public final void b(AttributeSet attributeSet, int i) {
        TypedArray obtainStyledAttributes = this.a.getContext().obtainStyledAttributes(attributeSet, vv.i, i, 0);
        try {
            boolean z = true;
            if (obtainStyledAttributes.hasValue(14)) {
                z = obtainStyledAttributes.getBoolean(14, true);
            }
            obtainStyledAttributes.recycle();
            d(z);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    public final void c(boolean z) {
        ((gn) this.b.b).C(z);
    }

    public final void d(boolean z) {
        ((gn) this.b.b).D(z);
    }
}
