package defpackage;

import android.content.res.Resources;
import android.widget.ThemedSpinnerAdapter;
/* renamed from: r4  reason: default package */
/* loaded from: classes.dex */
public abstract class r4 {
    public static void a(ThemedSpinnerAdapter themedSpinnerAdapter, Resources.Theme theme) {
        if (!vr.a(themedSpinnerAdapter.getDropDownViewTheme(), theme)) {
            themedSpinnerAdapter.setDropDownViewTheme(theme);
        }
    }
}
