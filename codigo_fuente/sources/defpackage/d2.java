package defpackage;

import androidx.preference.EditTextPreference;
import androidx.preference.Preference;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.List;
/* renamed from: d2  reason: default package */
/* loaded from: classes.dex */
public final class d2 extends gu {
    public static final List c0 = w9.y("map_action_force_landscape", "map_action_auto_dim", "map_action_back", "map_action_home", "map_action_recents");
    public final b2 b0 = new b2(this);

    /* JADX WARN: Type inference failed for: r0v5, types: [java.lang.Object, c2] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.lang.Object, c2] */
    @Override // defpackage.gu
    public final void N(String str) {
        P(R.xml.advanced_preferences, str);
        EditTextPreference editTextPreference = (EditTextPreference) M("vd_width_gap");
        if (editTextPreference != null) {
            editTextPreference.V = new Object();
        }
        EditTextPreference editTextPreference2 = (EditTextPreference) M("vd_height_gap");
        if (editTextPreference2 != null) {
            editTextPreference2.V = new Object();
        }
        for (String str2 : c0) {
            Preference M = M(str2);
            if (M != null) {
                M.e = this.b0;
            }
        }
    }
}
