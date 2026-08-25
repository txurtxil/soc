package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.AbsSavedState;
/* loaded from: classes.dex */
public abstract class TwoStatePreference extends Preference {
    public boolean O;
    public CharSequence P;
    public CharSequence Q;
    public boolean R;
    public boolean S;

    public TwoStatePreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public final void A(boolean z) {
        boolean z2;
        if (this.O != z) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2 || !this.R) {
            this.O = z;
            this.R = true;
            if (z()) {
                boolean z3 = !z;
                boolean z4 = z();
                String str = this.l;
                if (z4) {
                    z3 = this.b.d().getBoolean(str, z3);
                }
                if (z != z3) {
                    SharedPreferences.Editor c = this.b.c();
                    c.putBoolean(str, z);
                    if (!this.b.e) {
                        c.apply();
                    }
                }
            }
            if (z2) {
                i(y());
                h();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0049  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void B(android.view.View r4) {
        /*
            r3 = this;
            boolean r0 = r4 instanceof android.widget.TextView
            if (r0 != 0) goto L5
            goto L4c
        L5:
            android.widget.TextView r4 = (android.widget.TextView) r4
            boolean r0 = r3.O
            r1 = 0
            if (r0 == 0) goto L1b
            java.lang.CharSequence r0 = r3.P
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L1b
            java.lang.CharSequence r0 = r3.P
            r4.setText(r0)
        L19:
            r0 = r1
            goto L2e
        L1b:
            boolean r0 = r3.O
            if (r0 != 0) goto L2d
            java.lang.CharSequence r0 = r3.Q
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L2d
            java.lang.CharSequence r0 = r3.Q
            r4.setText(r0)
            goto L19
        L2d:
            r0 = 1
        L2e:
            if (r0 == 0) goto L3e
            java.lang.CharSequence r3 = r3.f()
            boolean r2 = android.text.TextUtils.isEmpty(r3)
            if (r2 != 0) goto L3e
            r4.setText(r3)
            r0 = r1
        L3e:
            if (r0 != 0) goto L41
            goto L43
        L41:
            r1 = 8
        L43:
            int r3 = r4.getVisibility()
            if (r1 == r3) goto L4c
            r4.setVisibility(r1)
        L4c:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.TwoStatePreference.B(android.view.View):void");
    }

    @Override // androidx.preference.Preference
    public final void m() {
        boolean z = !this.O;
        if (a(Boolean.valueOf(z))) {
            A(z);
        }
    }

    @Override // androidx.preference.Preference
    public final Object o(TypedArray typedArray, int i) {
        return Boolean.valueOf(typedArray.getBoolean(i, false));
    }

    @Override // androidx.preference.Preference
    public final void p(Parcelable parcelable) {
        if (!parcelable.getClass().equals(u50.class)) {
            super.p(parcelable);
            return;
        }
        u50 u50Var = (u50) parcelable;
        super.p(u50Var.getSuperState());
        A(u50Var.a);
    }

    @Override // androidx.preference.Preference
    public final Parcelable q() {
        super.q();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.s) {
            return absSavedState;
        }
        u50 u50Var = new u50();
        u50Var.a = this.O;
        return u50Var;
    }

    @Override // androidx.preference.Preference
    public final void r(Object obj) {
        if (obj == null) {
            obj = Boolean.FALSE;
        }
        boolean booleanValue = ((Boolean) obj).booleanValue();
        if (z()) {
            booleanValue = this.b.d().getBoolean(this.l, booleanValue);
        }
        A(booleanValue);
    }

    @Override // androidx.preference.Preference
    public final boolean y() {
        boolean z = this.S;
        boolean z2 = this.O;
        if (!z) {
            if (!z2) {
                z2 = true;
            } else {
                z2 = false;
            }
        }
        if (!z2 && !super.y()) {
            return false;
        }
        return true;
    }
}
