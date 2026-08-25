package androidx.preference;

import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.view.AbsSavedState;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes.dex */
public class MultiSelectListPreference extends DialogPreference {
    public final CharSequence[] U;
    public final CharSequence[] V;
    public final HashSet W;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public MultiSelectListPreference(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            r0 = 2130968945(0x7f040171, float:1.7546558E38)
            r1 = 16842897(0x1010091, float:2.3693964E-38)
            int r0 = defpackage.gt.g(r4, r0, r1)
            r3.<init>(r4, r5, r0)
            java.util.HashSet r1 = new java.util.HashSet
            r1.<init>()
            r3.W = r1
            int[] r1 = defpackage.sv.f
            r2 = 0
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r1, r0, r2)
            r5 = 2
            java.lang.CharSequence[] r5 = r4.getTextArray(r5)
            if (r5 != 0) goto L26
            java.lang.CharSequence[] r5 = r4.getTextArray(r2)
        L26:
            r3.U = r5
            r5 = 3
            java.lang.CharSequence[] r5 = r4.getTextArray(r5)
            if (r5 != 0) goto L34
            r5 = 1
            java.lang.CharSequence[] r5 = r4.getTextArray(r5)
        L34:
            r3.V = r5
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.MultiSelectListPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final void A(Set set) {
        HashSet hashSet = this.W;
        hashSet.clear();
        hashSet.addAll(set);
        if (z()) {
            boolean z = z();
            String str = this.l;
            Set<String> set2 = null;
            if (z) {
                set2 = this.b.d().getStringSet(str, null);
            }
            if (!set.equals(set2)) {
                SharedPreferences.Editor c = this.b.c();
                c.putStringSet(str, set);
                if (!this.b.e) {
                    c.apply();
                }
            }
        }
        h();
    }

    @Override // androidx.preference.Preference
    public final Object o(TypedArray typedArray, int i) {
        CharSequence[] textArray = typedArray.getTextArray(i);
        HashSet hashSet = new HashSet();
        for (CharSequence charSequence : textArray) {
            hashSet.add(charSequence.toString());
        }
        return hashSet;
    }

    @Override // androidx.preference.Preference
    public final void p(Parcelable parcelable) {
        if (!parcelable.getClass().equals(pq.class)) {
            super.p(parcelable);
            return;
        }
        pq pqVar = (pq) parcelable;
        super.p(pqVar.getSuperState());
        A(pqVar.a);
    }

    @Override // androidx.preference.Preference
    public final Parcelable q() {
        super.q();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.s) {
            return absSavedState;
        }
        pq pqVar = new pq();
        pqVar.a = this.W;
        return pqVar;
    }

    @Override // androidx.preference.Preference
    public final void r(Object obj) {
        Set<String> set = (Set) obj;
        if (z()) {
            set = this.b.d().getStringSet(this.l, set);
        }
        A(set);
    }
}
