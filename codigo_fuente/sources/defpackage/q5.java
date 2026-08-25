package defpackage;

import android.text.StaticLayout;
import android.widget.TextView;
/* renamed from: q5  reason: default package */
/* loaded from: classes.dex */
public abstract class q5 {
    public abstract void a(StaticLayout.Builder builder, TextView textView);

    public boolean b(TextView textView) {
        return ((Boolean) r5.e(textView, Boolean.FALSE, "getHorizontallyScrolling")).booleanValue();
    }
}
