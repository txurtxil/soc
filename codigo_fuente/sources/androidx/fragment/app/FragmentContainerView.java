package androidx.fragment.app;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.widget.FrameLayout;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class FragmentContainerView extends FrameLayout {
    public ArrayList a;
    public ArrayList b;
    public View.OnApplyWindowInsetsListener c;
    public boolean d;

    public FragmentContainerView(Context context, AttributeSet attributeSet, a aVar) {
        super(context, attributeSet);
        View view;
        z2 z2Var;
        String str;
        this.d = true;
        String classAttribute = attributeSet.getClassAttribute();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, rv.b);
        int i = 0;
        classAttribute = classAttribute == null ? obtainStyledAttributes.getString(0) : classAttribute;
        String string = obtainStyledAttributes.getString(1);
        obtainStyledAttributes.recycle();
        int id = getId();
        vf y = aVar.y(id);
        if (classAttribute != null && y == null) {
            if (id <= 0) {
                if (string != null) {
                    str = " with tag ".concat(string);
                } else {
                    str = "";
                }
                c2.g(t20.f("FragmentContainerView must have an android:id to add Fragment ", classAttribute, str));
                throw null;
            }
            cg B = aVar.B();
            context.getClassLoader();
            vf a = B.a(classAttribute);
            a.D = true;
            wf wfVar = a.t;
            if (wfVar == null) {
                z2Var = null;
            } else {
                z2Var = wfVar.j;
            }
            if (z2Var != null) {
                a.D = true;
            }
            e7 e7Var = new e7(aVar);
            e7Var.p = true;
            a.E = this;
            e7Var.e(getId(), a, string, 1);
            if (!e7Var.g) {
                e7Var.h = false;
                a aVar2 = e7Var.q;
                if (aVar2.o != null && !aVar2.B) {
                    aVar2.v(true);
                    e7Var.a(aVar2.D, aVar2.E);
                    aVar2.b = true;
                    try {
                        aVar2.N(aVar2.D, aVar2.E);
                        aVar2.d();
                        aVar2.Y();
                        if (aVar2.C) {
                            aVar2.C = false;
                            aVar2.X();
                        }
                        ((HashMap) aVar2.c.b).values().removeAll(Collections.singleton(null));
                    } catch (Throwable th) {
                        aVar2.d();
                        throw th;
                    }
                }
            } else {
                c2.g("This transaction is already being added to the back stack");
                throw null;
            }
        }
        ArrayList n = aVar.c.n();
        int size = n.size();
        while (i < size) {
            Object obj = n.get(i);
            i++;
            b bVar = (b) obj;
            vf vfVar = bVar.c;
            if (vfVar.x == getId() && (view = vfVar.F) != null && view.getParent() == null) {
                vfVar.E = this;
                bVar.b();
            }
        }
    }

    public final void a(View view) {
        ArrayList arrayList = this.b;
        if (arrayList != null && arrayList.contains(view)) {
            if (this.a == null) {
                this.a = new ArrayList();
            }
            this.a.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        vf vfVar;
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if (tag instanceof vf) {
            vfVar = (vf) tag;
        } else {
            vfVar = null;
        }
        if (vfVar != null) {
            super.addView(view, i, layoutParams);
        } else {
            c2.d(view, " is not associated with a Fragment.", "Views added to a FragmentContainerView must be associated with a Fragment. View ");
        }
    }

    @Override // android.view.ViewGroup
    public final boolean addViewInLayout(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        vf vfVar;
        Object tag = view.getTag(R.id.fragment_container_view_tag);
        if (tag instanceof vf) {
            vfVar = (vf) tag;
        } else {
            vfVar = null;
        }
        if (vfVar != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        c2.d(view, " is not associated with a Fragment.", "Views added to a FragmentContainerView must be associated with a Fragment. View ");
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final WindowInsets dispatchApplyWindowInsets(WindowInsets windowInsets) {
        f90 f90Var;
        f90 e = f90.e(windowInsets, null);
        View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = this.c;
        if (onApplyWindowInsetsListener != null) {
            f90Var = f90.e(onApplyWindowInsetsListener.onApplyWindowInsets(this, windowInsets), null);
        } else {
            WeakHashMap weakHashMap = u70.a;
            WindowInsets d = e.d();
            if (d != null) {
                WindowInsets b = h70.b(this, d);
                if (!b.equals(d)) {
                    e = f90.e(b, this);
                }
            }
            f90Var = e;
        }
        if (!f90Var.a.i()) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                WeakHashMap weakHashMap2 = u70.a;
                WindowInsets d2 = f90Var.d();
                if (d2 != null) {
                    WindowInsets a = h70.a(childAt, d2);
                    if (!a.equals(d2)) {
                        f90.e(a, childAt);
                    }
                }
            }
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        if (this.d && this.a != null) {
            for (int i = 0; i < this.a.size(); i++) {
                super.drawChild(canvas, (View) this.a.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        ArrayList arrayList;
        if (this.d && (arrayList = this.a) != null && arrayList.size() > 0 && this.a.contains(view)) {
            return false;
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup
    public final void endViewTransition(View view) {
        ArrayList arrayList = this.b;
        if (arrayList != null) {
            arrayList.remove(view);
            ArrayList arrayList2 = this.a;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.d = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public final WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public final void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        if (z) {
            a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViewAt(int i) {
        a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public final void removeViewInLayout(View view) {
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public final void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public final void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    public void setDrawDisappearingViewsLast(boolean z) {
        this.d = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        throw new UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
    }

    @Override // android.view.View
    public void setOnApplyWindowInsetsListener(View.OnApplyWindowInsetsListener onApplyWindowInsetsListener) {
        this.c = onApplyWindowInsetsListener;
    }

    @Override // android.view.ViewGroup
    public final void startViewTransition(View view) {
        if (view.getParent() == this) {
            if (this.b == null) {
                this.b = new ArrayList();
            }
            this.b.add(view);
        }
        super.startViewTransition(view);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public FragmentContainerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String str;
        this.d = true;
        if (attributeSet != null) {
            String classAttribute = attributeSet.getClassAttribute();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, rv.b);
            if (classAttribute == null) {
                classAttribute = obtainStyledAttributes.getString(0);
                str = "android:name";
            } else {
                str = "class";
            }
            obtainStyledAttributes.recycle();
            if (classAttribute == null || isInEditMode()) {
                return;
            }
            throw new UnsupportedOperationException("FragmentContainerView must be within a FragmentActivity to use " + str + "=\"" + classAttribute + "\"");
        }
    }

    public FragmentContainerView(Context context) {
        super(context);
        this.d = true;
    }
}
