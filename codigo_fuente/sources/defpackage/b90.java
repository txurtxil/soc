package defpackage;

import android.view.DisplayCutout;
import android.view.WindowInsets;
import java.util.Objects;
/* renamed from: b90  reason: default package */
/* loaded from: classes.dex */
public class b90 extends a90 {
    public b90(f90 f90Var, WindowInsets windowInsets) {
        super(f90Var, windowInsets);
    }

    @Override // defpackage.e90
    public f90 a() {
        WindowInsets consumeDisplayCutout;
        consumeDisplayCutout = this.c.consumeDisplayCutout();
        return f90.e(consumeDisplayCutout, null);
    }

    @Override // defpackage.e90
    public rc e() {
        DisplayCutout displayCutout;
        displayCutout = this.c.getDisplayCutout();
        if (displayCutout == null) {
            return null;
        }
        return new rc(displayCutout);
    }

    @Override // defpackage.z80, defpackage.e90
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b90)) {
            return false;
        }
        b90 b90Var = (b90) obj;
        if (Objects.equals(this.c, b90Var.c) && Objects.equals(this.e, b90Var.e)) {
            return true;
        }
        return false;
    }

    @Override // defpackage.e90
    public int hashCode() {
        return this.c.hashCode();
    }
}
