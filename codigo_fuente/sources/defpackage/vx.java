package defpackage;

import android.content.res.Resources;
/* renamed from: vx  reason: default package */
/* loaded from: classes.dex */
public final class vx {
    public final Resources a;
    public final Resources.Theme b;

    public vx(Resources resources, Resources.Theme theme) {
        this.a = resources;
        this.b = theme;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && vx.class == obj.getClass()) {
            vx vxVar = (vx) obj;
            if (this.a.equals(vxVar.a) && vr.a(this.b, vxVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return vr.b(this.a, this.b);
    }
}
