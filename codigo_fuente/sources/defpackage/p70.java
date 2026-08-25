package defpackage;

import android.view.View;
/* renamed from: p70  reason: default package */
/* loaded from: classes.dex */
public abstract class p70 {
    public static CharSequence a(View view) {
        return view.getStateDescription();
    }

    public static void b(View view, CharSequence charSequence) {
        view.setStateDescription(charSequence);
    }
}
