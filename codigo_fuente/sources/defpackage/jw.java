package defpackage;

import android.view.View;
import android.view.ViewGroup;
/* renamed from: jw  reason: default package */
/* loaded from: classes.dex */
public final class jw {
    public final /* synthetic */ int a;
    public final /* synthetic */ lw b;

    public /* synthetic */ jw(lw lwVar, int i) {
        this.a = i;
        this.b = lwVar;
    }

    public final int a(View view) {
        int right;
        int i;
        switch (this.a) {
            case 0:
                right = view.getRight() + ((mw) view.getLayoutParams()).b.right;
                i = ((ViewGroup.MarginLayoutParams) ((mw) view.getLayoutParams())).rightMargin;
                break;
            default:
                right = view.getBottom() + ((mw) view.getLayoutParams()).b.bottom;
                i = ((ViewGroup.MarginLayoutParams) ((mw) view.getLayoutParams())).bottomMargin;
                break;
        }
        return right + i;
    }

    public final int b(View view) {
        int left;
        int i;
        switch (this.a) {
            case 0:
                left = view.getLeft() - ((mw) view.getLayoutParams()).b.left;
                i = ((ViewGroup.MarginLayoutParams) ((mw) view.getLayoutParams())).leftMargin;
                break;
            default:
                left = view.getTop() - ((mw) view.getLayoutParams()).b.top;
                i = ((ViewGroup.MarginLayoutParams) ((mw) view.getLayoutParams())).topMargin;
                break;
        }
        return left - i;
    }

    public final int c() {
        int i;
        int B;
        int i2 = this.a;
        lw lwVar = this.b;
        switch (i2) {
            case 0:
                i = lwVar.m;
                B = lwVar.B();
                break;
            default:
                i = lwVar.n;
                B = lwVar.z();
                break;
        }
        return i - B;
    }

    public final int d() {
        int i = this.a;
        lw lwVar = this.b;
        switch (i) {
            case 0:
                return lwVar.A();
            default:
                return lwVar.C();
        }
    }
}
