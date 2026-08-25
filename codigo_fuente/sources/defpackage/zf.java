package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentContainerView;
import androidx.fragment.app.a;
import androidx.fragment.app.b;
/* renamed from: zf  reason: default package */
/* loaded from: classes.dex */
public final class zf implements LayoutInflater.Factory2 {
    public final a a;

    public zf(a aVar) {
        this.a = aVar;
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z;
        vf vfVar;
        z2 z2Var;
        b f;
        int i;
        z2 z2Var2;
        boolean equals = FragmentContainerView.class.getName().equals(str);
        a aVar = this.a;
        if (equals) {
            return new FragmentContainerView(context, attributeSet, aVar);
        }
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, rv.a);
            int i2 = 0;
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(0);
            }
            int resourceId = obtainStyledAttributes.getResourceId(1, -1);
            String string = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            if (attributeValue != null) {
                try {
                    z = vf.class.isAssignableFrom(cg.b(context.getClassLoader(), attributeValue));
                } catch (ClassNotFoundException unused) {
                    z = false;
                }
                if (z) {
                    if (view != null) {
                        i2 = view.getId();
                    }
                    if (i2 == -1 && resourceId == -1 && string == null) {
                        throw new IllegalArgumentException(attributeSet.getPositionDescription() + ": Must specify unique android:id, android:tag, or have a parent with an id for " + attributeValue);
                    }
                    if (resourceId != -1) {
                        vfVar = aVar.y(resourceId);
                    } else {
                        vfVar = null;
                    }
                    if (vfVar == null && string != null) {
                        vfVar = aVar.z(string);
                    }
                    if (vfVar == null && i2 != -1) {
                        vfVar = aVar.y(i2);
                    }
                    if (vfVar == null) {
                        cg B = aVar.B();
                        context.getClassLoader();
                        vfVar = B.a(attributeValue);
                        vfVar.m = true;
                        if (resourceId != 0) {
                            i = resourceId;
                        } else {
                            i = i2;
                        }
                        vfVar.w = i;
                        vfVar.x = i2;
                        vfVar.y = string;
                        vfVar.n = true;
                        vfVar.s = aVar;
                        wf wfVar = aVar.o;
                        vfVar.t = wfVar;
                        z2 z2Var3 = wfVar.k;
                        vfVar.D = true;
                        if (wfVar == null) {
                            z2Var2 = null;
                        } else {
                            z2Var2 = wfVar.j;
                        }
                        if (z2Var2 != null) {
                            vfVar.D = true;
                        }
                        f = aVar.a(vfVar);
                        if (a.E(2)) {
                            Log.v("FragmentManager", "Fragment " + vfVar + " has been inflated via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else if (!vfVar.n) {
                        vfVar.n = true;
                        vfVar.s = aVar;
                        wf wfVar2 = aVar.o;
                        vfVar.t = wfVar2;
                        z2 z2Var4 = wfVar2.k;
                        vfVar.D = true;
                        if (wfVar2 == null) {
                            z2Var = null;
                        } else {
                            z2Var = wfVar2.j;
                        }
                        if (z2Var != null) {
                            vfVar.D = true;
                        }
                        f = aVar.f(vfVar);
                        if (a.E(2)) {
                            Log.v("FragmentManager", "Retained Fragment " + vfVar + " has been re-attached via the <fragment> tag: id=0x" + Integer.toHexString(resourceId));
                        }
                    } else {
                        c2.b(attributeSet.getPositionDescription(), Integer.toHexString(resourceId), string, Integer.toHexString(i2), attributeValue);
                    }
                    vfVar.E = (ViewGroup) view;
                    f.k();
                    f.j();
                    View view2 = vfVar.F;
                    if (view2 != null) {
                        if (resourceId != 0) {
                            view2.setId(resourceId);
                        }
                        if (vfVar.F.getTag() == null) {
                            vfVar.F.setTag(string);
                        }
                        vfVar.F.addOnAttachStateChangeListener(new yf(this, f));
                        return vfVar.F;
                    }
                    c2.g(t20.f("Fragment ", attributeValue, " did not create a view."));
                    return null;
                }
            }
        }
        return null;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
