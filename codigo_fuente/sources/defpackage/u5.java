package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.apps.auto.sdk.ui.R;
import java.lang.reflect.Constructor;
/* renamed from: u5  reason: default package */
/* loaded from: classes.dex */
public class u5 {
    public static final Class[] b = {Context.class, AttributeSet.class};
    public static final int[] c = {16843375};
    public static final int[] d = {16844160};
    public static final int[] e = {16844156};
    public static final int[] f = {16844148};
    public static final String[] g = {"android.widget.", "android.view.", "android.webkit."};
    public static final j20 h = new j20();
    public final Object[] a = new Object[2];

    public a3 a(Context context, AttributeSet attributeSet) {
        return new a3(context, attributeSet, R.attr.autoCompleteTextViewStyle);
    }

    public b3 b(Context context, AttributeSet attributeSet) {
        return new b3(context, attributeSet, R.attr.buttonStyle);
    }

    public d3 c(Context context, AttributeSet attributeSet) {
        return new d3(context, attributeSet);
    }

    public i4 d(Context context, AttributeSet attributeSet) {
        return new i4(context, attributeSet);
    }

    public k5 e(Context context, AttributeSet attributeSet) {
        return new k5(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) {
        String concat;
        j20 j20Var = h;
        Constructor constructor = (Constructor) j20Var.getOrDefault(str, null);
        if (constructor == null) {
            if (str2 != null) {
                try {
                    concat = str2.concat(str);
                } catch (Exception unused) {
                    return null;
                }
            } else {
                concat = str;
            }
            constructor = Class.forName(concat, false, context.getClassLoader()).asSubclass(View.class).getConstructor(b);
            j20Var.put(str, constructor);
        }
        constructor.setAccessible(true);
        return (View) constructor.newInstance(this.a);
    }
}
