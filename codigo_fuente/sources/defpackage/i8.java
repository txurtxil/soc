package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import java.lang.reflect.Field;
/* renamed from: i8  reason: default package */
/* loaded from: classes.dex */
public final class i8 extends j8 {
    public final l8 c;

    public i8(LayoutInflater.Factory2 factory2, l8 l8Var, h8 h8Var) {
        super(factory2, h8Var);
        this.c = l8Var;
    }

    @Override // defpackage.j8, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        Object obj;
        Field field;
        View onCreateView = this.b.onCreateView(view, str, context, attributeSet);
        e8.b().getClass();
        if (onCreateView == null && str.indexOf(46) > -1) {
            l8 l8Var = this.c;
            if (l8Var.c == null) {
                int i = gt.k;
                try {
                    field = LayoutInflater.class.getDeclaredField("mConstructorArgs");
                    field.setAccessible(true);
                } catch (NoSuchFieldException unused) {
                    field = null;
                }
                l8Var.c = field;
            }
            Field field2 = l8Var.c;
            int i2 = gt.k;
            try {
                obj = field2.get(l8Var);
            } catch (IllegalAccessException unused2) {
                obj = null;
            }
            Object[] objArr = (Object[]) obj;
            Object obj2 = objArr[0];
            objArr[0] = context;
            try {
                l8Var.c.set(l8Var, objArr);
            } catch (IllegalAccessException unused3) {
            }
            try {
                onCreateView = l8Var.createView(str, null, attributeSet);
                objArr[0] = obj2;
            } catch (ClassNotFoundException unused4) {
                objArr[0] = obj2;
            } catch (Throwable th) {
                objArr[0] = obj2;
                try {
                    l8Var.c.set(l8Var, objArr);
                } catch (IllegalAccessException unused5) {
                }
                throw th;
            }
            try {
                l8Var.c.set(l8Var, objArr);
            } catch (IllegalAccessException unused6) {
            }
        }
        this.a.d(onCreateView, context, attributeSet);
        return onCreateView;
    }
}
