package defpackage;

import android.content.Context;
import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.widget.PopupWindow;
import java.lang.reflect.Method;
/* renamed from: jp  reason: default package */
/* loaded from: classes.dex */
public final class jp extends jl implements vo {
    public static final Method E;
    public c9 D;

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                E = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
            Log.i("MenuPopupWindow", "Could not find method setTouchModal() on PopupWindow. Oh well.");
        }
    }

    @Override // defpackage.jl
    public final dd a(Context context, boolean z) {
        ip ipVar = new ip(context, z);
        ipVar.setHoverListener(this);
        return ipVar;
    }

    @Override // defpackage.vo
    public final void f(so soVar, MenuItem menuItem) {
        c9 c9Var = this.D;
        if (c9Var != null) {
            c9Var.f(soVar, menuItem);
        }
    }

    @Override // defpackage.vo
    public final void j(so soVar, wo woVar) {
        c9 c9Var = this.D;
        if (c9Var != null) {
            c9Var.j(soVar, woVar);
        }
    }
}
