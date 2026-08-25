package defpackage;

import android.graphics.Rect;
import android.view.View;
import android.view.ViewGroup;
/* renamed from: vs  reason: default package */
/* loaded from: classes.dex */
public final class vs extends pd {
    public final /* synthetic */ int d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ vs(lw lwVar, int i) {
        super(lwVar);
        this.d = i;
    }

    @Override // defpackage.pd
    public final int b(View view) {
        int right;
        int i;
        int i2 = this.d;
        Object obj = this.b;
        switch (i2) {
            case 0:
                ((lw) obj).getClass();
                right = view.getRight() + ((mw) view.getLayoutParams()).b.right;
                i = ((ViewGroup.MarginLayoutParams) ((mw) view.getLayoutParams())).rightMargin;
                break;
            default:
                ((lw) obj).getClass();
                right = view.getBottom() + ((mw) view.getLayoutParams()).b.bottom;
                i = ((ViewGroup.MarginLayoutParams) ((mw) view.getLayoutParams())).bottomMargin;
                break;
        }
        return right + i;
    }

    @Override // defpackage.pd
    public final int c(View view) {
        int measuredWidth;
        int i;
        int i2 = this.d;
        Object obj = this.b;
        switch (i2) {
            case 0:
                mw mwVar = (mw) view.getLayoutParams();
                ((lw) obj).getClass();
                Rect rect = ((mw) view.getLayoutParams()).b;
                measuredWidth = view.getMeasuredWidth() + rect.left + rect.right + ((ViewGroup.MarginLayoutParams) mwVar).leftMargin;
                i = ((ViewGroup.MarginLayoutParams) mwVar).rightMargin;
                break;
            default:
                mw mwVar2 = (mw) view.getLayoutParams();
                ((lw) obj).getClass();
                Rect rect2 = ((mw) view.getLayoutParams()).b;
                measuredWidth = view.getMeasuredHeight() + rect2.top + rect2.bottom + ((ViewGroup.MarginLayoutParams) mwVar2).topMargin;
                i = ((ViewGroup.MarginLayoutParams) mwVar2).bottomMargin;
                break;
        }
        return measuredWidth + i;
    }

    @Override // defpackage.pd
    public final int d(View view) {
        int measuredHeight;
        int i;
        int i2 = this.d;
        Object obj = this.b;
        switch (i2) {
            case 0:
                mw mwVar = (mw) view.getLayoutParams();
                ((lw) obj).getClass();
                Rect rect = ((mw) view.getLayoutParams()).b;
                measuredHeight = view.getMeasuredHeight() + rect.top + rect.bottom + ((ViewGroup.MarginLayoutParams) mwVar).topMargin;
                i = ((ViewGroup.MarginLayoutParams) mwVar).bottomMargin;
                break;
            default:
                mw mwVar2 = (mw) view.getLayoutParams();
                ((lw) obj).getClass();
                Rect rect2 = ((mw) view.getLayoutParams()).b;
                measuredHeight = view.getMeasuredWidth() + rect2.left + rect2.right + ((ViewGroup.MarginLayoutParams) mwVar2).leftMargin;
                i = ((ViewGroup.MarginLayoutParams) mwVar2).rightMargin;
                break;
        }
        return measuredHeight + i;
    }

    @Override // defpackage.pd
    public final int e(View view) {
        int left;
        int i;
        int i2 = this.d;
        Object obj = this.b;
        switch (i2) {
            case 0:
                ((lw) obj).getClass();
                left = view.getLeft() - ((mw) view.getLayoutParams()).b.left;
                i = ((ViewGroup.MarginLayoutParams) ((mw) view.getLayoutParams())).leftMargin;
                break;
            default:
                ((lw) obj).getClass();
                left = view.getTop() - ((mw) view.getLayoutParams()).b.top;
                i = ((ViewGroup.MarginLayoutParams) ((mw) view.getLayoutParams())).topMargin;
                break;
        }
        return left - i;
    }

    @Override // defpackage.pd
    public final int f() {
        switch (this.d) {
            case 0:
                return ((lw) this.b).m;
            default:
                return ((lw) this.b).n;
        }
    }

    @Override // defpackage.pd
    public final int g() {
        int i;
        int B;
        int i2 = this.d;
        Object obj = this.b;
        switch (i2) {
            case 0:
                lw lwVar = (lw) obj;
                i = lwVar.m;
                B = lwVar.B();
                break;
            default:
                lw lwVar2 = (lw) obj;
                i = lwVar2.n;
                B = lwVar2.z();
                break;
        }
        return i - B;
    }

    @Override // defpackage.pd
    public final int h() {
        switch (this.d) {
            case 0:
                return ((lw) this.b).B();
            default:
                return ((lw) this.b).z();
        }
    }

    @Override // defpackage.pd
    public final int i() {
        switch (this.d) {
            case 0:
                return ((lw) this.b).k;
            default:
                return ((lw) this.b).l;
        }
    }

    @Override // defpackage.pd
    public final int j() {
        switch (this.d) {
            case 0:
                return ((lw) this.b).l;
            default:
                return ((lw) this.b).k;
        }
    }

    @Override // defpackage.pd
    public final int k() {
        switch (this.d) {
            case 0:
                return ((lw) this.b).A();
            default:
                return ((lw) this.b).C();
        }
    }

    @Override // defpackage.pd
    public final int l() {
        int A;
        int B;
        int i = this.d;
        Object obj = this.b;
        switch (i) {
            case 0:
                lw lwVar = (lw) obj;
                A = lwVar.m - lwVar.A();
                B = lwVar.B();
                break;
            default:
                lw lwVar2 = (lw) obj;
                A = lwVar2.n - lwVar2.C();
                B = lwVar2.z();
                break;
        }
        return A - B;
    }

    @Override // defpackage.pd
    public final int m(View view) {
        int i = this.d;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                Rect rect = (Rect) obj;
                ((lw) obj2).G(view, rect);
                return rect.right;
            default:
                Rect rect2 = (Rect) obj;
                ((lw) obj2).G(view, rect2);
                return rect2.bottom;
        }
    }

    @Override // defpackage.pd
    public final int n(View view) {
        int i = this.d;
        Object obj = this.c;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                Rect rect = (Rect) obj;
                ((lw) obj2).G(view, rect);
                return rect.left;
            default:
                Rect rect2 = (Rect) obj;
                ((lw) obj2).G(view, rect2);
                return rect2.top;
        }
    }

    @Override // defpackage.pd
    public final void o(int i) {
        switch (this.d) {
            case 0:
                ((lw) this.b).K(i);
                return;
            default:
                ((lw) this.b).L(i);
                return;
        }
    }
}
