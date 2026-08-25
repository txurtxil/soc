package defpackage;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.widget.CompoundButton;
import android.widget.TextView;
/* renamed from: f3  reason: default package */
/* loaded from: classes.dex */
public final class f3 {
    public Parcelable a;
    public Object b;
    public boolean c;
    public boolean d;
    public boolean e;
    public final Object f;

    public /* synthetic */ f3(TextView textView) {
        this.a = null;
        this.b = null;
        this.c = false;
        this.d = false;
        this.f = textView;
    }

    public void a() {
        CompoundButton compoundButton = (CompoundButton) this.f;
        Drawable a = ma.a(compoundButton);
        if (a != null) {
            if (this.c || this.d) {
                Drawable mutate = a.mutate();
                if (this.c) {
                    tc.h(mutate, (ColorStateList) this.a);
                }
                if (this.d) {
                    tc.i(mutate, (PorterDuff.Mode) this.b);
                }
                if (mutate.isStateful()) {
                    mutate.setState(compoundButton.getDrawableState());
                }
                compoundButton.setButtonDrawable(mutate);
            }
        }
    }

    public void b() {
        e3 e3Var = (e3) this.f;
        Drawable checkMarkDrawable = e3Var.getCheckMarkDrawable();
        if (checkMarkDrawable != null) {
            if (this.c || this.d) {
                Drawable mutate = checkMarkDrawable.mutate();
                if (this.c) {
                    tc.h(mutate, (ColorStateList) this.a);
                }
                if (this.d) {
                    tc.i(mutate, (PorterDuff.Mode) this.b);
                }
                if (mutate.isStateful()) {
                    mutate.setState(e3Var.getDrawableState());
                }
                e3Var.setCheckMarkDrawable(mutate);
            }
        }
    }

    public Bundle c(String str) {
        if (this.d) {
            Bundle bundle = (Bundle) this.a;
            if (bundle == null) {
                return null;
            }
            Bundle bundle2 = bundle.getBundle(str);
            Bundle bundle3 = (Bundle) this.a;
            if (bundle3 != null) {
                bundle3.remove(str);
            }
            Bundle bundle4 = (Bundle) this.a;
            if (bundle4 != null && !bundle4.isEmpty()) {
                return bundle2;
            }
            this.a = null;
            return bundle2;
        }
        c2.g("You can consumeRestoredStateForKey only after super.onCreate of corresponding component");
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x005d A[Catch: all -> 0x003c, TryCatch #1 {all -> 0x003c, blocks: (B:3:0x0023, B:5:0x002a, B:7:0x0030, B:16:0x0056, B:18:0x005d, B:19:0x0064, B:21:0x006b, B:11:0x003f, B:13:0x0045, B:15:0x004b), top: B:29:0x0023 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006b A[Catch: all -> 0x003c, TRY_LEAVE, TryCatch #1 {all -> 0x003c, blocks: (B:3:0x0023, B:5:0x002a, B:7:0x0030, B:16:0x0056, B:18:0x005d, B:19:0x0064, B:21:0x006b, B:11:0x003f, B:13:0x0045, B:15:0x004b), top: B:29:0x0023 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(android.util.AttributeSet r8, int r9) {
        /*
            r7 = this;
            java.lang.Object r7 = r7.f
            r0 = r7
            android.widget.CompoundButton r0 = (android.widget.CompoundButton) r0
            android.content.Context r7 = r0.getContext()
            int[] r2 = defpackage.vv.m
            v5 r7 = defpackage.v5.C(r7, r8, r2, r9)
            java.lang.Object r1 = r7.b
            r6 = r1
            android.content.res.TypedArray r6 = (android.content.res.TypedArray) r6
            android.content.Context r1 = r0.getContext()
            java.lang.Object r3 = r7.b
            r4 = r3
            android.content.res.TypedArray r4 = (android.content.res.TypedArray) r4
            r3 = r8
            r5 = r9
            defpackage.u70.g(r0, r1, r2, r3, r4, r5)
            r8 = 1
            boolean r9 = r6.hasValue(r8)     // Catch: java.lang.Throwable -> L3c
            r1 = 0
            if (r9 == 0) goto L3f
            int r8 = r6.getResourceId(r8, r1)     // Catch: java.lang.Throwable -> L3c
            if (r8 == 0) goto L3f
            android.content.Context r9 = r0.getContext()     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3f
            android.graphics.drawable.Drawable r8 = defpackage.gn.p(r9, r8)     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3f
            r0.setButtonDrawable(r8)     // Catch: java.lang.Throwable -> L3c android.content.res.Resources.NotFoundException -> L3f
            goto L56
        L3c:
            r0 = move-exception
            r8 = r0
            goto L7c
        L3f:
            boolean r8 = r6.hasValue(r1)     // Catch: java.lang.Throwable -> L3c
            if (r8 == 0) goto L56
            int r8 = r6.getResourceId(r1, r1)     // Catch: java.lang.Throwable -> L3c
            if (r8 == 0) goto L56
            android.content.Context r9 = r0.getContext()     // Catch: java.lang.Throwable -> L3c
            android.graphics.drawable.Drawable r8 = defpackage.gn.p(r9, r8)     // Catch: java.lang.Throwable -> L3c
            r0.setButtonDrawable(r8)     // Catch: java.lang.Throwable -> L3c
        L56:
            r8 = 2
            boolean r9 = r6.hasValue(r8)     // Catch: java.lang.Throwable -> L3c
            if (r9 == 0) goto L64
            android.content.res.ColorStateList r8 = r7.q(r8)     // Catch: java.lang.Throwable -> L3c
            defpackage.la.c(r0, r8)     // Catch: java.lang.Throwable -> L3c
        L64:
            r8 = 3
            boolean r9 = r6.hasValue(r8)     // Catch: java.lang.Throwable -> L3c
            if (r9 == 0) goto L78
            r9 = -1
            int r8 = r6.getInt(r8, r9)     // Catch: java.lang.Throwable -> L3c
            r9 = 0
            android.graphics.PorterDuff$Mode r8 = defpackage.xc.c(r8, r9)     // Catch: java.lang.Throwable -> L3c
            defpackage.la.d(r0, r8)     // Catch: java.lang.Throwable -> L3c
        L78:
            r7.E()
            return
        L7c:
            r7.E()
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.f3.d(android.util.AttributeSet, int):void");
    }

    public void e(String str, uz uzVar) {
        Object obj;
        pz pzVar = (pz) this.f;
        mz a = pzVar.a(str);
        if (a != null) {
            obj = a.b;
        } else {
            mz mzVar = new mz(str, uzVar);
            pzVar.d++;
            mz mzVar2 = pzVar.b;
            if (mzVar2 == null) {
                pzVar.a = mzVar;
                pzVar.b = mzVar;
            } else {
                mzVar2.c = mzVar;
                mzVar.d = mzVar2;
                pzVar.b = mzVar;
            }
            obj = null;
        }
        if (((uz) obj) == null) {
            return;
        }
        c2.n("SavedStateProvider with the given key is already registered");
    }

    public f3() {
        this.f = new pz();
        this.e = true;
    }
}
