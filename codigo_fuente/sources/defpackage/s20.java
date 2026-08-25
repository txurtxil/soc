package defpackage;

import android.util.Log;
import android.view.View;
import androidx.fragment.app.a;
import androidx.fragment.app.b;
import java.util.ArrayList;
import java.util.HashSet;
/* renamed from: s20  reason: default package */
/* loaded from: classes.dex */
public final class s20 {
    public int a;
    public int b;
    public final vf c;
    public final ArrayList d;
    public final HashSet e;
    public boolean f;
    public boolean g;
    public final b h;

    public s20(int i, int i2, b bVar, r8 r8Var) {
        vf vfVar = bVar.c;
        this.d = new ArrayList();
        this.e = new HashSet();
        this.f = false;
        this.g = false;
        this.a = i;
        this.b = i2;
        this.c = vfVar;
        r8Var.a(new c9(27, this));
        this.h = bVar;
    }

    public final void a() {
        HashSet hashSet = this.e;
        if (!this.f) {
            this.f = true;
            if (hashSet.isEmpty()) {
                b();
                return;
            }
            ArrayList arrayList = new ArrayList(hashSet);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                r8 r8Var = (r8) obj;
                synchronized (r8Var) {
                    try {
                        if (!r8Var.a) {
                            r8Var.a = true;
                            r8Var.c = true;
                            q8 q8Var = r8Var.b;
                            if (q8Var != null) {
                                try {
                                    q8Var.onCancel();
                                } catch (Throwable th) {
                                    synchronized (r8Var) {
                                        r8Var.c = false;
                                        r8Var.notifyAll();
                                        throw th;
                                    }
                                }
                            }
                            synchronized (r8Var) {
                                r8Var.c = false;
                                r8Var.notifyAll();
                            }
                        }
                    } finally {
                    }
                }
            }
        }
    }

    public final void b() {
        if (!this.g) {
            if (a.E(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.g = true;
            ArrayList arrayList = this.d;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Runnable) obj).run();
            }
        }
        this.h.k();
    }

    public final void c(int i, int i2) {
        int h = t20.h(i2);
        vf vfVar = this.c;
        if (h != 0) {
            if (h != 1) {
                if (h == 2) {
                    if (a.E(2)) {
                        Log.v("FragmentManager", "SpecialEffectsController: For fragment " + vfVar + " mFinalState = " + t20.j(this.a) + " -> REMOVED. mLifecycleImpact  = " + t20.i(this.b) + " to REMOVING.");
                    }
                    this.a = 1;
                    this.b = 3;
                }
            } else if (this.a == 1) {
                if (a.E(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: For fragment " + vfVar + " mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = " + t20.i(this.b) + " to ADDING.");
                }
                this.a = 2;
                this.b = 2;
            }
        } else if (this.a != 1) {
            if (a.E(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: For fragment " + vfVar + " mFinalState = " + t20.j(this.a) + " -> " + t20.j(i) + ". ");
            }
            this.a = i;
        }
    }

    public final void d() {
        float f;
        if (this.b == 2) {
            b bVar = this.h;
            vf vfVar = bVar.c;
            View findFocus = vfVar.F.findFocus();
            if (findFocus != null) {
                vfVar.d().k = findFocus;
                if (a.E(2)) {
                    Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + vfVar);
                }
            }
            View H = this.c.H();
            if (H.getParent() == null) {
                bVar.b();
                H.setAlpha(0.0f);
            }
            if (H.getAlpha() == 0.0f && H.getVisibility() == 0) {
                H.setVisibility(4);
            }
            tf tfVar = vfVar.I;
            if (tfVar == null) {
                f = 1.0f;
            } else {
                f = tfVar.j;
            }
            H.setAlpha(f);
        }
    }

    public final String toString() {
        return "Operation {" + Integer.toHexString(System.identityHashCode(this)) + "} {mFinalState = " + t20.j(this.a) + "} {mLifecycleImpact = " + t20.i(this.b) + "} {mFragment = " + this.c + "}";
    }
}
