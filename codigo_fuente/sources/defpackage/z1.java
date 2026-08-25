package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* renamed from: z1  reason: default package */
/* loaded from: classes.dex */
public final class z1 {
    public int a;
    public final Object b;
    public final Object c;
    public Object d;
    public Object e;
    public Object f;

    public z1(cw cwVar) {
        this.b = new n2(30);
        this.c = new ArrayList();
        this.d = new ArrayList();
        this.a = 0;
        this.e = cwVar;
        this.f = new c9(23, this);
    }

    public void a() {
        View view = (View) this.b;
        Drawable background = view.getBackground();
        if (background != null) {
            if (((p40) this.d) != null) {
                if (((p40) this.f) == null) {
                    this.f = new Object();
                }
                p40 p40Var = (p40) this.f;
                p40Var.a = null;
                p40Var.d = false;
                p40Var.b = null;
                p40Var.c = false;
                WeakHashMap weakHashMap = u70.a;
                ColorStateList g = j70.g(view);
                if (g != null) {
                    p40Var.d = true;
                    p40Var.a = g;
                }
                PorterDuff.Mode h = j70.h(view);
                if (h != null) {
                    p40Var.c = true;
                    p40Var.b = h;
                }
                if (p40Var.d || p40Var.c) {
                    z3.d(background, p40Var, view.getDrawableState());
                    return;
                }
            }
            p40 p40Var2 = (p40) this.e;
            if (p40Var2 != null) {
                z3.d(background, p40Var2, view.getDrawableState());
                return;
            }
            p40 p40Var3 = (p40) this.d;
            if (p40Var3 != null) {
                z3.d(background, p40Var3, view.getDrawableState());
            }
        }
    }

