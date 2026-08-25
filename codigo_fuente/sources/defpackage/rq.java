package defpackage;

import android.os.Bundle;
import androidx.preference.MultiSelectListPreference;
import java.util.ArrayList;
import java.util.HashSet;
/* renamed from: rq  reason: default package */
/* loaded from: classes.dex */
public class rq extends eu {
    public final HashSet r0 = new HashSet();
    public boolean s0;
    public CharSequence[] t0;
    public CharSequence[] u0;

    @Override // defpackage.eu
    public final void R(boolean z) {
        if (z && this.s0) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) P();
            HashSet hashSet = this.r0;
            if (multiSelectListPreference.a(hashSet)) {
                multiSelectListPreference.A(hashSet);
            }
        }
        this.s0 = false;
    }

    @Override // defpackage.eu
    public final void S(n2 n2Var) {
        int length = this.u0.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = this.r0.contains(this.u0[i].toString());
        }
        CharSequence[] charSequenceArr = this.t0;
        qq qqVar = new qq(this);
        k2 k2Var = (k2) n2Var.c;
        k2Var.l = charSequenceArr;
        k2Var.t = qqVar;
        k2Var.p = zArr;
        k2Var.q = true;
    }

    @Override // defpackage.eu, defpackage.qc, defpackage.vf
    public final void r(Bundle bundle) {
        super.r(bundle);
        HashSet hashSet = this.r0;
        if (bundle == null) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) P();
            CharSequence[] charSequenceArr = multiSelectListPreference.U;
            CharSequence[] charSequenceArr2 = multiSelectListPreference.V;
            if (charSequenceArr != null && charSequenceArr2 != null) {
                hashSet.clear();
                hashSet.addAll(multiSelectListPreference.W);
                this.s0 = false;
                this.t0 = multiSelectListPreference.U;
                this.u0 = charSequenceArr2;
                return;
            }
            c2.g("MultiSelectListPreference requires an entries array and an entryValues array.");
            return;
        }
        hashSet.clear();
        hashSet.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
        this.s0 = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
        this.t0 = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
        this.u0 = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
    }

    @Override // defpackage.eu, defpackage.qc, defpackage.vf
    public final void z(Bundle bundle) {
        super.z(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList<>(this.r0));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.s0);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.t0);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.u0);
    }
}
