package defpackage;

import android.util.Property;
import androidx.appcompat.widget.SwitchCompat;
/* renamed from: u30  reason: default package */
/* loaded from: classes.dex */
public final class u30 extends Property {
    @Override // android.util.Property
    public final Object get(Object obj) {
        return Float.valueOf(((SwitchCompat) obj).A);
    }

    @Override // android.util.Property
    public final void set(Object obj, Object obj2) {
        ((SwitchCompat) obj).setThumbPosition(((Float) obj2).floatValue());
    }
}
