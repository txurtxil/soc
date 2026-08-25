package defpackage;

import android.graphics.drawable.Drawable;
import androidx.preference.Preference;
import idv.lzn.screenonauto.MainActivity;
import idv.lzn.screenonauto.SettingsFragment;
/* renamed from: cm  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class cm implements ch {
    public final /* synthetic */ int a;
    public final /* synthetic */ SettingsFragment b;

    public /* synthetic */ cm(SettingsFragment settingsFragment, int i) {
        this.a = i;
        this.b = settingsFragment;
    }

    @Override // defpackage.ch
    public final Object b(Object obj) {
        Preference preference;
        int i = this.a;
        f60 f60Var = f60.a;
        SettingsFragment settingsFragment = this.b;
        switch (i) {
            case 0:
                boolean booleanValue = ((Boolean) obj).booleanValue();
                int i2 = MainActivity.E;
                if (settingsFragment != null) {
                    settingsFragment.S(booleanValue);
                }
                return f60Var;
            case 1:
                ((Boolean) obj).getClass();
                settingsFragment.U();
                return f60Var;
            default:
                Drawable drawable = (Drawable) obj;
                if (settingsFragment.o() && (preference = settingsFragment.g0) != null) {
                    preference.w(drawable);
                }
                return f60Var;
        }
    }
}
