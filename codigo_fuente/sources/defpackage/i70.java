package defpackage;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.util.WeakHashMap;
/* renamed from: i70  reason: default package */
/* loaded from: classes.dex */
public final class i70 implements View.OnApplyWindowInsetsListener {
    public f90 a = null;
    public final /* synthetic */ View b;
    public final /* synthetic */ wr c;

    public i70(View view, wr wrVar) {
        this.b = view;
        this.c = wrVar;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        f90 e = f90.e(windowInsets, view);
        int i = Build.VERSION.SDK_INT;
        wr wrVar = this.c;
        if (i < 30) {
            j70.a(windowInsets, this.b);
            if (e.equals(this.a)) {
                return wrVar.g(view, e).d();
            }
        }
        this.a = e;
        f90 g = wrVar.g(view, e);
        if (i >= 30) {
            return g.d();
        }
        WeakHashMap weakHashMap = u70.a;
        h70.c(view);
        return g.d();
    }
}
