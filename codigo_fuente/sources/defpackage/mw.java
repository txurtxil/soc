package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;
/* renamed from: mw  reason: default package */
/* loaded from: classes.dex */
public class mw extends ViewGroup.MarginLayoutParams {
    public nu a;
    public final Rect b;
    public boolean c;
    public boolean d;

    public mw(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = new Rect();
        this.c = true;
        this.d = false;
    }

    public mw(int i, int i2) {
        super(i, i2);
        this.b = new Rect();
        this.c = true;
        this.d = false;
    }

    public mw(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.b = new Rect();
        this.c = true;
        this.d = false;
    }

    public mw(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.b = new Rect();
        this.c = true;
        this.d = false;
    }

    public mw(mw mwVar) {
        super((ViewGroup.LayoutParams) mwVar);
        this.b = new Rect();
        this.c = true;
        this.d = false;
    }
}
