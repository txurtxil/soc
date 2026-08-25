package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionMode;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.CheckedTextView;
/* renamed from: e3  reason: default package */
/* loaded from: classes.dex */
public final class e3 extends CheckedTextView {
    public final f3 a;
    public final z1 b;
    public final h5 c;
    public c4 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0086 A[Catch: all -> 0x0065, TryCatch #1 {all -> 0x0065, blocks: (B:3:0x004c, B:5:0x0053, B:7:0x0059, B:16:0x007f, B:18:0x0086, B:19:0x008d, B:21:0x0094, B:11:0x0068, B:13:0x006e, B:15:0x0074), top: B:29:0x004c }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0094 A[Catch: all -> 0x0065, TRY_LEAVE, TryCatch #1 {all -> 0x0065, blocks: (B:3:0x004c, B:5:0x0053, B:7:0x0059, B:16:0x007f, B:18:0x0086, B:19:0x008d, B:21:0x0094, B:11:0x0068, B:13:0x006e, B:15:0x0074), top: B:29:0x004c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public e3(android.content.Context r8, android.util.AttributeSet r9) {
        /*
            r7 = this;
            defpackage.o40.a(r8)
            r5 = 2130968760(0x7f0400b8, float:1.7546183E38)
            r7.<init>(r8, r9, r5)
            android.content.Context r8 = r7.getContext()
            defpackage.m40.a(r7, r8)
            h5 r8 = new h5
            r8.<init>(r7)
            r7.c = r8
            r8.f(r9, r5)
            r8.b()
            z1 r8 = new z1
            r8.<init>(r7)
            r7.b = r8
            r8.k(r9, r5)
            f3 r8 = new f3
            r8.<init>(r7)
            r7.a = r8
            android.content.Context r8 = r7.getContext()
            int[] r2 = defpackage.vv.l
            v5 r8 = defpackage.v5.C(r8, r9, r2, r5)
            java.lang.Object r0 = r8.b
            r6 = r0
            android.content.res.TypedArray r6 = (android.content.res.TypedArray) r6
            android.content.Context r1 = r7.getContext()
            java.lang.Object r0 = r8.b
            r4 = r0
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            r0 = r7
            r3 = r9
            defpackage.u70.g(r0, r1, r2, r3, r4, r5)
            r7 = 1
            boolean r9 = r6.hasValue(r7)     // Catch: java.lang.Throwable -> L65
            r1 = 0
            if (r9 == 0) goto L68
            int r7 = r6.getResourceId(r7, r1)     // Catch: java.lang.Throwable -> L65
            if (r7 == 0) goto L68
            android.content.Context r9 = r0.getContext()     // Catch: java.lang.Throwable -> L65 android.content.res.Resources.NotFoundException -> L68
            android.graphics.drawable.Drawable r7 = defpackage.gn.p(r9, r7)     // Catch: java.lang.Throwable -> L65 android.content.res.Resources.NotFoundException -> L68
            r0.setCheckMarkDrawable(r7)     // Catch: java.lang.Throwable -> L65 android.content.res.Resources.NotFoundException -> L68
            goto L7f
        L65:
            r0 = move-exception
            r7 = r0
            goto Lac
        L68:
            boolean r7 = r6.hasValue(r1)     // Catch: java.lang.Throwable -> L65
            if (r7 == 0) goto L7f
            int r7 = r6.getResourceId(r1, r1)     // Catch: java.lang.Throwable -> L65
            if (r7 == 0) goto L7f
            android.content.Context r9 = r0.getContext()     // Catch: java.lang.Throwable -> L65
            android.graphics.drawable.Drawable r7 = defpackage.gn.p(r9, r7)     // Catch: java.lang.Throwable -> L65
            r0.setCheckMarkDrawable(r7)     // Catch: java.lang.Throwable -> L65
        L7f:
            r7 = 2
            boolean r9 = r6.hasValue(r7)     // Catch: java.lang.Throwable -> L65
            if (r9 == 0) goto L8d
            android.content.res.ColorStateList r7 = r8.q(r7)     // Catch: java.lang.Throwable -> L65
            r0.setCheckMarkTintList(r7)     // Catch: java.lang.Throwable -> L65
        L8d:
            r7 = 3
            boolean r9 = r6.hasValue(r7)     // Catch: java.lang.Throwable -> L65
            if (r9 == 0) goto La1
            r9 = -1
            int r7 = r6.getInt(r7, r9)     // Catch: java.lang.Throwable -> L65
            r9 = 0
            android.graphics.PorterDuff$Mode r7 = defpackage.xc.c(r7, r9)     // Catch: java.lang.Throwable -> L65
            r0.setCheckMarkTintMode(r7)     // Catch: java.lang.Throwable -> L65
        La1:
            r8.E()
            c4 r7 = r0.getEmojiTextViewHelper()
            r7.b(r3, r5)
            return
        Lac:
            r8.E()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e3.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    private c4 getEmojiTextViewHelper() {
        if (this.d == null) {
            this.d = new c4(this);
        }
        return this.d;
    }

    @Override // android.widget.CheckedTextView, android.widget.TextView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        h5 h5Var = this.c;
        if (h5Var != null) {
            h5Var.b();
        }
        z1 z1Var = this.b;
        if (z1Var != null) {
            z1Var.a();
        }
        f3 f3Var = this.a;
        if (f3Var != null) {
            f3Var.b();
        }
    }

    @Override // android.widget.TextView
    public ActionMode.Callback getCustomSelectionActionModeCallback() {
        return s8.D(super.getCustomSelectionActionModeCallback());
    }

    public ColorStateList getSupportBackgroundTintList() {
        z1 z1Var = this.b;
        if (z1Var != null) {
            return z1Var.h();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        z1 z1Var = this.b;
        if (z1Var != null) {
            return z1Var.i();
        }
        return null;
    }

    public ColorStateList getSupportCheckMarkTintList() {
        f3 f3Var = this.a;
        if (f3Var != null) {
            return (ColorStateList) f3Var.a;
        }
        return null;
    }

    public PorterDuff.Mode getSupportCheckMarkTintMode() {
        f3 f3Var = this.a;
        if (f3Var != null) {
            return (PorterDuff.Mode) f3Var.b;
        }
        return null;
    }

    public ColorStateList getSupportCompoundDrawablesTintList() {
        return this.c.d();
    }

    public PorterDuff.Mode getSupportCompoundDrawablesTintMode() {
        return this.c.e();
    }

    @Override // android.widget.TextView, android.view.View
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        InputConnection onCreateInputConnection = super.onCreateInputConnection(editorInfo);
        qj.q(editorInfo, onCreateInputConnection, this);
        return onCreateInputConnection;
    }

    @Override // android.widget.TextView
    public void setAllCaps(boolean z) {
        super.setAllCaps(z);
        getEmojiTextViewHelper().c(z);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        z1 z1Var = this.b;
        if (z1Var != null) {
            z1Var.m();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        z1 z1Var = this.b;
        if (z1Var != null) {
            z1Var.n(i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(Drawable drawable) {
        super.setCheckMarkDrawable(drawable);
        f3 f3Var = this.a;
        if (f3Var != null) {
            if (f3Var.e) {
                f3Var.e = false;
                return;
            }
            f3Var.e = true;
            f3Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawables(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        h5 h5Var = this.c;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    @Override // android.widget.TextView
    public final void setCompoundDrawablesRelative(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        super.setCompoundDrawablesRelative(drawable, drawable2, drawable3, drawable4);
        h5 h5Var = this.c;
        if (h5Var != null) {
            h5Var.b();
        }
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(s8.F(callback, this));
    }

    public void setEmojiCompatEnabled(boolean z) {
        getEmojiTextViewHelper().d(z);
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        z1 z1Var = this.b;
        if (z1Var != null) {
            z1Var.s(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        z1 z1Var = this.b;
        if (z1Var != null) {
            z1Var.t(mode);
        }
    }

    public void setSupportCheckMarkTintList(ColorStateList colorStateList) {
        f3 f3Var = this.a;
        if (f3Var != null) {
            f3Var.a = colorStateList;
            f3Var.c = true;
            f3Var.b();
        }
    }

    public void setSupportCheckMarkTintMode(PorterDuff.Mode mode) {
        f3 f3Var = this.a;
        if (f3Var != null) {
            f3Var.b = mode;
            f3Var.d = true;
            f3Var.b();
        }
    }

    public void setSupportCompoundDrawablesTintList(ColorStateList colorStateList) {
        h5 h5Var = this.c;
        h5Var.l(colorStateList);
        h5Var.b();
    }

    public void setSupportCompoundDrawablesTintMode(PorterDuff.Mode mode) {
        h5 h5Var = this.c;
        h5Var.m(mode);
        h5Var.b();
    }

    @Override // android.widget.TextView
    public final void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        h5 h5Var = this.c;
        if (h5Var != null) {
            h5Var.g(context, i);
        }
    }

    @Override // android.widget.CheckedTextView
    public void setCheckMarkDrawable(int i) {
        setCheckMarkDrawable(gn.p(getContext(), i));
    }
}