    public boolean b(int i) {
        ArrayList arrayList = (ArrayList) this.d;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            y1 y1Var = (y1) arrayList.get(i2);
            int i3 = y1Var.a;
            if (i3 == 8) {
                if (g(y1Var.d, i2 + 1) == i) {
                    return true;
                }
            } else {
                if (i3 == 1) {
                    int i4 = y1Var.b;
                    int i5 = y1Var.d + i4;
                    while (i4 < i5) {
                        if (g(i4, i2 + 1) == i) {
                            return true;
                        }
                        i4++;
                    }
                    continue;
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    public void c() {
        ArrayList arrayList = (ArrayList) this.d;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((cw) this.e).a((y1) arrayList.get(i));
        }
        q(arrayList);
        this.a = 0;
    }

    public void d() {
        cw cwVar = (cw) this.e;
        c();
        ArrayList arrayList = (ArrayList) this.c;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            y1 y1Var = (y1) arrayList.get(i);
            int i2 = y1Var.a;
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 4) {
                        if (i2 == 8) {
                            cwVar.a(y1Var);
                            cwVar.e(y1Var.b, y1Var.d);
                        }
                    } else {
                        cwVar.a(y1Var);
                        cwVar.c(y1Var.b, y1Var.d, y1Var.c);
                    }
                } else {
                    cwVar.a(y1Var);
                    int i3 = y1Var.b;
                    int i4 = y1Var.d;
                    RecyclerView recyclerView = cwVar.a;
                    recyclerView.L(i3, i4, true);
                    recyclerView.h0 = true;
                    recyclerView.e0.b += i4;
                }
            } else {
                cwVar.a(y1Var);
                cwVar.d(y1Var.b, y1Var.d);
            }
        }
        q(arrayList);
        this.a = 0;
    }

    public void e(y1 y1Var) {
        int i;
        n2 n2Var = (n2) this.b;
        int i2 = y1Var.a;
        if (i2 != 1 && i2 != 8) {
            int u = u(y1Var.b, i2);
            int i3 = y1Var.b;
            int i4 = y1Var.a;
            if (i4 != 2) {
                if (i4 == 4) {
                    i = 1;
                } else {
                    c2.m(y1Var, "op should be remove or update.");
                    return;
                }
            } else {
                i = 0;
            }
            int i5 = 1;
            for (int i6 = 1; i6 < y1Var.d; i6++) {
                int u2 = u((i * i6) + y1Var.b, y1Var.a);
                int i7 = y1Var.a;
                if (i7 == 2 ? u2 == u : !(i7 != 4 || u2 != u + 1)) {
                    i5++;
                } else {
                    y1 l = l(y1Var.c, i7, u, i5);
                    f(l, i3);
                    l.c = null;
                    n2Var.c(l);
                    if (y1Var.a == 4) {
                        i3 += i5;
                    }
                    i5 = 1;
                    u = u2;
                }
            }
            Object obj = y1Var.c;
            y1Var.c = null;
            n2Var.c(y1Var);
            if (i5 > 0) {
                y1 l2 = l(obj, y1Var.a, u, i5);
                f(l2, i3);
                l2.c = null;
                n2Var.c(l2);
                return;
            }
            return;
        }
        c2.n("should not dispatch add or move for pre layout");
    }

    public void f(y1 y1Var, int i) {
        cw cwVar = (cw) this.e;
        cwVar.a(y1Var);
        int i2 = y1Var.a;
        if (i2 != 2) {
            if (i2 == 4) {
                cwVar.c(i, y1Var.d, y1Var.c);
                return;
            } else {
                c2.n("only remove and update ops can be dispatched in first pass");
                return;
            }
        }
        int i3 = y1Var.d;
        RecyclerView recyclerView = cwVar.a;
        recyclerView.L(i, i3, true);
        recyclerView.h0 = true;
        recyclerView.e0.b += i3;
    }

    public int g(int i, int i2) {
        ArrayList arrayList = (ArrayList) this.d;
        int size = arrayList.size();
        while (i2 < size) {
            y1 y1Var = (y1) arrayList.get(i2);
            int i3 = y1Var.a;
            int i4 = y1Var.b;
            if (i3 == 8) {
                if (i4 == i) {
                    i = y1Var.d;
                } else {
                    if (i4 < i) {
                        i--;
                    }
                    if (y1Var.d <= i) {
                        i++;
                    }
                }
            } else if (i4 > i) {
                continue;
            } else if (i3 == 2) {
                int i5 = y1Var.d;
                if (i < i4 + i5) {
                    return -1;
                }
                i -= i5;
            } else if (i3 == 1) {
                i += y1Var.d;
            }
            i2++;
        }
        return i;
    }

    public ColorStateList h() {
        p40 p40Var = (p40) this.e;
        if (p40Var != null) {
            return p40Var.a;
        }
        return null;
    }

    public PorterDuff.Mode i() {
        p40 p40Var = (p40) this.e;
        if (p40Var != null) {
            return p40Var.b;
        }
        return null;
    }

    public boolean j() {
        if (((ArrayList) this.c).size() > 0) {
            return true;
        }
        return false;
    }

    public void k(AttributeSet attributeSet, int i) {
        ColorStateList g;
        View view = (View) this.b;
        Context context = view.getContext();
        int[] iArr = vv.A;
        v5 C = v5.C(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) C.b;
        View view2 = (View) this.b;
        u70.g(view2, view2.getContext(), iArr, attributeSet, (TypedArray) C.b, i);
        try {
            if (typedArray.hasValue(0)) {
                this.a = typedArray.getResourceId(0, -1);
                z3 z3Var = (z3) this.c;
                Context context2 = view.getContext();
                int i2 = this.a;
                synchronized (z3Var) {
                    g = z3Var.a.g(context2, i2);
                }
                if (g != null) {
                    r(g);
                }
            }
            if (typedArray.hasValue(1)) {
                j70.q(view, C.q(1));
            }
            if (typedArray.hasValue(2)) {
                j70.r(view, xc.c(typedArray.getInt(2, -1), null));
            }
            C.E();
        } catch (Throwable th) {
            C.E();
            throw th;
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [y1, java.lang.Object] */
    public y1 l(Object obj, int i, int i2, int i3) {
        y1 y1Var = (y1) ((n2) this.b).a();
        if (y1Var == null) {
            ?? obj2 = new Object();
            obj2.a = i;
            obj2.b = i2;
            obj2.d = i3;
            obj2.c = obj;
            return obj2;
        }
        y1Var.a = i;
        y1Var.b = i2;
        y1Var.d = i3;
        y1Var.c = obj;
        return y1Var;
    }

    public void m() {
        this.a = -1;
        r(null);
        a();
    }

    public void n(int i) {
        ColorStateList colorStateList;
        this.a = i;
        z3 z3Var = (z3) this.c;
        if (z3Var != null) {
            Context context = ((View) this.b).getContext();
            synchronized (z3Var) {
                colorStateList = z3Var.a.g(context, i);
            }
        } else {
            colorStateList = null;
        }
        r(colorStateList);
        a();
    }

    public void o(y1 y1Var) {
        cw cwVar = (cw) this.e;
        ((ArrayList) this.d).add(y1Var);
        int i = y1Var.a;
        if (i != 1) {
            if (i != 2) {
                if (i != 4) {
                    if (i == 8) {
                        cwVar.e(y1Var.b, y1Var.d);
                        return;
                    } else {
                        c2.m(y1Var, "Unknown update op type for ");
                        return;
                    }
                }
                cwVar.c(y1Var.b, y1Var.d, y1Var.c);
                return;
            }
            int i2 = y1Var.b;
            int i3 = y1Var.d;
            RecyclerView recyclerView = cwVar.a;
            recyclerView.L(i2, i3, false);
            recyclerView.h0 = true;
            return;
        }
        cwVar.d(y1Var.b, y1Var.d);
    }

    /* JADX WARN: Removed duplicated region for block: B:186:0x00b1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:188:0x0132 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:191:0x0125 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0015 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ac  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void p() {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.z1.p():void");
    }

    public void q(ArrayList arrayList) {
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            y1 y1Var = (y1) arrayList.get(i);
            y1Var.c = null;
            ((n2) this.b).c(y1Var);
        }
        arrayList.clear();
    }

    public void r(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (((p40) this.d) == null) {
                this.d = new Object();
            }
            p40 p40Var = (p40) this.d;
            p40Var.a = colorStateList;
            p40Var.d = true;
        } else {
            this.d = null;
        }
        a();
    }

    public void s(ColorStateList colorStateList) {
        if (((p40) this.e) == null) {
            this.e = new Object();
        }
        p40 p40Var = (p40) this.e;
        p40Var.a = colorStateList;
        p40Var.d = true;
        a();
    }

    public void t(PorterDuff.Mode mode) {
        if (((p40) this.e) == null) {
            this.e = new Object();
        }
        p40 p40Var = (p40) this.e;
        p40Var.b = mode;
        p40Var.c = true;
        a();
    }

    public int u(int i, int i2) {
        int i3;
        int i4;
        n2 n2Var = (n2) this.b;
        ArrayList arrayList = (ArrayList) this.d;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            y1 y1Var = (y1) arrayList.get(size);
            int i5 = y1Var.a;
            int i6 = y1Var.b;
            if (i5 == 8) {
                int i7 = y1Var.d;
                if (i6 < i7) {
                    i4 = i7;
                    i3 = i6;
                } else {
                    i3 = i7;
                    i4 = i6;
                }
                if (i >= i3 && i <= i4) {
                    if (i3 == i6) {
                        if (i2 == 1) {
                            y1Var.d = i7 + 1;
                        } else if (i2 == 2) {
                            y1Var.d = i7 - 1;
                        }
                        i++;
                    } else {
                        if (i2 == 1) {
                            y1Var.b = i6 + 1;
                        } else if (i2 == 2) {
                            y1Var.b = i6 - 1;
                        }
                        i--;
                    }
                } else if (i < i6) {
                    if (i2 == 1) {
                        y1Var.b = i6 + 1;
                        y1Var.d = i7 + 1;
                    } else if (i2 == 2) {
                        y1Var.b = i6 - 1;
                        y1Var.d = i7 - 1;
                    }
                }
            } else if (i6 <= i) {
                if (i5 == 1) {
                    i -= y1Var.d;
                } else if (i5 == 2) {
                    i += y1Var.d;
                }
            } else if (i2 == 1) {
                y1Var.b = i6 + 1;
            } else if (i2 == 2) {
                y1Var.b = i6 - 1;
            }
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            y1 y1Var2 = (y1) arrayList.get(size2);
            int i8 = y1Var2.a;
            int i9 = y1Var2.d;
            if (i8 == 8) {
                if (i9 == y1Var2.b || i9 < 0) {
                    arrayList.remove(size2);
                    y1Var2.c = null;
                    n2Var.c(y1Var2);
                }
            } else if (i9 <= 0) {
                arrayList.remove(size2);
                y1Var2.c = null;
                n2Var.c(y1Var2);
            }
        }
        return i;
    }

    public z1(View view) {
        this.a = -1;
        this.b = view;
        this.c = z3.a();
    }
}
