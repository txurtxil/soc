package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.preference.PreferenceScreen;
/* renamed from: lu  reason: default package */
/* loaded from: classes.dex */
public final class lu {
    public final Context a;
    public long b = 0;
    public SharedPreferences c = null;
    public SharedPreferences.Editor d;
    public boolean e;
    public final String f;
    public PreferenceScreen g;
    public gu h;
    public gu i;
    public gu j;

    public lu(Context context) {
        this.a = context;
        this.f = b(context);
    }

    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences(b(context), 0);
    }

    public static String b(Context context) {
        return context.getPackageName() + "_preferences";
    }

    public final SharedPreferences.Editor c() {
        if (this.e) {
            if (this.d == null) {
                this.d = d().edit();
            }
            return this.d;
        }
        return d().edit();
    }

    public final SharedPreferences d() {
        if (this.c == null) {
            this.c = this.a.getSharedPreferences(this.f, 0);
        }
        return this.c;
    }
}
