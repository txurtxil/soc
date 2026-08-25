package androidx.preference;

import android.content.Context;
import android.os.Build;
import android.util.AttributeSet;
import com.google.android.apps.auto.sdk.ui.R;
/* loaded from: classes.dex */
public class PreferenceCategory extends PreferenceGroup {
    public PreferenceCategory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, gt.g(context, R.attr.preferenceCategoryStyle, 16842892), 0);
    }

    @Override // androidx.preference.Preference
    public final boolean g() {
        return false;
    }

    @Override // androidx.preference.Preference
    public final void l(nu nuVar) {
        super.l(nuVar);
        if (Build.VERSION.SDK_INT >= 28) {
            nuVar.a.setAccessibilityHeading(true);
        }
    }

    @Override // androidx.preference.Preference
    public final boolean y() {
        return !super.g();
    }
}
