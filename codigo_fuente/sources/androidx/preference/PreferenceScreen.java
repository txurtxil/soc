package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import com.google.android.apps.auto.sdk.ui.R;
/* loaded from: classes.dex */
public final class PreferenceScreen extends PreferenceGroup {
    public final boolean U;

    public PreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, gt.g(context, R.attr.preferenceScreenStyle, 16842891), 0);
        this.U = true;
    }

    @Override // androidx.preference.Preference
    public final void m() {
        vf vfVar;
        if (this.m == null && this.n == null && this.P.size() != 0 && (vfVar = this.b.j) != null) {
            for (vfVar = this.b.j; vfVar != null; vfVar = vfVar.v) {
            }
        }
    }
}
