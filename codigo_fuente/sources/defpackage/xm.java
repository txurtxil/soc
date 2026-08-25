package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.WeakHashMap;
/* renamed from: xm  reason: default package */
/* loaded from: classes.dex */
public final class xm {
    public final wm a;
    public z00 b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public PorterDuff.Mode i;
    public ColorStateList j;
    public ColorStateList k;
    public ColorStateList l;
    public en m;
    public boolean q;
    public RippleDrawable s;
    public int t;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;
    public boolean r = true;

    public xm(wm wmVar, z00 z00Var) {
        this.a = wmVar;
        this.b = z00Var;
    }

    public final k10 a() {
        RippleDrawable rippleDrawable = this.s;
        if (rippleDrawable != null && rippleDrawable.getNumberOfLayers() > 1) {
            int numberOfLayers = this.s.getNumberOfLayers();
            RippleDrawable rippleDrawable2 = this.s;
            if (numberOfLayers > 2) {
                return (k10) rippleDrawable2.getDrawable(2);
            }
            return (k10) rippleDrawable2.getDrawable(1);
        }
        return null;
    }

    public final en b(boolean z) {
        RippleDrawable rippleDrawable = this.s;
        if (rippleDrawable != null && rippleDrawable.getNumberOfLayers() > 0) {
            return (en) ((LayerDrawable) ((InsetDrawable) this.s.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
        }
        return null;
    }

    public final void c(z00 z00Var) {
        this.b = z00Var;
        if (b(false) != null) {
            b(false).setShapeAppearanceModel(z00Var);
        }
        if (b(true) != null) {
            b(true).setShapeAppearanceModel(z00Var);
        }
        if (a() != null) {
            a().setShapeAppearanceModel(z00Var);
        }
    }

    public final void d(int i, int i2) {
        WeakHashMap weakHashMap = u70.a;
        wm wmVar = this.a;
        int f = f70.f(wmVar);
        int paddingTop = wmVar.getPaddingTop();
        int e = f70.e(wmVar);
        int paddingBottom = wmVar.getPaddingBottom();
        int i3 = this.e;
        int i4 = this.f;
        this.f = i2;
        this.e = i;
        if (!this.o) {
            e();
        }
        f70.k(wmVar, f, (paddingTop + i) - i3, e, (paddingBottom + i2) - i4);
    }

    public final void e() {
        int i;
        en enVar = new en(this.b);
        wm wmVar = this.a;
        enVar.f(wmVar.getContext());
        tc.h(enVar, this.j);
        PorterDuff.Mode mode = this.i;
        if (mode != null) {
            tc.i(enVar, mode);
        }
        ColorStateList colorStateList = this.k;
        enVar.a.j = this.h;
        enVar.invalidateSelf();
        dn dnVar = enVar.a;
        if (dnVar.d != colorStateList) {
            dnVar.d = colorStateList;
            enVar.onStateChange(enVar.getState());
        }
        en enVar2 = new en(this.b);
        enVar2.setTint(0);
        float f = this.h;
        if (this.n) {
            i = s8.p(wmVar, R.attr.colorSurface);
        } else {
            i = 0;
        }
        enVar2.a.j = f;
        enVar2.invalidateSelf();
        ColorStateList valueOf = ColorStateList.valueOf(i);
        dn dnVar2 = enVar2.a;
        if (dnVar2.d != valueOf) {
            dnVar2.d = valueOf;
            enVar2.onStateChange(enVar2.getState());
        }
        en enVar3 = new en(this.b);
        this.m = enVar3;
        tc.g(enVar3, -1);
        RippleDrawable rippleDrawable = new RippleDrawable(hy.a(this.l), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{enVar2, enVar}), this.c, this.e, this.d, this.f), this.m);
        this.s = rippleDrawable;
        wmVar.setInternalBackground(rippleDrawable);
        en b = b(false);
        if (b != null) {
            b.g(this.t);
            b.setState(wmVar.getDrawableState());
        }
    }

    public final void f() {
        int i = 0;
        en b = b(false);
        en b2 = b(true);
        if (b != null) {
            ColorStateList colorStateList = this.k;
            b.a.j = this.h;
            b.invalidateSelf();
            dn dnVar = b.a;
            if (dnVar.d != colorStateList) {
                dnVar.d = colorStateList;
                b.onStateChange(b.getState());
            }
            if (b2 != null) {
                float f = this.h;
                if (this.n) {
                    i = s8.p(this.a, R.attr.colorSurface);
                }
                b2.a.j = f;
                b2.invalidateSelf();
                ColorStateList valueOf = ColorStateList.valueOf(i);
                dn dnVar2 = b2.a;
                if (dnVar2.d != valueOf) {
                    dnVar2.d = valueOf;
                    b2.onStateChange(b2.getState());
                }
            }
        }
    }
}
