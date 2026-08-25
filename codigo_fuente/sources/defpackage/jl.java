package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import androidx.car.app.model.Alert;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* renamed from: jl  reason: default package */
/* loaded from: classes.dex */
public class jl implements g20 {
    public static final Method B;
    public static final Method C;
    public final h4 A;
    public final Context a;
    public ListAdapter b;
    public dd c;
    public int f;
    public int g;
    public boolean i;
    public boolean j;
    public boolean k;
    public kb n;
    public View o;
    public AdapterView.OnItemClickListener q;
    public AdapterView.OnItemSelectedListener r;
    public final Handler w;
    public Rect y;
    public boolean z;
    public final int d = -2;
    public int e = -2;
    public final int h = 1002;
    public int l = 0;
    public final int m = Alert.DURATION_SHOW_INDEFINITELY;
    public final gl s = new gl(this, 1);
    public final il t = new il(this);
    public final hl u = new hl(this);
    public final gl v = new gl(this, 0);
    public final Rect x = new Rect();

    static {
        if (Build.VERSION.SDK_INT <= 28) {
            try {
                B = PopupWindow.class.getDeclaredMethod("setClipToScreenEnabled", Boolean.TYPE);
            } catch (NoSuchMethodException unused) {
                Log.i("ListPopupWindow", "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well.");
            }
            try {
                C = PopupWindow.class.getDeclaredMethod("setEpicenterBounds", Rect.class);
            } catch (NoSuchMethodException unused2) {
                Log.i("ListPopupWindow", "Could not find method setEpicenterBounds(Rect) on PopupWindow. Oh well.");
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [android.widget.PopupWindow, h4] */
    public jl(Context context, AttributeSet attributeSet, int i, int i2) {
        Drawable drawable;
        int resourceId;
        this.a = context;
        this.w = new Handler(context.getMainLooper());
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, vv.o, i, 0);
        this.f = obtainStyledAttributes.getDimensionPixelOffset(0, 0);
        int dimensionPixelOffset = obtainStyledAttributes.getDimensionPixelOffset(1, 0);
        this.g = dimensionPixelOffset;
        if (dimensionPixelOffset != 0) {
            this.i = true;
        }
        obtainStyledAttributes.recycle();
        ?? popupWindow = new PopupWindow(context, attributeSet, i, 0);
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, vv.s, i, 0);
        if (obtainStyledAttributes2.hasValue(2)) {
            wt.c(popupWindow, obtainStyledAttributes2.getBoolean(2, false));
        }
        if (obtainStyledAttributes2.hasValue(0) && (resourceId = obtainStyledAttributes2.getResourceId(0, 0)) != 0) {
            drawable = gn.p(context, resourceId);
        } else {
            drawable = obtainStyledAttributes2.getDrawable(0);
        }
        popupWindow.setBackgroundDrawable(drawable);
        obtainStyledAttributes2.recycle();
        this.A = popupWindow;
        popupWindow.setInputMethodMode(1);
    }

    public dd a(Context context, boolean z) {
        return new dd(context, z);
    }

    @Override // defpackage.g20
    public final boolean b() {
        return this.A.isShowing();
    }

    public final int c() {
        return this.f;
    }

    @Override // defpackage.g20
    public final void d() {
        int i;
        boolean z;
        int makeMeasureSpec;
        int i2;
        int i3;
        boolean z2;
        dd ddVar;
        int i4;
        int i5;
        dd ddVar2 = this.c;
        Context context = this.a;
        h4 h4Var = this.A;
        if (ddVar2 == null) {
            dd a = a(context, !this.z);
            this.c = a;
            a.setAdapter(this.b);
            this.c.setOnItemClickListener(this.q);
            this.c.setFocusable(true);
            this.c.setFocusableInTouchMode(true);
            this.c.setOnItemSelectedListener(new ed(1, this));
            this.c.setOnScrollListener(this.u);
            AdapterView.OnItemSelectedListener onItemSelectedListener = this.r;
            if (onItemSelectedListener != null) {
                this.c.setOnItemSelectedListener(onItemSelectedListener);
            }
            h4Var.setContentView(this.c);
        } else {
            ViewGroup viewGroup = (ViewGroup) h4Var.getContentView();
        }
        Drawable background = h4Var.getBackground();
        Rect rect = this.x;
        int i6 = 0;
        if (background != null) {
            background.getPadding(rect);
            int i7 = rect.top;
            i = rect.bottom + i7;
            if (!this.i) {
                this.g = -i7;
            }
        } else {
            rect.setEmpty();
            i = 0;
        }
        if (h4Var.getInputMethodMode() == 2) {
            z = true;
        } else {
            z = false;
        }
        int a2 = el.a(h4Var, this.o, this.g, z);
        int i8 = this.d;
        if (i8 == -1) {
            i3 = a2 + i;
        } else {
            int i9 = this.e;
            if (i9 != -2) {
                if (i9 != -1) {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
                } else {
                    makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), 1073741824);
                }
            } else {
                makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().widthPixels - (rect.left + rect.right), Integer.MIN_VALUE);
            }
            int a3 = this.c.a(makeMeasureSpec, a2);
            if (a3 > 0) {
                i2 = this.c.getPaddingBottom() + this.c.getPaddingTop() + i;
            } else {
                i2 = 0;
            }
            i3 = a3 + i2;
        }
        if (h4Var.getInputMethodMode() == 2) {
            z2 = true;
        } else {
            z2 = false;
        }
        wt.d(h4Var, this.h);
        if (h4Var.isShowing()) {
            View view = this.o;
            WeakHashMap weakHashMap = u70.a;
            if (g70.b(view)) {
                int i10 = this.e;
                if (i10 == -1) {
                    i10 = -1;
                } else if (i10 == -2) {
                    i10 = this.o.getWidth();
                }
                if (i8 == -1) {
                    if (z2) {
                        i8 = i3;
                    } else {
                        i8 = -1;
                    }
                    int i11 = this.e;
                    if (z2) {
                        if (i11 == -1) {
                            i5 = -1;
                        } else {
                            i5 = 0;
                        }
                        h4Var.setWidth(i5);
                        h4Var.setHeight(0);
                    } else {
                        if (i11 == -1) {
                            i6 = -1;
                        }
                        h4Var.setWidth(i6);
                        h4Var.setHeight(-1);
                    }
                } else if (i8 == -2) {
                    i8 = i3;
                }
                h4Var.setOutsideTouchable(true);
                int i12 = i10;
                View view2 = this.o;
                int i13 = this.f;
                int i14 = this.g;
                if (i12 < 0) {
                    i4 = -1;
                } else {
                    i4 = i12;
                }
                if (i8 < 0) {
                    i8 = -1;
                }
                h4Var.update(view2, i13, i14, i4, i8);
                return;
            }
            return;
        }
        int i15 = this.e;
        if (i15 == -1) {
            i15 = -1;
        } else if (i15 == -2) {
            i15 = this.o.getWidth();
        }
        if (i8 == -1) {
            i8 = -1;
        } else if (i8 == -2) {
            i8 = i3;
        }
        h4Var.setWidth(i15);
        h4Var.setHeight(i8);
        if (Build.VERSION.SDK_INT <= 28) {
            Method method = B;
            if (method != null) {
                try {
                    method.invoke(h4Var, Boolean.TRUE);
                } catch (Exception unused) {
                    Log.i("ListPopupWindow", "Could not call setClipToScreenEnabled() on PopupWindow. Oh well.");
                }
            }
        } else {
            fl.b(h4Var, true);
        }
        h4Var.setOutsideTouchable(true);
        h4Var.setTouchInterceptor(this.t);
        if (this.k) {
            wt.c(h4Var, this.j);
        }
        if (Build.VERSION.SDK_INT <= 28) {
            Method method2 = C;
            if (method2 != null) {
                try {
                    method2.invoke(h4Var, this.y);
                } catch (Exception e) {
                    Log.e("ListPopupWindow", "Could not invoke setEpicenterBounds on PopupWindow", e);
                }
            }
        } else {
            fl.a(h4Var, this.y);
        }
        vt.a(h4Var, this.o, this.f, this.g, this.l);
        this.c.setSelection(-1);
        if ((!this.z || this.c.isInTouchMode()) && (ddVar = this.c) != null) {
            ddVar.setListSelectionHidden(true);
            ddVar.requestLayout();
        }
        if (!this.z) {
            this.w.post(this.v);
        }
    }

    @Override // defpackage.g20
    public final void dismiss() {
        h4 h4Var = this.A;
        h4Var.dismiss();
        h4Var.setContentView(null);
        this.c = null;
        this.w.removeCallbacks(this.s);
    }

    public final Drawable e() {
        return this.A.getBackground();
    }

    @Override // defpackage.g20
    public final dd h() {
        return this.c;
    }

    public final void i(Drawable drawable) {
        this.A.setBackgroundDrawable(drawable);
    }

    public final void k(int i) {
        this.g = i;
        this.i = true;
    }

    public final void m(int i) {
        this.f = i;
    }

    public final int o() {
        if (!this.i) {
            return 0;
        }
        return this.g;
    }

    public void q(ListAdapter listAdapter) {
        kb kbVar = this.n;
        if (kbVar == null) {
            this.n = new kb(1, this);
        } else {
            ListAdapter listAdapter2 = this.b;
            if (listAdapter2 != null) {
                listAdapter2.unregisterDataSetObserver(kbVar);
            }
        }
        this.b = listAdapter;
        if (listAdapter != null) {
            listAdapter.registerDataSetObserver(this.n);
        }
        dd ddVar = this.c;
        if (ddVar != null) {
            ddVar.setAdapter(this.b);
        }
    }

    public final void r(int i) {
        Drawable background = this.A.getBackground();
        if (background != null) {
            Rect rect = this.x;
            background.getPadding(rect);
            this.e = rect.left + rect.right + i;
            return;
        }
        this.e = i;
    }
}
