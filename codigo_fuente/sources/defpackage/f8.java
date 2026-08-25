package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.view.LayoutInflater;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: f8  reason: default package */
/* loaded from: classes.dex */
public final class f8 extends ContextWrapper {
    public final int a;
    public l8 b;

    public f8(Context context) {
        super(context);
        e8.b().getClass();
        this.a = R.anim.abc_grow_fade_in_from_bottom;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if ("layout_inflater".equals(str)) {
            if (this.b == null) {
                this.b = new l8(LayoutInflater.from(getBaseContext()), this, this.a, false);
            }
            return this.b;
        }
        return super.getSystemService(str);
    }
}
