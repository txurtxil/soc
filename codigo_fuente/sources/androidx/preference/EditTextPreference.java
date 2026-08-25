package androidx.preference;

import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.AbsSavedState;
/* loaded from: classes.dex */
public class EditTextPreference extends DialogPreference {
    public String U;
    public c2 V;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public EditTextPreference(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            r0 = 2130968983(0x7f040197, float:1.7546635E38)
            r1 = 16842898(0x1010092, float:2.3693967E-38)
            int r0 = defpackage.gt.g(r4, r0, r1)
            r3.<init>(r4, r5, r0)
            int[] r1 = defpackage.sv.d
            r2 = 0
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r1, r0, r2)
            boolean r5 = r4.getBoolean(r2, r2)
            boolean r5 = r4.getBoolean(r2, r5)
            if (r5 == 0) goto L32
            hd r5 = defpackage.hd.e
            if (r5 != 0) goto L2b
            hd r5 = new hd
            r0 = 8
            r5.<init>(r0)
            defpackage.hd.e = r5
        L2b:
            hd r5 = defpackage.hd.e
            r3.M = r5
            r3.h()
        L32:
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.EditTextPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final void A(String str) {
        boolean y = y();
        this.U = str;
        t(str);
        boolean y2 = y();
        if (y2 != y) {
            i(y2);
        }
        h();
    }

    @Override // androidx.preference.Preference
    public final Object o(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    public final void p(Parcelable parcelable) {
        if (!parcelable.getClass().equals(id.class)) {
            super.p(parcelable);
            return;
        }
        id idVar = (id) parcelable;
        super.p(idVar.getSuperState());
        A(idVar.a);
    }

    @Override // androidx.preference.Preference
    public final Parcelable q() {
        super.q();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.s) {
            return absSavedState;
        }
        id idVar = new id();
        idVar.a = this.U;
        return idVar;
    }

    @Override // androidx.preference.Preference
    public final void r(Object obj) {
        A(e((String) obj));
    }

    @Override // androidx.preference.Preference
    public final boolean y() {
        if (!TextUtils.isEmpty(this.U) && !super.y()) {
            return false;
        }
        return true;
    }
}
