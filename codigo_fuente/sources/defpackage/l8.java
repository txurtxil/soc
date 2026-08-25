package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: l8  reason: default package */
/* loaded from: classes.dex */
public final class l8 extends LayoutInflater {
    public static final String[] e = {"android.widget.", "android.webkit."};
    public final int a;
    public final h8 b;
    public Field c;
    public boolean d;

    public l8(LayoutInflater layoutInflater, Context context, int i, boolean z) {
        super(layoutInflater, context);
        this.d = false;
        this.c = null;
        this.a = i;
        this.b = new h8(i);
        if (!z) {
            if (getFactory2() != null && !(getFactory2() instanceof j8)) {
                setFactory2(getFactory2());
            }
            if (getFactory() != null && !(getFactory() instanceof k8)) {
                setFactory(getFactory());
            }
        }
    }

    @Override // android.view.LayoutInflater
    public final LayoutInflater cloneInContext(Context context) {
        return new l8(this, context, this.a, true);
    }

    @Override // android.view.LayoutInflater
    public final View inflate(XmlPullParser xmlPullParser, ViewGroup viewGroup, boolean z) {
        Method method;
        if (!this.d) {
            e8.b().getClass();
            if (getContext() instanceof LayoutInflater.Factory2) {
                int i = gt.k;
                Method[] methods = LayoutInflater.class.getMethods();
                int length = methods.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        method = methods[i2];
                        if (method.getName().equals("setPrivateFactory")) {
                            method.setAccessible(true);
                            break;
                        }
                        i2++;
                    } else {
                        method = null;
                        break;
                    }
                }
                if (method != null) {
                    try {
                        method.invoke(this, new i8((LayoutInflater.Factory2) getContext(), this, this.b));
                    } catch (IllegalAccessException | InvocationTargetException e2) {
                        Log.d("gt", "Can't invoke method using reflection", e2);
                    }
                }
            }
            this.d = true;
        }
        return super.inflate(xmlPullParser, viewGroup, z);
    }

    @Override // android.view.LayoutInflater
    public final View onCreateView(String str, AttributeSet attributeSet) {
        View view = null;
        for (int i = 0; i < 2; i++) {
            try {
                view = createView(str, e[i], attributeSet);
            } catch (ClassNotFoundException unused) {
            }
        }
        if (view == null) {
            view = super.onCreateView(str, attributeSet);
        }
        this.b.d(view, view.getContext(), attributeSet);
        return view;
    }

    @Override // android.view.LayoutInflater
    public final void setFactory(LayoutInflater.Factory factory) {
        if (!(factory instanceof k8)) {
            super.setFactory(new k8(factory, this.b));
        } else {
            super.setFactory(factory);
        }
    }

    @Override // android.view.LayoutInflater
    public final void setFactory2(LayoutInflater.Factory2 factory2) {
        if (!(factory2 instanceof j8)) {
            super.setFactory2(new j8(factory2, this.b));
        } else {
            super.setFactory2(factory2);
        }
    }

    @Override // android.view.LayoutInflater
    public final View onCreateView(View view, String str, AttributeSet attributeSet) {
        View onCreateView = super.onCreateView(view, str, attributeSet);
        this.b.d(onCreateView, getContext(), attributeSet);
        return onCreateView;
    }
}
