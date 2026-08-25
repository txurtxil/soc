package defpackage;

import android.os.Bundle;
import androidx.preference.ListPreference;
/* renamed from: ml  reason: default package */
/* loaded from: classes.dex */
public class ml extends eu {
    public int r0;
    public CharSequence[] s0;
    public CharSequence[] t0;

    @Override // defpackage.eu
    public final void R(boolean z) {
        int i;
        if (z && (i = this.r0) >= 0) {
            String charSequence = this.t0[i].toString();
            ListPreference listPreference = (ListPreference) P();
            if (listPreference.a(charSequence)) {
                listPreference.B(charSequence);
            }
        }
    }

    @Override // defpackage.eu
    public final void S(n2 n2Var) {
        CharSequence[] charSequenceArr = this.s0;
        int i = this.r0;
        ll llVar = new ll(this);
        k2 k2Var = (k2) n2Var.c;
        k2Var.l = charSequenceArr;
        k2Var.n = llVar;
        k2Var.s = i;
        k2Var.r = true;
        n2Var.d(null, null);
    }

    @Override // defpackage.eu, defpackage.qc, defpackage.vf
    public final void r(Bundle bundle) {
        super.r(bundle);
        if (bundle == null) {
            ListPreference listPreference = (ListPreference) P();
            CharSequence[] charSequenceArr = listPreference.U;
            CharSequence[] charSequenceArr2 = listPreference.V;
            if (charSequenceArr != null && charSequenceArr2 != null) {
                this.r0 = listPreference.A(listPreference.W);
                this.s0 = listPreference.U;
                this.t0 = charSequenceArr2;
                return;
            }
            c2.g("ListPreference requires an entries array and an entryValues array.");
            return;
        }
        this.r0 = bundle.getInt("ListPreferenceDialogFragment.index", 0);
        this.s0 = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
        this.t0 = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
    }

    @Override // defpackage.eu, defpackage.qc, defpackage.vf
    public final void z(Bundle bundle) {
        super.z(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.r0);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.s0);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.t0);
    }
}
