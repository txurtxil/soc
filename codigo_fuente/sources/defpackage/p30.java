package defpackage;

import android.view.MenuItem;
import java.lang.reflect.Method;
/* renamed from: p30  reason: default package */
/* loaded from: classes.dex */
public final class p30 implements MenuItem.OnMenuItemClickListener {
    public static final Class[] d = {MenuItem.class};
    public final /* synthetic */ int a = 0;
    public Object b;
    public Object c;

    public p30(ap apVar, MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.c = apVar;
        this.b = onMenuItemClickListener;
    }

    @Override // android.view.MenuItem.OnMenuItemClickListener
    public final boolean onMenuItemClick(MenuItem menuItem) {
        boolean z;
        switch (this.a) {
            case 0:
                Object obj = this.b;
                Method method = (Method) this.c;
                try {
                    if (method.getReturnType() == Boolean.TYPE) {
                        z = ((Boolean) method.invoke(obj, menuItem)).booleanValue();
                    } else {
                        method.invoke(obj, menuItem);
                        z = true;
                    }
                    return z;
                } catch (Exception e) {
                    c2.k(e);
                    return false;
                }
            default:
                return ((MenuItem.OnMenuItemClickListener) this.b).onMenuItemClick(((ap) this.c).g(menuItem));
        }
    }

    public /* synthetic */ p30() {
    }
}
