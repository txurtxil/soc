package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.preference.PreferenceScreen;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.ShortcutSlotPreference;
import java.util.List;
/* renamed from: fk  reason: default package */
/* loaded from: classes.dex */
public final class fk extends gu {
    public SharedPreferences b0;
    public List c0;
    public final ShortcutSlotPreference[] d0 = new ShortcutSlotPreference[4];

    @Override // defpackage.gu
    public final void N(String str) {
        Context G = G();
        SharedPreferences sharedPreferences = G.getSharedPreferences(lu.b(G), 0);
        sharedPreferences.getClass();
        this.b0 = sharedPreferences;
        this.c0 = gt.k(sharedPreferences);
        lu luVar = this.U;
        Context G2 = G();
        luVar.getClass();
        PreferenceScreen preferenceScreen = new PreferenceScreen(G2, null);
        preferenceScreen.k(luVar);
        for (int i = 0; i < 4; i++) {
            ShortcutSlotPreference shortcutSlotPreference = new ShortcutSlotPreference(G(), null);
            shortcutSlotPreference.s = false;
            if (!shortcutSlotPreference.C) {
                shortcutSlotPreference.C = true;
                shortcutSlotPreference.h();
            }
            shortcutSlotPreference.Q = new dk(i, this);
            shortcutSlotPreference.f = new g6(i, this);
            this.d0[i] = shortcutSlotPreference;
            preferenceScreen.A(shortcutSlotPreference);
        }
        O(preferenceScreen);
        for (int i2 = 0; i2 < 4; i2++) {
            Q(i2);
        }
    }

    public final void Q(int i) {
        final ShortcutSlotPreference shortcutSlotPreference = this.d0[i];
        if (shortcutSlotPreference == null) {
            return;
        }
        List list = this.c0;
        if (list != null) {
            ck ckVar = (ck) list.get(i);
            Context G = G();
            String str = ckVar.a;
            if (str.length() == 0) {
                String m = m(R.string.launch_shortcut_slot, Integer.valueOf(i + 1));
                if (!TextUtils.equals(m, shortcutSlotPreference.h)) {
                    shortcutSlotPreference.h = m;
                    shortcutSlotPreference.h();
                }
                shortcutSlotPreference.x(l(R.string.launch_shortcut_not_set));
                shortcutSlotPreference.w(null);
                shortcutSlotPreference.O = false;
                shortcutSlotPreference.P = false;
                shortcutSlotPreference.h();
                return;
            }
            String b = z5.b(G, str);
            if (b == null) {
                b = str;
            }
            if (!TextUtils.equals(b, shortcutSlotPreference.h)) {
                shortcutSlotPreference.h = b;
                shortcutSlotPreference.h();
            }
            shortcutSlotPreference.x(m(R.string.launch_shortcut_slot, Integer.valueOf(i + 1)));
            shortcutSlotPreference.w(null);
            ch chVar = new ch() { // from class: ek
                @Override // defpackage.ch
                public final Object b(Object obj) {
                    Drawable drawable = (Drawable) obj;
                    if (fk.this.o()) {
                        shortcutSlotPreference.w(drawable);
                    }
                    return f60.a;
                }
            };
            z5.a.execute(new x5(G.getApplicationContext(), str, chVar, 0));
            shortcutSlotPreference.O = ckVar.b;
            shortcutSlotPreference.P = true;
            shortcutSlotPreference.h();
            return;
        }
        qj.v("model");
        throw null;
    }

    @Override // defpackage.gu, defpackage.vf
    public final void r(Bundle bundle) {
        super.r(bundle);
        j().S(this, new b2(this));
    }
}
