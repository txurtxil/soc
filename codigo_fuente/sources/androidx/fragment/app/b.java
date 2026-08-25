package androidx.fragment.app;

import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AndroidRuntimeException;
import android.util.Log;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.UUID;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public final class b {
    public final ko a;
    public final v5 b;
    public final vf c;
    public boolean d = false;
    public int e = -1;

    public b(ko koVar, v5 v5Var, ClassLoader classLoader, cg cgVar, ng ngVar) {
        this.a = koVar;
        this.b = v5Var;
        vf a = cgVar.a(ngVar.a);
        this.c = a;
        Bundle bundle = ngVar.j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        a.J(bundle);
        a.e = ngVar.b;
        a.m = ngVar.c;
        a.o = true;
        a.w = ngVar.d;
        a.x = ngVar.e;
        a.y = ngVar.f;
        a.B = ngVar.g;
        a.l = ngVar.h;
        a.A = ngVar.i;
        a.z = ngVar.k;
        a.M = mk.values()[ngVar.l];
        Bundle bundle2 = ngVar.m;
        if (bundle2 != null) {
            a.b = bundle2;
        } else {
            a.b = new Bundle();
        }
        if (a.E(2)) {
            Log.v("FragmentManager", "Instantiated fragment " + a);
        }
    }

    public final void a() {
        boolean E = a.E(3);
        vf vfVar = this.c;
        if (E) {
            Log.d("FragmentManager", "moveto ACTIVITY_CREATED: " + vfVar);
        }
        Bundle bundle = vfVar.b;
        vfVar.u.J();
        vfVar.a = 3;
        vfVar.D = true;
        if (a.E(3)) {
            Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + vfVar);
        }
        View view = vfVar.F;
        if (view != null) {
            Bundle bundle2 = vfVar.b;
            SparseArray<Parcelable> sparseArray = vfVar.c;
            if (sparseArray != null) {
                view.restoreHierarchyState(sparseArray);
                vfVar.c = null;
            }
            if (vfVar.F != null) {
                pg pgVar = vfVar.O;
                pgVar.c.b(vfVar.d);
                vfVar.d = null;
            }
            vfVar.D = false;
            vfVar.D(bundle2);
            if (vfVar.D) {
                if (vfVar.F != null) {
                    vfVar.O.b(lk.ON_CREATE);
                }
            } else {
                throw new AndroidRuntimeException(t20.e("Fragment ", vfVar, " did not call through to super.onViewStateRestored()"));
            }
        }
        vfVar.b = null;
        ig igVar = vfVar.u;
        igVar.z = false;
        igVar.A = false;
        igVar.G.h = false;
        igVar.s(4);
        this.a.d(false);
    }

    public final void b() {
        View view;
        View view2;
        ArrayList arrayList = (ArrayList) this.b.c;
        vf vfVar = this.c;
        ViewGroup viewGroup = vfVar.E;
        int i = -1;
        if (viewGroup != null) {
            int indexOf = arrayList.indexOf(vfVar);
            int i2 = indexOf - 1;
            while (true) {
                if (i2 < 0) {
                    while (true) {
                        indexOf++;
                        if (indexOf >= arrayList.size()) {
                            break;
                        }
                        vf vfVar2 = (vf) arrayList.get(indexOf);
                        if (vfVar2.E == viewGroup && (view = vfVar2.F) != null) {
                            i = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    vf vfVar3 = (vf) arrayList.get(i2);
                    if (vfVar3.E == viewGroup && (view2 = vfVar3.F) != null) {
                        i = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i2--;
                }
            }
        }
        vfVar.E.addView(vfVar.F, i);
    }

    public final void c() {
        boolean E = a.E(3);
        vf vfVar = this.c;
        if (E) {
            Log.d("FragmentManager", "moveto ATTACHED: " + vfVar);
        }
        vf vfVar2 = vfVar.g;
        v5 v5Var = this.b;
        b bVar = null;
        if (vfVar2 != null) {
            b bVar2 = (b) ((HashMap) v5Var.b).get(vfVar2.e);
            if (bVar2 != null) {
                vfVar.h = vfVar.g.e;
                vfVar.g = null;
                bVar = bVar2;
            } else {
                StringBuilder sb = new StringBuilder("Fragment ");
                sb.append(vfVar);
                vf vfVar3 = vfVar.g;
                sb.append(" declared target fragment ");
                sb.append(vfVar3);
                sb.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(sb.toString());
            }
        } else {
            String str = vfVar.h;
            if (str != null && (bVar = (b) ((HashMap) v5Var.b).get(str)) == null) {
                StringBuilder sb2 = new StringBuilder("Fragment ");
                sb2.append(vfVar);
                String str2 = vfVar.h;
                sb2.append(" declared target fragment ");
                sb2.append(str2);
                sb2.append(" that does not belong to this FragmentManager!");
                throw new IllegalStateException(sb2.toString());
            }
        }
        if (bVar != null) {
            bVar.k();
        }
        a aVar = vfVar.s;
        vfVar.t = aVar.o;
        vfVar.v = aVar.q;
        ko koVar = this.a;
        koVar.j(false);
        ArrayList arrayList = vfVar.R;
        Iterator it = arrayList.iterator();
        if (!it.hasNext()) {
            arrayList.clear();
            vfVar.u.b(vfVar.t, vfVar.b(), vfVar);
            vfVar.a = 0;
            vfVar.D = false;
            vfVar.q(vfVar.t.k);
            if (vfVar.D) {
                Iterator it2 = vfVar.s.m.iterator();
                while (it2.hasNext()) {
                    ((lg) it2.next()).d();
                }
                ig igVar = vfVar.u;
                igVar.z = false;
                igVar.A = false;
                igVar.G.h = false;
                igVar.s(0);
                koVar.e(false);
                return;
            }
            throw new AndroidRuntimeException(t20.e("Fragment ", vfVar, " did not call through to super.onAttach()"));
        }
        it.next().getClass();
        c2.l();
    }

    public final int d() {
        int i;
        s20 s20Var;
        vf vfVar = this.c;
        if (vfVar.s == null) {
            return vfVar.a;
        }
        int i2 = this.e;
        int ordinal = vfVar.M.ordinal();
        int i3 = 0;
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        i2 = Math.min(i2, -1);
                    }
                } else {
                    i2 = Math.min(i2, 5);
                }
            } else {
                i2 = Math.min(i2, 1);
            }
        } else {
            i2 = Math.min(i2, 0);
        }
        if (vfVar.m) {
            boolean z = vfVar.n;
            int i4 = this.e;
            if (z) {
                i2 = Math.max(i4, 2);
                View view = vfVar.F;
                if (view != null && view.getParent() == null) {
                    i2 = Math.min(i2, 2);
                }
            } else {
                i2 = i4 < 4 ? Math.min(i2, vfVar.a) : Math.min(i2, 1);
            }
        }
        if (!vfVar.k) {
            i2 = Math.min(i2, 1);
        }
        ViewGroup viewGroup = vfVar.E;
        if (viewGroup != null) {
            gc f = gc.f(viewGroup, vfVar.j().C());
            s20 d = f.d(vfVar);
            if (d != null) {
                i = d.b;
            } else {
                i = 0;
            }
            ArrayList arrayList = f.c;
            int size = arrayList.size();
            while (true) {
                if (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    s20Var = (s20) obj;
                    vf vfVar2 = s20Var.c;
                    vfVar2.getClass();
                    if (vfVar2 == vfVar && !s20Var.f) {
                        break;
                    }
                } else {
                    s20Var = null;
                    break;
                }
            }
            if (s20Var != null && (i == 0 || i == 1)) {
                i3 = s20Var.b;
            } else {
                i3 = i;
            }
        }
        if (i3 == 2) {
            i2 = Math.min(i2, 6);
        } else if (i3 == 3) {
            i2 = Math.max(i2, 3);
        } else if (vfVar.l) {
            if (vfVar.r > 0) {
                i2 = Math.min(i2, 1);
            } else {
                i2 = Math.min(i2, -1);
            }
        }
        if (vfVar.G && vfVar.a < 5) {
            i2 = Math.min(i2, 4);
        }
        if (a.E(2)) {
            Log.v("FragmentManager", "computeExpectedState() of " + i2 + " for " + vfVar);
        }
        return i2;
    }

    public final void e() {
        Parcelable parcelable;
        boolean E = a.E(3);
        final vf vfVar = this.c;
        if (E) {
            Log.d("FragmentManager", "moveto CREATED: " + vfVar);
        }
        boolean z = vfVar.L;
        Bundle bundle = vfVar.b;
        if (!z) {
            ko koVar = this.a;
            koVar.k(false);
            Bundle bundle2 = vfVar.b;
            vfVar.u.J();
            vfVar.a = 1;
            vfVar.D = false;
            vfVar.N.a(new qk() { // from class: androidx.fragment.app.Fragment$5
                @Override // defpackage.qk
                public final void g(sk skVar, lk lkVar) {
                    View view;
                    if (lkVar == lk.ON_STOP && (view = vf.this.F) != null) {
                        view.cancelPendingInputEvents();
                    }
                }
            });
            vfVar.Q.b(bundle2);
            vfVar.r(bundle2);
            vfVar.L = true;
            if (vfVar.D) {
                vfVar.N.e(lk.ON_CREATE);
                koVar.f(false);
                return;
            }
            throw new AndroidRuntimeException(t20.e("Fragment ", vfVar, " did not call through to super.onCreate()"));
        }
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            vfVar.u.O(parcelable);
            ig igVar = vfVar.u;
            igVar.z = false;
            igVar.A = false;
            igVar.G.h = false;
            igVar.s(1);
        }
        vfVar.a = 1;
    }

    public final void f() {
        String str;
        vf vfVar = this.c;
        if (vfVar.m) {
            return;
        }
        if (a.E(3)) {
            Log.d("FragmentManager", "moveto CREATE_VIEW: " + vfVar);
        }
        LayoutInflater w = vfVar.w(vfVar.b);
        vfVar.K = w;
        ViewGroup viewGroup = vfVar.E;
        if (viewGroup == null) {
            int i = vfVar.x;
            if (i != 0) {
                if (i != -1) {
                    viewGroup = (ViewGroup) vfVar.s.p.x(i);
                    if (viewGroup == null && !vfVar.o) {
                        try {
                            str = vfVar.k().getResourceName(vfVar.x);
                        } catch (Resources.NotFoundException unused) {
                            str = "unknown";
                        }
                        String hexString = Integer.toHexString(vfVar.x);
                        throw new IllegalArgumentException("No view found for id 0x" + hexString + " (" + str + ") for fragment " + vfVar);
                    }
                } else {
                    c2.n(t20.e("Cannot create fragment ", vfVar, " for a container view with no id"));
                    return;
                }
            } else {
                viewGroup = null;
            }
        }
        vfVar.E = viewGroup;
        vfVar.E(w, viewGroup, vfVar.b);
        View view = vfVar.F;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            vfVar.F.setTag(R.id.fragment_container_view_tag, vfVar);
            if (viewGroup != null) {
                b();
            }
            if (vfVar.z) {
                vfVar.F.setVisibility(8);
            }
            View view2 = vfVar.F;
            WeakHashMap weakHashMap = u70.a;
            boolean b = g70.b(view2);
            View view3 = vfVar.F;
            if (b) {
                h70.c(view3);
            } else {
                view3.addOnAttachStateChangeListener(new j9(1, view3));
            }
            vfVar.C(vfVar.b);
            vfVar.u.s(2);
            this.a.p(false);
            int visibility = vfVar.F.getVisibility();
            vfVar.d().j = vfVar.F.getAlpha();
            if (vfVar.E != null && visibility == 0) {
                View findFocus = vfVar.F.findFocus();
                if (findFocus != null) {
                    vfVar.d().k = findFocus;
                    if (a.E(2)) {
                        Log.v("FragmentManager", "requestFocus: Saved focused view " + findFocus + " for Fragment " + vfVar);
                    }
                }
                vfVar.F.setAlpha(0.0f);
            }
        }
        vfVar.a = 2;
    }

    public final void g() {
        boolean z;
        boolean z2;
        vf l;
        boolean E = a.E(3);
        vf vfVar = this.c;
        if (E) {
            Log.d("FragmentManager", "movefrom CREATED: " + vfVar);
        }
        boolean z3 = true;
        int i = 0;
        if (vfVar.l && vfVar.r <= 0) {
            z = true;
        } else {
            z = false;
        }
        v5 v5Var = this.b;
        if (!z) {
            kg kgVar = (kg) v5Var.d;
            if (kgVar.c.containsKey(vfVar.e) && kgVar.f) {
                z2 = kgVar.g;
            } else {
                z2 = true;
            }
            if (!z2) {
                String str = vfVar.h;
                if (str != null && (l = v5Var.l(str)) != null && l.B) {
                    vfVar.g = l;
                }
                vfVar.a = 0;
                return;
            }
        }
        wf wfVar = vfVar.t;
        if (wfVar != null) {
            z3 = ((kg) v5Var.d).g;
        } else {
            z2 z2Var = wfVar.k;
            if (z2Var != null) {
                z3 = true ^ z2Var.isChangingConfigurations();
            }
        }
        if (z || z3) {
            kg kgVar2 = (kg) v5Var.d;
            HashMap hashMap = kgVar2.e;
            HashMap hashMap2 = kgVar2.d;
            if (a.E(3)) {
                Log.d("FragmentManager", "Clearing non-config state for " + vfVar);
            }
            kg kgVar3 = (kg) hashMap2.get(vfVar.e);
            if (kgVar3 != null) {
                kgVar3.a();
                hashMap2.remove(vfVar.e);
            }
            b80 b80Var = (b80) hashMap.get(vfVar.e);
            if (b80Var != null) {
                b80Var.a();
                hashMap.remove(vfVar.e);
            }
        }
        vfVar.u.k();
        vfVar.N.e(lk.ON_DESTROY);
        vfVar.a = 0;
        vfVar.D = false;
        vfVar.L = false;
        vfVar.t();
        if (vfVar.D) {
            this.a.g(false);
            ArrayList n = v5Var.n();
            int size = n.size();
            while (i < size) {
                Object obj = n.get(i);
                i++;
                b bVar = (b) obj;
                if (bVar != null) {
                    vf vfVar2 = bVar.c;
                    if (vfVar.e.equals(vfVar2.h)) {
                        vfVar2.g = vfVar;
                        vfVar2.h = null;
                    }
                }
            }
            String str2 = vfVar.h;
            if (str2 != null) {
                vfVar.g = v5Var.l(str2);
            }
            v5Var.B(this);
            return;
        }
        throw new AndroidRuntimeException(t20.e("Fragment ", vfVar, " did not call through to super.onDestroy()"));
    }

    public final void h() {
        tl tlVar;
        View view;
        boolean E = a.E(3);
        vf vfVar = this.c;
        if (E) {
            Log.d("FragmentManager", "movefrom CREATE_VIEW: " + vfVar);
        }
        ViewGroup viewGroup = vfVar.E;
        if (viewGroup != null && (view = vfVar.F) != null) {
            viewGroup.removeView(view);
        }
        vfVar.u.s(1);
        if (vfVar.F != null) {
            pg pgVar = vfVar.O;
            pgVar.d();
            if (pgVar.b.c.compareTo(mk.c) >= 0) {
                vfVar.O.b(lk.ON_DESTROY);
            }
        }
        vfVar.a = 1;
        vfVar.D = false;
        vfVar.u();
        if (vfVar.D) {
            b80 e = vfVar.e();
            e.getClass();
            hb hbVar = hb.b;
            hbVar.getClass();
            String canonicalName = tl.class.getCanonicalName();
            if (canonicalName != null) {
                String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
                LinkedHashMap linkedHashMap = e.a;
                z70 z70Var = (z70) linkedHashMap.get(concat);
                if (tl.class.isInstance(z70Var)) {
                    z70Var.getClass();
                } else {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.putAll((LinkedHashMap) hbVar.a);
                    linkedHashMap2.put(hd.d, concat);
                    try {
                        tlVar = new tl();
                    } catch (AbstractMethodError unused) {
                        tlVar = new tl();
                    }
                    z70Var = tlVar;
                    z70 z70Var2 = (z70) linkedHashMap.put(concat, z70Var);
                    if (z70Var2 != null) {
                        z70Var2.a();
                    }
                }
                q20 q20Var = ((tl) z70Var).c;
                if (q20Var.c <= 0) {
                    vfVar.q = false;
                } else {
                    q20Var.b[0].getClass();
                    c2.l();
                }
            } else {
                c2.n("Local and anonymous classes can not be ViewModels");
            }
            this.a.q(false);
            vfVar.E = null;
            vfVar.F = null;
            vfVar.O = null;
            vfVar.P.e(null);
            vfVar.n = false;
            return;
        }
        throw new AndroidRuntimeException(t20.e("Fragment ", vfVar, " did not call through to super.onDestroyView()"));
    }

    /* JADX WARN: Type inference failed for: r6v4, types: [androidx.fragment.app.a, ig] */
    /* JADX WARN: Type inference failed for: r8v13, types: [androidx.fragment.app.a, ig] */
    public final void i() {
        boolean z;
        boolean E = a.E(3);
        vf vfVar = this.c;
        if (E) {
            Log.d("FragmentManager", "movefrom ATTACHED: " + vfVar);
        }
        vfVar.a = -1;
        vfVar.D = false;
        vfVar.v();
        vfVar.K = null;
        if (vfVar.D) {
            ig igVar = vfVar.u;
            if (!igVar.B) {
                igVar.k();
                vfVar.u = new a();
            }
            this.a.h(false);
            vfVar.a = -1;
            vfVar.t = null;
            vfVar.v = null;
            vfVar.s = null;
            if (!vfVar.l || vfVar.r > 0) {
                kg kgVar = (kg) this.b.d;
                if (kgVar.c.containsKey(vfVar.e) && kgVar.f) {
                    z = kgVar.g;
                } else {
                    z = true;
                }
                if (!z) {
                    return;
                }
            }
            if (a.E(3)) {
                Log.d("FragmentManager", "initState called for fragment: " + vfVar);
            }
            vfVar.N = new androidx.lifecycle.a(vfVar);
            vfVar.Q = new qg(vfVar);
            vfVar.e = UUID.randomUUID().toString();
            vfVar.k = false;
            vfVar.l = false;
            vfVar.m = false;
            vfVar.n = false;
            vfVar.o = false;
            vfVar.r = 0;
            vfVar.s = null;
            vfVar.u = new a();
            vfVar.t = null;
            vfVar.w = 0;
            vfVar.x = 0;
            vfVar.y = null;
            vfVar.z = false;
            vfVar.A = false;
            return;
        }
        throw new AndroidRuntimeException(t20.e("Fragment ", vfVar, " did not call through to super.onDetach()"));
    }

    public final void j() {
        vf vfVar = this.c;
        if (vfVar.m && vfVar.n && !vfVar.q) {
            if (a.E(3)) {
                Log.d("FragmentManager", "moveto CREATE_VIEW: " + vfVar);
            }
            LayoutInflater w = vfVar.w(vfVar.b);
            vfVar.K = w;
            vfVar.E(w, null, vfVar.b);
            View view = vfVar.F;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                vfVar.F.setTag(R.id.fragment_container_view_tag, vfVar);
                if (vfVar.z) {
                    vfVar.F.setVisibility(8);
                }
                vfVar.C(vfVar.b);
                vfVar.u.s(2);
                this.a.p(false);
                vfVar.a = 2;
            }
        }
    }

    public final void k() {
        ViewGroup viewGroup;
        ViewGroup viewGroup2;
        ViewGroup viewGroup3;
        boolean z = this.d;
        vf vfVar = this.c;
        if (z) {
            if (a.E(2)) {
                Log.v("FragmentManager", "Ignoring re-entrant call to moveToExpectedState() for " + vfVar);
                return;
            }
            return;
        }
        try {
            this.d = true;
            while (true) {
                int d = d();
                int i = vfVar.a;
                if (d != i) {
                    if (d > i) {
                        switch (i + 1) {
                            case 0:
                                c();
                                continue;
                            case 1:
                                e();
                                continue;
                            case 2:
                                j();
                                f();
                                continue;
                            case 3:
                                a();
                                continue;
                            case 4:
                                if (vfVar.F != null && (viewGroup2 = vfVar.E) != null) {
                                    gc f = gc.f(viewGroup2, vfVar.j().C());
                                    int b = t20.b(vfVar.F.getVisibility());
                                    if (a.E(2)) {
                                        Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + vfVar);
                                    }
                                    f.a(b, 2, this);
                                }
                                vfVar.a = 4;
                                continue;
                            case 5:
                                p();
                                continue;
                            case 6:
                                vfVar.a = 6;
                                continue;
                            case 7:
                                n();
                                continue;
                            default:
                                continue;
                        }
                    } else {
                        switch (i - 1) {
                            case -1:
                                i();
                                continue;
                            case 0:
                                g();
                                continue;
                            case 1:
                                h();
                                vfVar.a = 1;
                                continue;
                            case 2:
                                vfVar.n = false;
                                vfVar.a = 2;
                                continue;
                            case 3:
                                if (a.E(3)) {
                                    Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + vfVar);
                                }
                                if (vfVar.F != null && vfVar.c == null) {
                                    o();
                                }
                                if (vfVar.F != null && (viewGroup3 = vfVar.E) != null) {
                                    gc f2 = gc.f(viewGroup3, vfVar.j().C());
                                    if (a.E(2)) {
                                        Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + vfVar);
                                    }
                                    f2.a(1, 3, this);
                                }
                                vfVar.a = 3;
                                continue;
                            case 4:
                                q();
                                continue;
                            case 5:
                                vfVar.a = 5;
                                continue;
                            case 6:
                                l();
                                continue;
                            default:
                                continue;
                        }
                    }
                } else {
                    if (vfVar.J) {
                        if (vfVar.F != null && (viewGroup = vfVar.E) != null) {
                            gc f3 = gc.f(viewGroup, vfVar.j().C());
                            if (vfVar.z) {
                                if (a.E(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + vfVar);
                                }
                                f3.a(3, 1, this);
                            } else {
                                if (a.E(2)) {
                                    Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + vfVar);
                                }
                                f3.a(2, 1, this);
                            }
                        }
                        a aVar = vfVar.s;
                        if (aVar != null && vfVar.k && a.F(vfVar)) {
                            aVar.y = true;
                        }
                        vfVar.J = false;
                    }
                    this.d = false;
                    return;
                }
            }
        } catch (Throwable th) {
            this.d = false;
            throw th;
        }
    }

    public final void l() {
        boolean E = a.E(3);
        vf vfVar = this.c;
        if (E) {
            Log.d("FragmentManager", "movefrom RESUMED: " + vfVar);
        }
        vfVar.u.s(5);
        if (vfVar.F != null) {
            vfVar.O.b(lk.ON_PAUSE);
        }
        vfVar.N.e(lk.ON_PAUSE);
        vfVar.a = 6;
        vfVar.D = false;
        vfVar.x();
        if (vfVar.D) {
            this.a.i(false);
            return;
        }
        throw new AndroidRuntimeException(t20.e("Fragment ", vfVar, " did not call through to super.onPause()"));
    }

    public final void m(ClassLoader classLoader) {
        vf vfVar = this.c;
        Bundle bundle = vfVar.b;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
            vfVar.c = vfVar.b.getSparseParcelableArray("android:view_state");
            vfVar.d = vfVar.b.getBundle("android:view_registry_state");
            String string = vfVar.b.getString("android:target_state");
            vfVar.h = string;
            if (string != null) {
                vfVar.i = vfVar.b.getInt("android:target_req_state", 0);
            }
            boolean z = vfVar.b.getBoolean("android:user_visible_hint", true);
            vfVar.H = z;
            if (!z) {
                vfVar.G = true;
            }
        }
    }

    public final void n() {
        View view;
        String str;
        boolean E = a.E(3);
        vf vfVar = this.c;
        if (E) {
            Log.d("FragmentManager", "moveto RESUMED: " + vfVar);
        }
        tf tfVar = vfVar.I;
        if (tfVar == null) {
            view = null;
        } else {
            view = tfVar.k;
        }
        if (view != null) {
            if (view != vfVar.F) {
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent != vfVar.F) {
                    }
                }
            }
            boolean requestFocus = view.requestFocus();
            if (a.E(2)) {
                StringBuilder sb = new StringBuilder("requestFocus: Restoring focused view ");
                sb.append(view);
                sb.append(" ");
                if (requestFocus) {
                    str = "succeeded";
                } else {
                    str = "failed";
                }
                sb.append(str);
                sb.append(" on Fragment ");
                sb.append(vfVar);
                sb.append(" resulting in focused view ");
                sb.append(vfVar.F.findFocus());
                Log.v("FragmentManager", sb.toString());
            }
        }
        vfVar.d().k = null;
        vfVar.u.J();
        vfVar.u.w(true);
        vfVar.a = 7;
        vfVar.D = false;
        vfVar.y();
        if (vfVar.D) {
            androidx.lifecycle.a aVar = vfVar.N;
            lk lkVar = lk.ON_RESUME;
            aVar.e(lkVar);
            if (vfVar.F != null) {
                vfVar.O.b.e(lkVar);
            }
            ig igVar = vfVar.u;
            igVar.z = false;
            igVar.A = false;
            igVar.G.h = false;
            igVar.s(7);
            this.a.l(false);
            vfVar.b = null;
            vfVar.c = null;
            vfVar.d = null;
            return;
        }
        throw new AndroidRuntimeException(t20.e("Fragment ", vfVar, " did not call through to super.onResume()"));
    }

    public final void o() {
        vf vfVar = this.c;
        if (vfVar.F != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            vfVar.F.saveHierarchyState(sparseArray);
            if (sparseArray.size() > 0) {
                vfVar.c = sparseArray;
            }
            Bundle bundle = new Bundle();
            vfVar.O.c.c(bundle);
            if (!bundle.isEmpty()) {
                vfVar.d = bundle;
            }
        }
    }

    public final void p() {
        boolean E = a.E(3);
        vf vfVar = this.c;
        if (E) {
            Log.d("FragmentManager", "moveto STARTED: " + vfVar);
        }
        vfVar.u.J();
        vfVar.u.w(true);
        vfVar.a = 5;
        vfVar.D = false;
        vfVar.A();
        if (vfVar.D) {
            androidx.lifecycle.a aVar = vfVar.N;
            lk lkVar = lk.ON_START;
            aVar.e(lkVar);
            if (vfVar.F != null) {
                vfVar.O.b.e(lkVar);
            }
            ig igVar = vfVar.u;
            igVar.z = false;
            igVar.A = false;
            igVar.G.h = false;
            igVar.s(5);
            this.a.n(false);
            return;
        }
        throw new AndroidRuntimeException(t20.e("Fragment ", vfVar, " did not call through to super.onStart()"));
    }

    public final void q() {
        boolean E = a.E(3);
        vf vfVar = this.c;
        if (E) {
            Log.d("FragmentManager", "movefrom STARTED: " + vfVar);
        }
        ig igVar = vfVar.u;
        igVar.A = true;
        igVar.G.h = true;
        igVar.s(4);
        if (vfVar.F != null) {
            vfVar.O.b(lk.ON_STOP);
        }
        vfVar.N.e(lk.ON_STOP);
        vfVar.a = 4;
        vfVar.D = false;
        vfVar.B();
        if (vfVar.D) {
            this.a.o(false);
            return;
        }
        throw new AndroidRuntimeException(t20.e("Fragment ", vfVar, " did not call through to super.onStop()"));
    }

    public b(ko koVar, v5 v5Var, vf vfVar) {
        this.a = koVar;
        this.b = v5Var;
        this.c = vfVar;
    }

    public b(ko koVar, v5 v5Var, vf vfVar, ng ngVar) {
        this.a = koVar;
        this.b = v5Var;
        this.c = vfVar;
        vfVar.c = null;
        vfVar.d = null;
        vfVar.r = 0;
        vfVar.n = false;
        vfVar.k = false;
        vf vfVar2 = vfVar.g;
        vfVar.h = vfVar2 != null ? vfVar2.e : null;
        vfVar.g = null;
        Bundle bundle = ngVar.m;
        if (bundle != null) {
            vfVar.b = bundle;
        } else {
            vfVar.b = new Bundle();
        }
    }
}
