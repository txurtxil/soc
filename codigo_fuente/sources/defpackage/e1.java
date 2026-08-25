package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.widget.ActionMenuView;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
/* renamed from: e1  reason: default package */
/* loaded from: classes.dex */
public final class e1 implements lp {
    public final Context a;
    public Context b;
    public so c;
    public final LayoutInflater d;
    public kp e;
    public np h;
    public d1 i;
    public Drawable j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public int q;
    public boolean r;
    public a1 t;
    public a1 u;
    public c1 v;
    public b1 w;
    public final int f = R.layout.abc_action_menu_layout;
    public final int g = R.layout.abc_action_menu_item_layout;
    public final SparseBooleanArray s = new SparseBooleanArray();
    public final c9 x = new c9(2, this);

    public e1(Context context) {
        this.a = context;
        this.d = LayoutInflater.from(context);
    }

    @Override // defpackage.lp
    public final void a(so soVar, boolean z) {
        d();
        a1 a1Var = this.u;
        if (a1Var != null && a1Var.b()) {
            a1Var.i.dismiss();
        }
        kp kpVar = this.e;
        if (kpVar != null) {
            kpVar.a(soVar, z);
        }
    }

    public final View b(wo woVar, View view, ViewGroup viewGroup) {
        mp mpVar;
        View actionView = woVar.getActionView();
        int i = 0;
        if (actionView == null || woVar.e()) {
            if (view instanceof mp) {
                mpVar = (mp) view;
            } else {
                mpVar = (mp) this.d.inflate(this.g, viewGroup, false);
            }
            mpVar.a(woVar);
            ActionMenuItemView actionMenuItemView = (ActionMenuItemView) mpVar;
            actionMenuItemView.setItemInvoker((ActionMenuView) this.h);
            if (this.w == null) {
                this.w = new b1(this);
            }
            actionMenuItemView.setPopupCallback(this.w);
            actionView = (View) mpVar;
        }
        if (woVar.C) {
            i = 8;
        }
        actionView.setVisibility(i);
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        ((ActionMenuView) viewGroup).getClass();
        if (!(layoutParams instanceof g1)) {
            actionView.setLayoutParams(ActionMenuView.j(layoutParams));
        }
        return actionView;
    }

    @Override // defpackage.lp
    public final boolean c(wo woVar) {
        return false;
    }

