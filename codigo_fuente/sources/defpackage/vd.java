package defpackage;

import android.text.Editable;
/* renamed from: vd  reason: default package */
/* loaded from: classes.dex */
public final class vd extends Editable.Factory {
    public static final Object a = new Object();
    public static volatile vd b;
    public static Class c;

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = c;
        if (cls != null) {
            return new p20(cls, charSequence);
        }
        return super.newEditable(charSequence);
    }
}
