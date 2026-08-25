package defpackage;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.ListAdapter;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: w4  reason: default package */
/* loaded from: classes.dex */
public final class w4 extends jl implements y4 {
    public CharSequence D;
    public t4 E;
    public final Rect F;
    public int G;
    public final /* synthetic */ z4 H;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public w4(z4 z4Var, Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.spinnerStyle, 0);
        this.H = z4Var;
        this.F = new Rect();
        this.o = z4Var;
        this.z = true;
        this.A.setFocusable(true);
        this.q = new u4(0, this);
    }

    @Override // defpackage.y4
    public final void g(CharSequence charSequence) {
        this.D = charSequence;
    }

    @Override // defpackage.y4
    public final void l(int i) {
        this.G = i;
    }

    @Override // defpackage.y4
    public final void n(int i, int i2) {
        ViewTreeObserver viewTreeObserver;
        h4 h4Var = this.A;
        boolean isShowing = h4Var.isShowing();
        s();
        h4Var.setInputMethodMode(2);
        d();
        dd ddVar = this.c;
        ddVar.setChoiceMode(1);
        q4.d(ddVar, i);
        q4.c(ddVar, i2);
        z4 z4Var = this.H;
        int selectedItemPosition = z4Var.getSelectedItemPosition();
        dd ddVar2 = this.c;
        if (h4Var.isShowing() && ddVar2 != null) {
            ddVar2.setListSelectionHidden(false);
            ddVar2.setSelection(selectedItemPosition);
            if (ddVar2.getChoiceMode() != 0) {
                ddVar2.setItemChecked(selectedItemPosition, true);
            }
        }
        if (!isShowing && (viewTreeObserver = z4Var.getViewTreeObserver()) != null) {
            o4 o4Var = new o4(1, this);
            viewTreeObserver.addOnGlobalLayoutListener(o4Var);
            h4Var.setOnDismissListener(new v4(this, o4Var));
        }
    }

    @Override // defpackage.y4
    public final CharSequence p() {
        return this.D;
    }

    @Override // defpackage.jl, defpackage.y4
    public final void q(ListAdapter listAdapter) {
        super.q(listAdapter);
        this.E = (t4) listAdapter;
    }

    public final void s() {
        int i;
        int i2;
        h4 h4Var = this.A;
        Drawable background = h4Var.getBackground();
        z4 z4Var = this.H;
        Rect rect = z4Var.h;
        if (background != null) {
            background.getPadding(rect);
            if (l80.a(z4Var)) {
                i = rect.right;
            } else {
                i = -rect.left;
            }
        } else {
            i = 0;
            rect.right = 0;
            rect.left = 0;
        }
        int paddingLeft = z4Var.getPaddingLeft();
        int paddingRight = z4Var.getPaddingRight();
        int width = z4Var.getWidth();
        int i3 = z4Var.g;
        if (i3 == -2) {
            int a = z4Var.a(this.E, h4Var.getBackground());
            int i4 = (z4Var.getContext().getResources().getDisplayMetrics().widthPixels - rect.left) - rect.right;
            if (a > i4) {
                a = i4;
            }
            r(Math.max(a, (width - paddingLeft) - paddingRight));
        } else if (i3 == -1) {
            r((width - paddingLeft) - paddingRight);
        } else {
            r(i3);
        }
        if (l80.a(z4Var)) {
            i2 = (((width - paddingRight) - this.e) - this.G) + i;
        } else {
            i2 = paddingLeft + this.G + i;
        }
        this.f = i2;
    }
}