    public final boolean d() {
        np npVar;
        c1 c1Var = this.v;
        if (c1Var != null && (npVar = this.h) != null) {
            ((View) npVar).removeCallbacks(c1Var);
            this.v = null;
            return true;
        }
        a1 a1Var = this.t;
        if (a1Var != null) {
            if (a1Var.b()) {
                a1Var.i.dismiss();
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.lp
    public final void e(kp kpVar) {
        throw null;
    }

    @Override // defpackage.lp
    public final boolean f(wo woVar) {
        return false;
    }

    @Override // defpackage.lp
    public final void g() {
        int i;
        wo woVar;
        ViewGroup viewGroup = (ViewGroup) this.h;
        ArrayList arrayList = null;
        boolean z = false;
        if (viewGroup != null) {
            so soVar = this.c;
            if (soVar != null) {
                soVar.i();
                ArrayList l = this.c.l();
                int size = l.size();
                i = 0;
                for (int i2 = 0; i2 < size; i2++) {
                    wo woVar2 = (wo) l.get(i2);
                    if ((woVar2.x & 32) == 32) {
                        View childAt = viewGroup.getChildAt(i);
                        if (childAt instanceof mp) {
                            woVar = ((mp) childAt).getItemData();
                        } else {
                            woVar = null;
                        }
                        View b = b(woVar2, childAt, viewGroup);
                        if (woVar2 != woVar) {
                            b.setPressed(false);
                            b.jumpDrawablesToCurrentState();
                        }
                        if (b != childAt) {
                            ViewGroup viewGroup2 = (ViewGroup) b.getParent();
                            if (viewGroup2 != null) {
                                viewGroup2.removeView(b);
                            }
                            ((ViewGroup) this.h).addView(b, i);
                        }
                        i++;
                    }
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) == this.i) {
                    i++;
                } else {
                    viewGroup.removeViewAt(i);
                }
            }
        }
        ((View) this.h).requestLayout();
        so soVar2 = this.c;
        if (soVar2 != null) {
            soVar2.i();
            ArrayList arrayList2 = soVar2.i;
            int size2 = arrayList2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                xo xoVar = ((wo) arrayList2.get(i3)).A;
            }
        }
        so soVar3 = this.c;
        if (soVar3 != null) {
            soVar3.i();
            arrayList = soVar3.j;
        }
        if (this.l && arrayList != null) {
            int size3 = arrayList.size();
            if (size3 == 1) {
                z = !((wo) arrayList.get(0)).C;
            } else if (size3 > 0) {
                z = true;
            }
        }
        d1 d1Var = this.i;
        if (z) {
            if (d1Var == null) {
                this.i = new d1(this, this.a);
            }
            ViewGroup viewGroup3 = (ViewGroup) this.i.getParent();
            if (viewGroup3 != this.h) {
                if (viewGroup3 != null) {
                    viewGroup3.removeView(this.i);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.h;
                d1 d1Var2 = this.i;
                actionMenuView.getClass();
                g1 i4 = ActionMenuView.i();
                i4.a = true;
                actionMenuView.addView(d1Var2, i4);
            }
        } else if (d1Var != null) {
            ViewParent parent = d1Var.getParent();
            np npVar = this.h;
            if (parent == npVar) {
                ((ViewGroup) npVar).removeView(this.i);
            }
        }
        ((ActionMenuView) this.h).setOverflowReserved(this.l);
    }

    public final boolean h() {
        a1 a1Var = this.t;
        if (a1Var != null && a1Var.b()) {
            return true;
        }
        return false;
    }

    @Override // defpackage.lp
    public final void i(Context context, so soVar) {
        this.b = context;
        LayoutInflater.from(context);
        this.c = soVar;
        Resources resources = context.getResources();
        if (!this.m) {
            this.l = true;
        }
        int i = 2;
        this.n = context.getResources().getDisplayMetrics().widthPixels / 2;
        Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp <= 600 && i2 <= 600 && ((i2 <= 960 || i3 <= 720) && (i2 <= 720 || i3 <= 960))) {
            if (i2 < 500 && ((i2 <= 640 || i3 <= 480) && (i2 <= 480 || i3 <= 640))) {
                if (i2 >= 360) {
                    i = 3;
                }
            } else {
                i = 4;
            }
        } else {
            i = 5;
        }
        this.q = i;
        int i4 = this.n;
        if (this.l) {
            if (this.i == null) {
                d1 d1Var = new d1(this, this.a);
                this.i = d1Var;
                if (this.k) {
                    d1Var.setImageDrawable(this.j);
                    this.j = null;
                    this.k = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.i.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i4 -= this.i.getMeasuredWidth();
        } else {
            this.i = null;
        }
        this.o = i4;
        float f = resources.getDisplayMetrics().density;
    }

    @Override // defpackage.lp
    public final boolean j(j30 j30Var) {
        boolean z;
        if (j30Var.hasVisibleItems()) {
            j30 j30Var2 = j30Var;
            while (true) {
                so soVar = j30Var2.z;
                if (soVar == this.c) {
                    break;
                }
                j30Var2 = (j30) soVar;
            }
            wo woVar = j30Var2.A;
            ViewGroup viewGroup = (ViewGroup) this.h;
            View view = null;
            if (viewGroup != null) {
                int childCount = viewGroup.getChildCount();
                int i = 0;
                while (true) {
                    if (i >= childCount) {
                        break;
                    }
                    View childAt = viewGroup.getChildAt(i);
                    if ((childAt instanceof mp) && ((mp) childAt).getItemData() == woVar) {
                        view = childAt;
                        break;
                    }
                    i++;
                }
            }
            if (view != null) {
                j30Var.A.getClass();
                int size = j30Var.f.size();
                int i2 = 0;
                while (true) {
                    if (i2 < size) {
                        MenuItem item = j30Var.getItem(i2);
                        if (item.isVisible() && item.getIcon() != null) {
                            z = true;
                            break;
                        }
                        i2++;
                    } else {
                        z = false;
                        break;
                    }
                }
                a1 a1Var = new a1(this, this.b, j30Var, view);
                this.u = a1Var;
                a1Var.g = z;
                bp bpVar = a1Var.i;
                if (bpVar != null) {
                    bpVar.o(z);
                }
                a1 a1Var2 = this.u;
                if (!a1Var2.b()) {
                    if (a1Var2.e != null) {
                        a1Var2.d(0, 0, false, false);
                    } else {
                        c2.g("MenuPopupHelper cannot be used without an anchor");
                        return false;
                    }
                }
                kp kpVar = this.e;
                if (kpVar != null) {
                    kpVar.q(j30Var);
                }
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.lp
    public final boolean k() {
        int i;
        ArrayList arrayList;
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        e1 e1Var = this;
        so soVar = e1Var.c;
        if (soVar != null) {
            arrayList = soVar.l();
            i = arrayList.size();
        } else {
            i = 0;
            arrayList = null;
        }
        int i3 = e1Var.q;
        int i4 = e1Var.o;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) e1Var.h;
        int i5 = 0;
        boolean z5 = false;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            i2 = 2;
            z = true;
            if (i5 >= i) {
                break;
            }
            wo woVar = (wo) arrayList.get(i5);
            int i8 = woVar.y;
            if ((i8 & 2) == 2) {
                i6++;
            } else if ((i8 & 1) == 1) {
                i7++;
            } else {
                z5 = true;
            }
            if (e1Var.r && woVar.C) {
                i3 = 0;
            }
            i5++;
        }
        if (e1Var.l && (z5 || i7 + i6 > i3)) {
            i3--;
        }
        int i9 = i3 - i6;
        SparseBooleanArray sparseBooleanArray = e1Var.s;
        sparseBooleanArray.clear();
        int i10 = 0;
        int i11 = 0;
        while (i10 < i) {
            wo woVar2 = (wo) arrayList.get(i10);
            int i12 = woVar2.y;
            if ((i12 & 2) == i2) {
                z2 = z;
            } else {
                z2 = false;
            }
            int i13 = woVar2.b;
            if (z2) {
                View b = e1Var.b(woVar2, null, viewGroup);
                b.measure(makeMeasureSpec, makeMeasureSpec);
                int measuredWidth = b.getMeasuredWidth();
                i4 -= measuredWidth;
                if (i11 == 0) {
                    i11 = measuredWidth;
                }
                if (i13 != 0) {
                    sparseBooleanArray.put(i13, z);
                }
                woVar2.f(z);
            } else if ((i12 & 1) == z) {
                boolean z6 = sparseBooleanArray.get(i13);
                if ((i9 > 0 || z6) && i4 > 0) {
                    z3 = z;
                } else {
                    z3 = false;
                }
                if (z3) {
                    View b2 = e1Var.b(woVar2, null, viewGroup);
                    b2.measure(makeMeasureSpec, makeMeasureSpec);
                    int measuredWidth2 = b2.getMeasuredWidth();
                    i4 -= measuredWidth2;
                    if (i11 == 0) {
                        i11 = measuredWidth2;
                    }
                    if (i4 + i11 > 0) {
                        z4 = true;
                    } else {
                        z4 = false;
                    }
                    z3 &= z4;
                }
                if (z3 && i13 != 0) {
                    sparseBooleanArray.put(i13, true);
                } else if (z6) {
                    sparseBooleanArray.put(i13, false);
                    for (int i14 = 0; i14 < i10; i14++) {
                        wo woVar3 = (wo) arrayList.get(i14);
                        if (woVar3.b == i13) {
                            if ((woVar3.x & 32) == 32) {
                                i9++;
                            }
                            woVar3.f(false);
                        }
                    }
                }
                if (z3) {
                    i9--;
                }
                woVar2.f(z3);
            } else {
                woVar2.f(false);
                i10++;
                i2 = 2;
                e1Var = this;
                z = true;
            }
            i10++;
            i2 = 2;
            e1Var = this;
            z = true;
        }
        return z;
    }

    public final boolean l() {
        so soVar;
        if (this.l && !h() && (soVar = this.c) != null && this.h != null && this.v == null) {
            soVar.i();
            if (!soVar.j.isEmpty()) {
                c1 c1Var = new c1(this, 0, new a1(this, this.b, this.c, this.i));
                this.v = c1Var;
                ((View) this.h).post(c1Var);
                return true;
            }
        }
        return false;
    }
}
