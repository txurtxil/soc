package androidx.fragment.app;

import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.apps.auto.sdk.ui.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public abstract class a {
    public boolean A;
    public boolean B;
    public boolean C;
    public ArrayList D;
    public ArrayList E;
    public ArrayList F;
    public kg G;
    public final c7 H;
    public boolean b;
    public ArrayList d;
    public ArrayList e;
    public androidx.activity.b g;
    public final ko l;
    public final CopyOnWriteArrayList m;
    public int n;
    public wf o;
    public s8 p;
    public vf q;
    public vf r;
    public final cg s;
    public final hd t;
    public v1 u;
    public v1 v;
    public v1 w;
    public ArrayDeque x;
    public boolean y;
    public boolean z;
    public final ArrayList a = new ArrayList();
    public final v5 c = new v5(3);
    public final zf f = new zf(this);
    public final bg h = new bg(this);
    public final AtomicInteger i = new AtomicInteger();
    public final Map j = Collections.synchronizedMap(new HashMap());
    public final Map k = Collections.synchronizedMap(new HashMap());

    public a() {
        Collections.synchronizedMap(new HashMap());
        new hd(this);
        this.l = new ko(this);
        this.m = new CopyOnWriteArrayList();
        this.n = -1;
        this.s = new cg(this);
        this.t = new hd(14);
        this.x = new ArrayDeque();
        this.H = new c7(8, this);
    }

    public static boolean E(int i) {
        if (Log.isLoggable("FragmentManager", i)) {
            return true;
        }
        return false;
    }

    public static boolean F(vf vfVar) {
        vfVar.getClass();
        v5 v5Var = vfVar.u.c;
        v5Var.getClass();
        ArrayList arrayList = new ArrayList();
        for (b bVar : ((HashMap) v5Var.b).values()) {
            if (bVar != null) {
                arrayList.add(bVar.c);
            } else {
                arrayList.add(null);
            }
        }
        int size = arrayList.size();
        boolean z = false;
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            vf vfVar2 = (vf) obj;
            if (vfVar2 != null) {
                z = F(vfVar2);
                continue;
            }
            if (z) {
                return true;
            }
        }
        return false;
    }

    public static boolean G(vf vfVar) {
        if (vfVar != null) {
            if (vfVar.C) {
                if (vfVar.s == null || G(vfVar.v)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public static boolean H(vf vfVar) {
        if (vfVar != null) {
            a aVar = vfVar.s;
            if (vfVar == aVar.r && H(aVar.q)) {
                return true;
            }
            return false;
        }
        return true;
    }

    public static void W(vf vfVar) {
        if (E(2)) {
            Log.v("FragmentManager", "show: " + vfVar);
        }
        if (vfVar.z) {
            vfVar.z = false;
            vfVar.J = !vfVar.J;
        }
    }

    public final ViewGroup A(vf vfVar) {
        ViewGroup viewGroup = vfVar.E;
        if (viewGroup != null) {
            return viewGroup;
        }
        if (vfVar.x > 0 && this.p.y()) {
            View x = this.p.x(vfVar.x);
            if (x instanceof ViewGroup) {
                return (ViewGroup) x;
            }
            return null;
        }
        return null;
    }

    public final cg B() {
        vf vfVar = this.q;
        if (vfVar != null) {
            return vfVar.s.B();
        }
        return this.s;
    }

    public final hd C() {
        vf vfVar = this.q;
        if (vfVar != null) {
            return vfVar.s.C();
        }
        return this.t;
    }

    public final void D(vf vfVar) {
        if (E(2)) {
            Log.v("FragmentManager", "hide: " + vfVar);
        }
        if (!vfVar.z) {
            vfVar.z = true;
            vfVar.J = true ^ vfVar.J;
            V(vfVar);
        }
    }

    public final void I(int i, boolean z) {
        wf wfVar;
        if (this.o == null && i != -1) {
            c2.g("No activity");
        } else if (z || i != this.n) {
            this.n = i;
            v5 v5Var = this.c;
            HashMap hashMap = (HashMap) v5Var.b;
            ArrayList arrayList = (ArrayList) v5Var.c;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                b bVar = (b) hashMap.get(((vf) obj).e);
                if (bVar != null) {
                    bVar.k();
                }
            }
            for (b bVar2 : hashMap.values()) {
                if (bVar2 != null) {
                    bVar2.k();
                    vf vfVar = bVar2.c;
                    if (vfVar.l && vfVar.r <= 0) {
                        v5Var.B(bVar2);
                    }
                }
            }
            X();
            if (this.y && (wfVar = this.o) != null && this.n == 7) {
                wfVar.n.k().b();
                this.y = false;
            }
        }
    }

    public final void J() {
        if (this.o != null) {
            this.z = false;
            this.A = false;
            this.G.h = false;
            for (vf vfVar : this.c.u()) {
                if (vfVar != null) {
                    vfVar.u.J();
                }
            }
        }
    }

    public final boolean K() {
        w(false);
        v(true);
        vf vfVar = this.r;
        if (vfVar != null && vfVar.g().K()) {
            return true;
        }
        boolean L = L(this.D, this.E, -1, 0);
        if (L) {
            this.b = true;
            try {
                N(this.D, this.E);
            } finally {
                d();
            }
        }
        Y();
        if (this.C) {
            this.C = false;
            X();
        }
        ((HashMap) this.c.b).values().removeAll(Collections.singleton(null));
        return L;
    }

    public final boolean L(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        int i3;
        e7 e7Var;
        ArrayList arrayList3 = this.d;
        if (arrayList3 != null) {
            if (i < 0 && (i2 & 1) == 0) {
                int size = arrayList3.size() - 1;
                if (size >= 0) {
                    arrayList.add(this.d.remove(size));
                    arrayList2.add(Boolean.TRUE);
                    return true;
                }
                return false;
            }
            if (i >= 0) {
                i3 = arrayList3.size() - 1;
                while (i3 >= 0) {
                    e7 e7Var2 = (e7) this.d.get(i3);
                    if (i >= 0 && i == e7Var2.s) {
                        break;
                    }
                    i3--;
                }
                if (i3 >= 0) {
                    if ((i2 & 1) != 0) {
                        do {
                            i3--;
                            if (i3 < 0) {
                                break;
                            }
                            e7Var = (e7) this.d.get(i3);
                            if (i < 0) {
                                break;
                            }
                        } while (i == e7Var.s);
                    }
                } else {
                    return false;
                }
            } else {
                i3 = -1;
            }
            if (i3 == this.d.size() - 1) {
                return false;
            }
            for (int size2 = this.d.size() - 1; size2 > i3; size2--) {
                arrayList.add(this.d.remove(size2));
                arrayList2.add(Boolean.TRUE);
            }
            return true;
        }
        return false;
    }

    public final void M(vf vfVar) {
        boolean z;
        if (E(2)) {
            Log.v("FragmentManager", "remove: " + vfVar + " nesting=" + vfVar.r);
        }
        if (vfVar.r > 0) {
            z = true;
        } else {
            z = false;
        }
        if (vfVar.A && z) {
            return;
        }
        v5 v5Var = this.c;
        synchronized (((ArrayList) v5Var.c)) {
            ((ArrayList) v5Var.c).remove(vfVar);
        }
        vfVar.k = false;
        if (F(vfVar)) {
            this.y = true;
        }
        vfVar.l = true;
        V(vfVar);
    }

    public final void N(ArrayList arrayList, ArrayList arrayList2) {
        if (!arrayList.isEmpty()) {
            if (arrayList.size() == arrayList2.size()) {
                int size = arrayList.size();
                int i = 0;
                int i2 = 0;
                while (i < size) {
                    if (!((e7) arrayList.get(i)).p) {
                        if (i2 != i) {
                            x(arrayList, arrayList2, i2, i);
                        }
                        i2 = i + 1;
                        if (((Boolean) arrayList2.get(i)).booleanValue()) {
                            while (i2 < size && ((Boolean) arrayList2.get(i2)).booleanValue() && !((e7) arrayList.get(i2)).p) {
                                i2++;
                            }
                        }
                        x(arrayList, arrayList2, i, i2);
                        i = i2 - 1;
                    }
                    i++;
                }
                if (i2 != size) {
                    x(arrayList, arrayList2, i2, size);
                    return;
                }
                return;
            }
            c2.g("Internal error with the back stack records");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v1, types: [og, java.lang.Object] */
    public final void O(Parcelable parcelable) {
        ko koVar;
        int i;
        int i2;
        b bVar;
        if (parcelable != null) {
            jg jgVar = (jg) parcelable;
            if (jgVar.a == null) {
                return;
            }
            v5 v5Var = this.c;
            ((HashMap) v5Var.b).clear();
            ArrayList arrayList = jgVar.a;
            int size = arrayList.size();
            int i3 = 0;
            while (true) {
                koVar = this.l;
                i = 2;
                if (i3 >= size) {
                    break;
                }
                Object obj = arrayList.get(i3);
                i3++;
                ng ngVar = (ng) obj;
                if (ngVar != null) {
                    kg kgVar = this.G;
                    vf vfVar = (vf) kgVar.c.get(ngVar.b);
                    if (vfVar != null) {
                        if (E(2)) {
                            Log.v("FragmentManager", "restoreSaveState: re-attaching retained " + vfVar);
                        }
                        bVar = new b(koVar, v5Var, vfVar, ngVar);
                    } else {
                        bVar = new b(this.l, this.c, this.o.k.getClassLoader(), B(), ngVar);
                    }
                    vf vfVar2 = bVar.c;
                    vfVar2.s = this;
                    if (E(2)) {
                        Log.v("FragmentManager", "restoreSaveState: active (" + vfVar2.e + "): " + vfVar2);
                    }
                    bVar.m(this.o.k.getClassLoader());
                    v5Var.A(bVar);
                    bVar.e = this.n;
                }
            }
            kg kgVar2 = this.G;
            kgVar2.getClass();
            ArrayList arrayList2 = new ArrayList(kgVar2.c.values());
            int size2 = arrayList2.size();
            int i4 = 0;
            while (i4 < size2) {
                Object obj2 = arrayList2.get(i4);
                i4++;
                vf vfVar3 = (vf) obj2;
                if (((HashMap) v5Var.b).get(vfVar3.e) == null) {
                    if (E(2)) {
                        Log.v("FragmentManager", "Discarding retained Fragment " + vfVar3 + " that was not found in the set of active Fragments " + jgVar.a);
                    }
                    this.G.b(vfVar3);
                    vfVar3.s = this;
                    b bVar2 = new b(koVar, v5Var, vfVar3);
                    bVar2.e = 1;
                    bVar2.k();
                    vfVar3.l = true;
                    bVar2.k();
                }
            }
            ArrayList arrayList3 = jgVar.b;
            ((ArrayList) v5Var.c).clear();
            if (arrayList3 != null) {
                int size3 = arrayList3.size();
                int i5 = 0;
                while (i5 < size3) {
                    Object obj3 = arrayList3.get(i5);
                    i5++;
                    String str = (String) obj3;
                    vf l = v5Var.l(str);
                    if (l != null) {
                        if (E(2)) {
                            Log.v("FragmentManager", "restoreSaveState: added (" + str + "): " + l);
                        }
                        v5Var.f(l);
                    } else {
                        c2.g(t20.f("No instantiated fragment for (", str, ")"));
                        return;
                    }
                }
            }
            vf vfVar4 = null;
            if (jgVar.c != null) {
                this.d = new ArrayList(jgVar.c.length);
                int i6 = 0;
                while (true) {
                    f7[] f7VarArr = jgVar.c;
                    if (i6 >= f7VarArr.length) {
                        break;
                    }
                    f7 f7Var = f7VarArr[i6];
                    int[] iArr = f7Var.a;
                    e7 e7Var = new e7(this);
                    int i7 = 0;
                    int i8 = 0;
                    while (i7 < iArr.length) {
                        ?? obj4 = new Object();
                        int i9 = i7 + 1;
                        int i10 = i;
                        obj4.a = iArr[i7];
                        if (E(i10)) {
                            Log.v("FragmentManager", "Instantiate " + e7Var + " op #" + i8 + " base fragment #" + iArr[i9]);
                        }
                        String str2 = (String) f7Var.b.get(i8);
                        if (str2 != null) {
                            obj4.b = v5Var.l(str2);
                        } else {
                            obj4.b = vfVar4;
                        }
                        obj4.g = mk.values()[f7Var.c[i8]];
                        obj4.h = mk.values()[f7Var.d[i8]];
                        int i11 = iArr[i9];
                        obj4.c = i11;
                        int i12 = iArr[i7 + 2];
                        obj4.d = i12;
                        int i13 = i7 + 4;
                        int i14 = iArr[i7 + 3];
                        obj4.e = i14;
                        i7 += 5;
                        int i15 = iArr[i13];
                        obj4.f = i15;
                        e7Var.b = i11;
                        e7Var.c = i12;
                        e7Var.d = i14;
                        e7Var.e = i15;
                        e7Var.b(obj4);
                        i8++;
                        i = i10;
                        vfVar4 = null;
                    }
                    int i16 = i;
                    e7Var.f = f7Var.e;
                    e7Var.i = f7Var.f;
                    e7Var.s = f7Var.g;
                    e7Var.g = true;
                    e7Var.j = f7Var.h;
                    e7Var.k = f7Var.i;
                    e7Var.l = f7Var.j;
                    e7Var.m = f7Var.k;
                    e7Var.n = f7Var.l;
                    e7Var.o = f7Var.m;
                    e7Var.p = f7Var.n;
                    e7Var.c(1);
                    if (E(i16)) {
                        Log.v("FragmentManager", "restoreAllState: back stack #" + i6 + " (index " + e7Var.s + "): " + e7Var);
                        PrintWriter printWriter = new PrintWriter(new yl(0));
                        e7Var.f("  ", printWriter, false);
                        printWriter.close();
                    }
                    this.d.add(e7Var);
                    i6++;
                    i = i16;
                    vfVar4 = null;
                }
                i2 = 0;
            } else {
                i2 = 0;
                this.d = null;
            }
            this.i.set(jgVar.d);
            String str3 = jgVar.e;
            if (str3 != null) {
                vf l2 = v5Var.l(str3);
                this.r = l2;
                p(l2);
            }
            ArrayList arrayList4 = jgVar.f;
            if (arrayList4 != null) {
                for (int i17 = i2; i17 < arrayList4.size(); i17++) {
                    Bundle bundle = (Bundle) jgVar.g.get(i17);
                    bundle.setClassLoader(this.o.k.getClassLoader());
                    this.j.put(arrayList4.get(i17), bundle);
                }
            }
            this.x = new ArrayDeque(jgVar.h);
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [java.lang.Object, jg] */
    public final jg P() {
        int i;
        ArrayList arrayList;
        f7[] f7VarArr;
        int size;
        Iterator it = e().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            gc gcVar = (gc) it.next();
            if (gcVar.e) {
                gcVar.e = false;
                gcVar.c();
            }
        }
        Iterator it2 = e().iterator();
        while (it2.hasNext()) {
            ((gc) it2.next()).e();
        }
        w(true);
        this.z = true;
        this.G.h = true;
        v5 v5Var = this.c;
        v5Var.getClass();
        HashMap hashMap = (HashMap) v5Var.b;
        ArrayList arrayList2 = new ArrayList(hashMap.size());
        Iterator it3 = hashMap.values().iterator();
        while (true) {
            Bundle bundle = null;
            if (!it3.hasNext()) {
                break;
            }
            b bVar = (b) it3.next();
            if (bVar != null) {
                vf vfVar = bVar.c;
                ng ngVar = new ng(vfVar);
                if (vfVar.a > -1 && ngVar.m == null) {
                    Bundle bundle2 = new Bundle();
                    vfVar.z(bundle2);
                    vfVar.Q.c(bundle2);
                    jg P = vfVar.u.P();
                    if (P != null) {
                        bundle2.putParcelable("android:support:fragments", P);
                    }
                    bVar.a.m(false);
                    if (!bundle2.isEmpty()) {
                        bundle = bundle2;
                    }
                    if (vfVar.F != null) {
                        bVar.o();
                    }
                    if (vfVar.c != null) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putSparseParcelableArray("android:view_state", vfVar.c);
                    }
                    if (vfVar.d != null) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putBundle("android:view_registry_state", vfVar.d);
                    }
                    if (!vfVar.H) {
                        if (bundle == null) {
                            bundle = new Bundle();
                        }
                        bundle.putBoolean("android:user_visible_hint", vfVar.H);
                    }
                    ngVar.m = bundle;
                    if (vfVar.h != null) {
                        if (bundle == null) {
                            ngVar.m = new Bundle();
                        }
                        ngVar.m.putString("android:target_state", vfVar.h);
                        int i2 = vfVar.i;
                        if (i2 != 0) {
                            ngVar.m.putInt("android:target_req_state", i2);
                        }
                    }
                } else {
                    ngVar.m = vfVar.b;
                }
                arrayList2.add(ngVar);
                if (E(2)) {
                    Log.v("FragmentManager", "Saved state of " + vfVar + ": " + ngVar.m);
                }
            }
        }
        if (arrayList2.isEmpty()) {
            if (E(2)) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
            }
            return null;
        }
        v5 v5Var2 = this.c;
        synchronized (((ArrayList) v5Var2.c)) {
            try {
                if (((ArrayList) v5Var2.c).isEmpty()) {
                    arrayList = null;
                } else {
                    arrayList = new ArrayList(((ArrayList) v5Var2.c).size());
                    ArrayList arrayList3 = (ArrayList) v5Var2.c;
                    int size2 = arrayList3.size();
                    int i3 = 0;
                    while (i3 < size2) {
                        Object obj = arrayList3.get(i3);
                        i3++;
                        vf vfVar2 = (vf) obj;
                        arrayList.add(vfVar2.e);
                        if (E(2)) {
                            Log.v("FragmentManager", "saveAllState: adding fragment (" + vfVar2.e + "): " + vfVar2);
                        }
                    }
                }
            } finally {
            }
        }
        ArrayList arrayList4 = this.d;
        if (arrayList4 != null && (size = arrayList4.size()) > 0) {
            f7VarArr = new f7[size];
            for (i = 0; i < size; i++) {
                f7VarArr[i] = new f7((e7) this.d.get(i));
                if (E(2)) {
                    Log.v("FragmentManager", "saveAllState: adding back stack #" + i + ": " + this.d.get(i));
                }
            }
        } else {
            f7VarArr = null;
        }
        ?? obj2 = new Object();
        obj2.e = null;
        ArrayList arrayList5 = new ArrayList();
        obj2.f = arrayList5;
        ArrayList arrayList6 = new ArrayList();
        obj2.g = arrayList6;
        obj2.a = arrayList2;
        obj2.b = arrayList;
        obj2.c = f7VarArr;
        obj2.d = this.i.get();
        vf vfVar3 = this.r;
        if (vfVar3 != null) {
            obj2.e = vfVar3.e;
        }
        arrayList5.addAll(this.j.keySet());
        arrayList6.addAll(this.j.values());
        obj2.h = new ArrayList(this.x);
        return obj2;
    }

    public final void Q() {
        synchronized (this.a) {
            try {
                if (this.a.size() == 1) {
                    this.o.l.removeCallbacks(this.H);
                    this.o.l.post(this.H);
                    Y();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void R(vf vfVar, boolean z) {
        ViewGroup A = A(vfVar);
        if (A != null && (A instanceof FragmentContainerView)) {
            ((FragmentContainerView) A).setDrawDisappearingViewsLast(!z);
        }
    }

    public final void S(gu guVar, final mg mgVar) {
        final androidx.lifecycle.a aVar = guVar.N;
        if (aVar.c != mk.a) {
            qk qkVar = new qk() { // from class: androidx.fragment.app.FragmentManager$6
                @Override // defpackage.qk
                public final void g(sk skVar, lk lkVar) {
                    Bundle bundle;
                    a aVar2 = a.this;
                    Map map = aVar2.j;
                    if (lkVar == lk.ON_START && (bundle = (Bundle) map.get("app_picker_result")) != null) {
                        mgVar.d(bundle);
                        map.remove("app_picker_result");
                    }
                    if (lkVar == lk.ON_DESTROY) {
                        aVar.b(this);
                        aVar2.k.remove("app_picker_result");
                    }
                }
            };
            aVar.a(qkVar);
            fg fgVar = (fg) this.k.put("app_picker_result", new fg(aVar, mgVar, qkVar));
            if (fgVar != null) {
                fgVar.a.b(fgVar.c);
            }
        }
    }

    public final void T(vf vfVar, mk mkVar) {
        if (vfVar == this.c.l(vfVar.e) && (vfVar.t == null || vfVar.s == this)) {
            vfVar.M = mkVar;
        } else {
            c2.j("Fragment ", vfVar, " is not an active fragment of FragmentManager ", this);
        }
    }

    public final void U(vf vfVar) {
        if (vfVar != null) {
            if (vfVar != this.c.l(vfVar.e) || (vfVar.t != null && vfVar.s != this)) {
                c2.j("Fragment ", vfVar, " is not an active fragment of FragmentManager ", this);
                return;
            }
        }
        vf vfVar2 = this.r;
        this.r = vfVar;
        p(vfVar2);
        p(this.r);
    }

    public final void V(vf vfVar) {
        int i;
        int i2;
        int i3;
        int i4;
        ViewGroup A = A(vfVar);
        if (A != null) {
            tf tfVar = vfVar.I;
            boolean z = false;
            if (tfVar == null) {
                i = 0;
            } else {
                i = tfVar.b;
            }
            if (tfVar == null) {
                i2 = 0;
            } else {
                i2 = tfVar.c;
            }
            int i5 = i2 + i;
            if (tfVar == null) {
                i3 = 0;
            } else {
                i3 = tfVar.d;
            }
            int i6 = i3 + i5;
            if (tfVar == null) {
                i4 = 0;
            } else {
                i4 = tfVar.e;
            }
            if (i4 + i6 > 0) {
                if (A.getTag(R.id.visible_removing_fragment_view_tag) == null) {
                    A.setTag(R.id.visible_removing_fragment_view_tag, vfVar);
                }
                vf vfVar2 = (vf) A.getTag(R.id.visible_removing_fragment_view_tag);
                tf tfVar2 = vfVar.I;
                if (tfVar2 != null) {
                    z = tfVar2.a;
                }
                if (vfVar2.I != null) {
                    vfVar2.d().a = z;
                }
            }
        }
    }

    public final void X() {
        ArrayList n = this.c.n();
        int size = n.size();
        int i = 0;
        while (i < size) {
            Object obj = n.get(i);
            i++;
            b bVar = (b) obj;
            vf vfVar = bVar.c;
            if (vfVar.G) {
                if (this.b) {
                    this.C = true;
                } else {
                    vfVar.G = false;
                    bVar.k();
                }
            }
        }
    }

    public final void Y() {
        int i;
        synchronized (this.a) {
            try {
                boolean z = true;
                if (!this.a.isEmpty()) {
                    bg bgVar = this.h;
                    bgVar.a = true;
                    rg rgVar = bgVar.c;
                    if (rgVar != null) {
                        rgVar.a();
                    }
                    return;
                }
                bg bgVar2 = this.h;
                ArrayList arrayList = this.d;
                if (arrayList != null) {
                    i = arrayList.size();
                } else {
                    i = 0;
                }
                if (i <= 0 || !H(this.q)) {
                    z = false;
                }
                bgVar2.a = z;
                rg rgVar2 = bgVar2.c;
                if (rgVar2 != null) {
                    rgVar2.a();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final b a(vf vfVar) {
        if (E(2)) {
            Log.v("FragmentManager", "add: " + vfVar);
        }
        b f = f(vfVar);
        vfVar.s = this;
        v5 v5Var = this.c;
        v5Var.A(f);
        if (!vfVar.A) {
            v5Var.f(vfVar);
            vfVar.l = false;
            if (vfVar.F == null) {
                vfVar.J = false;
            }
            if (F(vfVar)) {
                this.y = true;
            }
        }
        return f;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void b(wf wfVar, s8 s8Var, vf vfVar) {
        kg kgVar;
        boolean z;
        String str;
        wf wfVar2;
        if (this.o == null) {
            this.o = wfVar;
            this.p = s8Var;
            this.q = vfVar;
            CopyOnWriteArrayList copyOnWriteArrayList = this.m;
            if (vfVar != 0) {
                copyOnWriteArrayList.add(new dg(vfVar));
            } else if (wfVar != null) {
                copyOnWriteArrayList.add(wfVar);
            }
            if (this.q != null) {
                Y();
            }
            if (wfVar != null) {
                androidx.activity.b h = wfVar.n.h();
                this.g = h;
                if (vfVar != 0) {
                    wfVar2 = vfVar;
                } else {
                    wfVar2 = wfVar;
                }
                h.a(wfVar2, this.h);
            }
            if (vfVar != 0) {
                kg kgVar2 = vfVar.s.G;
                HashMap hashMap = kgVar2.d;
                kg kgVar3 = (kg) hashMap.get(vfVar.e);
                if (kgVar3 == null) {
                    kgVar3 = new kg(kgVar2.f);
                    hashMap.put(vfVar.e, kgVar3);
                }
                this.G = kgVar3;
            } else if (wfVar != null) {
                b80 e = wfVar.n.e();
                e.getClass();
                hb hbVar = hb.b;
                hbVar.getClass();
                String canonicalName = kg.class.getCanonicalName();
                if (canonicalName != null) {
                    String concat = "androidx.lifecycle.ViewModelProvider.DefaultKey:".concat(canonicalName);
                    LinkedHashMap linkedHashMap = e.a;
                    z70 z70Var = (z70) linkedHashMap.get(concat);
                    if (kg.class.isInstance(z70Var)) {
                        z70Var.getClass();
                    } else {
                        LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                        linkedHashMap2.putAll((LinkedHashMap) hbVar.a);
                        linkedHashMap2.put(hd.d, concat);
                        try {
                            kgVar = new kg(true);
                        } catch (AbstractMethodError unused) {
                            kgVar = new kg(true);
                        }
                        z70Var = kgVar;
                        z70 z70Var2 = (z70) linkedHashMap.put(concat, z70Var);
                        if (z70Var2 != null) {
                            z70Var2.a();
                        }
                    }
                    this.G = (kg) z70Var;
                } else {
                    c2.n("Local and anonymous classes can not be ViewModels");
                    return;
                }
            } else {
                this.G = new kg(false);
            }
            kg kgVar4 = this.G;
            if (!this.z && !this.A) {
                z = false;
            } else {
                z = true;
            }
            kgVar4.h = z;
            this.c.d = kgVar4;
            wf wfVar3 = this.o;
            if (wfVar3 != null) {
                ga gaVar = wfVar3.n.k;
                if (vfVar != 0) {
                    str = vfVar.e + ":";
                } else {
                    str = "";
                }
                String concat2 = "FragmentManager:".concat(str);
                this.u = gaVar.d(concat2.concat("StartActivityForResult"), new t1(2), new ag(this, 2));
                this.v = gaVar.d(concat2.concat("StartIntentSenderForResult"), new t1(3), new ag(this, 0));
                this.w = gaVar.d(concat2.concat("RequestPermissions"), new t1(0), new ag(this, 1));
                return;
            }
            return;
        }
        c2.g("Already attached");
    }

    public final void c(vf vfVar) {
        if (E(2)) {
            Log.v("FragmentManager", "attach: " + vfVar);
        }
        if (vfVar.A) {
            vfVar.A = false;
            if (!vfVar.k) {
                this.c.f(vfVar);
                if (E(2)) {
                    Log.v("FragmentManager", "add from attach: " + vfVar);
                }
                if (F(vfVar)) {
                    this.y = true;
                }
            }
        }
    }

    public final void d() {
        this.b = false;
        this.E.clear();
        this.D.clear();
    }

    public final HashSet e() {
        HashSet hashSet = new HashSet();
        ArrayList n = this.c.n();
        int size = n.size();
        int i = 0;
        while (i < size) {
            Object obj = n.get(i);
            i++;
            ViewGroup viewGroup = ((b) obj).c.E;
            if (viewGroup != null) {
                hashSet.add(gc.f(viewGroup, C()));
            }
        }
        return hashSet;
    }

    public final b f(vf vfVar) {
        String str = vfVar.e;
        v5 v5Var = this.c;
        b bVar = (b) ((HashMap) v5Var.b).get(str);
        if (bVar != null) {
            return bVar;
        }
        b bVar2 = new b(this.l, v5Var, vfVar);
        bVar2.m(this.o.k.getClassLoader());
        bVar2.e = this.n;
        return bVar2;
    }

    public final void g(vf vfVar) {
        if (E(2)) {
            Log.v("FragmentManager", "detach: " + vfVar);
        }
        if (!vfVar.A) {
            vfVar.A = true;
            if (vfVar.k) {
                if (E(2)) {
                    Log.v("FragmentManager", "remove from detach: " + vfVar);
                }
                v5 v5Var = this.c;
                synchronized (((ArrayList) v5Var.c)) {
                    ((ArrayList) v5Var.c).remove(vfVar);
                }
                vfVar.k = false;
                if (F(vfVar)) {
                    this.y = true;
                }
                V(vfVar);
            }
        }
    }

    public final void h() {
        for (vf vfVar : this.c.u()) {
            if (vfVar != null) {
                vfVar.D = true;
                vfVar.u.h();
            }
        }
    }

    public final boolean i() {
        boolean z;
        if (this.n >= 1) {
            for (vf vfVar : this.c.u()) {
                if (vfVar != null) {
                    if (!vfVar.z) {
                        z = vfVar.u.i();
                    } else {
                        z = false;
                    }
                    if (z) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final boolean j() {
        boolean z;
        if (this.n < 1) {
            return false;
        }
        ArrayList arrayList = null;
        boolean z2 = false;
        for (vf vfVar : this.c.u()) {
            if (vfVar != null && G(vfVar)) {
                if (!vfVar.z) {
                    z = vfVar.u.j();
                } else {
                    z = false;
                }
                if (z) {
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(vfVar);
                    z2 = true;
                }
            }
        }
        if (this.e != null) {
            for (int i = 0; i < this.e.size(); i++) {
                vf vfVar2 = (vf) this.e.get(i);
                if (arrayList == null || !arrayList.contains(vfVar2)) {
                    vfVar2.getClass();
                }
            }
        }
        this.e = arrayList;
        return z2;
    }

    public final void k() {
        this.B = true;
        w(true);
        Iterator it = e().iterator();
        while (it.hasNext()) {
            ((gc) it.next()).e();
        }
        s(-1);
        this.o = null;
        this.p = null;
        this.q = null;
        if (this.g != null) {
            Iterator it2 = this.h.b.iterator();
            while (it2.hasNext()) {
                ((p8) it2.next()).cancel();
            }
            this.g = null;
        }
        v1 v1Var = this.u;
        if (v1Var != null) {
            v1Var.G();
            this.v.G();
            this.w.G();
        }
    }

    public final void l() {
        for (vf vfVar : this.c.u()) {
            if (vfVar != null) {
                vfVar.D = true;
                vfVar.u.l();
            }
        }
    }

    public final void m() {
        for (vf vfVar : this.c.u()) {
            if (vfVar != null) {
                vfVar.u.m();
            }
        }
    }

    public final boolean n() {
        boolean z;
        if (this.n >= 1) {
            for (vf vfVar : this.c.u()) {
                if (vfVar != null) {
                    if (!vfVar.z) {
                        z = vfVar.u.n();
                    } else {
                        z = false;
                    }
                    if (z) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final void o() {
        if (this.n >= 1) {
            for (vf vfVar : this.c.u()) {
                if (vfVar != null && !vfVar.z) {
                    vfVar.u.o();
                }
            }
        }
    }

    public final void p(vf vfVar) {
        if (vfVar != null) {
            if (vfVar == this.c.l(vfVar.e)) {
                vfVar.s.getClass();
                boolean H = H(vfVar);
                Boolean bool = vfVar.j;
                if (bool == null || bool.booleanValue() != H) {
                    vfVar.j = Boolean.valueOf(H);
                    ig igVar = vfVar.u;
                    igVar.Y();
                    igVar.p(igVar.r);
                }
            }
        }
    }

    public final void q() {
        for (vf vfVar : this.c.u()) {
            if (vfVar != null) {
                vfVar.u.q();
            }
        }
    }

    public final boolean r() {
        boolean z;
        if (this.n < 1) {
            return false;
        }
        boolean z2 = false;
        for (vf vfVar : this.c.u()) {
            if (vfVar != null && G(vfVar)) {
                if (!vfVar.z) {
                    z = vfVar.u.r();
                } else {
                    z = false;
                }
                if (z) {
                    z2 = true;
                }
            }
        }
        return z2;
    }

    public final void s(int i) {
        try {
            this.b = true;
            for (b bVar : ((HashMap) this.c.b).values()) {
                if (bVar != null) {
                    bVar.e = i;
                }
            }
            I(i, false);
            Iterator it = e().iterator();
            while (it.hasNext()) {
                ((gc) it.next()).e();
            }
            this.b = false;
            w(true);
        } catch (Throwable th) {
            this.b = false;
            throw th;
        }
    }

    public final void t(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        tl tlVar;
        String str2 = str + "    ";
        v5 v5Var = this.c;
        ArrayList arrayList = (ArrayList) v5Var.c;
        String str3 = str + "    ";
        HashMap hashMap = (HashMap) v5Var.b;
        if (!hashMap.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Active Fragments:");
            for (b bVar : hashMap.values()) {
                printWriter.print(str);
                if (bVar != null) {
                    vf vfVar = bVar.c;
                    printWriter.println(vfVar);
                    vfVar.getClass();
                    printWriter.print(str3);
                    printWriter.print("mFragmentId=#");
                    printWriter.print(Integer.toHexString(vfVar.w));
                    printWriter.print(" mContainerId=#");
                    printWriter.print(Integer.toHexString(vfVar.x));
                    printWriter.print(" mTag=");
                    printWriter.println(vfVar.y);
                    printWriter.print(str3);
                    printWriter.print("mState=");
                    printWriter.print(vfVar.a);
                    printWriter.print(" mWho=");
                    printWriter.print(vfVar.e);
                    printWriter.print(" mBackStackNesting=");
                    printWriter.println(vfVar.r);
                    printWriter.print(str3);
                    printWriter.print("mAdded=");
                    printWriter.print(vfVar.k);
                    printWriter.print(" mRemoving=");
                    printWriter.print(vfVar.l);
                    printWriter.print(" mFromLayout=");
                    printWriter.print(vfVar.m);
                    printWriter.print(" mInLayout=");
                    printWriter.println(vfVar.n);
                    printWriter.print(str3);
                    printWriter.print("mHidden=");
                    printWriter.print(vfVar.z);
                    printWriter.print(" mDetached=");
                    printWriter.print(vfVar.A);
                    printWriter.print(" mMenuVisible=");
                    printWriter.print(vfVar.C);
                    printWriter.print(" mHasMenu=");
                    printWriter.println(false);
                    printWriter.print(str3);
                    printWriter.print("mRetainInstance=");
                    printWriter.print(vfVar.B);
                    printWriter.print(" mUserVisibleHint=");
                    printWriter.println(vfVar.H);
                    if (vfVar.s != null) {
                        printWriter.print(str3);
                        printWriter.print("mFragmentManager=");
                        printWriter.println(vfVar.s);
                    }
                    if (vfVar.t != null) {
                        printWriter.print(str3);
                        printWriter.print("mHost=");
                        printWriter.println(vfVar.t);
                    }
                    if (vfVar.v != null) {
                        printWriter.print(str3);
                        printWriter.print("mParentFragment=");
                        printWriter.println(vfVar.v);
                    }
                    if (vfVar.f != null) {
                        printWriter.print(str3);
                        printWriter.print("mArguments=");
                        printWriter.println(vfVar.f);
                    }
                    if (vfVar.b != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedFragmentState=");
                        printWriter.println(vfVar.b);
                    }
                    if (vfVar.c != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewState=");
                        printWriter.println(vfVar.c);
                    }
                    if (vfVar.d != null) {
                        printWriter.print(str3);
                        printWriter.print("mSavedViewRegistryState=");
                        printWriter.println(vfVar.d);
                    }
                    Object n = vfVar.n();
                    if (n != null) {
                        printWriter.print(str3);
                        printWriter.print("mTarget=");
                        printWriter.print(n);
                        printWriter.print(" mTargetRequestCode=");
                        printWriter.println(vfVar.i);
                    }
                    printWriter.print(str3);
                    printWriter.print("mPopDirection=");
                    tf tfVar = vfVar.I;
                    printWriter.println(tfVar == null ? false : tfVar.a);
                    tf tfVar2 = vfVar.I;
                    if ((tfVar2 == null ? 0 : tfVar2.b) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getEnterAnim=");
                        tf tfVar3 = vfVar.I;
                        printWriter.println(tfVar3 == null ? 0 : tfVar3.b);
                    }
                    tf tfVar4 = vfVar.I;
                    if ((tfVar4 == null ? 0 : tfVar4.c) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getExitAnim=");
                        tf tfVar5 = vfVar.I;
                        printWriter.println(tfVar5 == null ? 0 : tfVar5.c);
                    }
                    tf tfVar6 = vfVar.I;
                    if ((tfVar6 == null ? 0 : tfVar6.d) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopEnterAnim=");
                        tf tfVar7 = vfVar.I;
                        printWriter.println(tfVar7 == null ? 0 : tfVar7.d);
                    }
                    tf tfVar8 = vfVar.I;
                    if ((tfVar8 == null ? 0 : tfVar8.e) != 0) {
                        printWriter.print(str3);
                        printWriter.print("getPopExitAnim=");
                        tf tfVar9 = vfVar.I;
                        printWriter.println(tfVar9 == null ? 0 : tfVar9.e);
                    }
                    if (vfVar.E != null) {
                        printWriter.print(str3);
                        printWriter.print("mContainer=");
                        printWriter.println(vfVar.E);
                    }
                    if (vfVar.F != null) {
                        printWriter.print(str3);
                        printWriter.print("mView=");
                        printWriter.println(vfVar.F);
                    }
                    if (vfVar.h() != null) {
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
                            if (q20Var.c > 0) {
                                printWriter.print(str3);
                                printWriter.println("Loaders:");
                                if (q20Var.c > 0) {
                                    if (q20Var.b[0] != null) {
                                        c2.l();
                                        return;
                                    }
                                    printWriter.print(str3);
                                    printWriter.print("  #");
                                    printWriter.print(q20Var.a[0]);
                                    printWriter.print(": ");
                                    throw null;
                                }
                            }
                        } else {
                            c2.n("Local and anonymous classes can not be ViewModels");
                            return;
                        }
                    }
                    printWriter.print(str3);
                    printWriter.println("Child " + vfVar.u + ":");
                    vfVar.u.t(str3.concat("  "), fileDescriptor, printWriter, strArr);
                } else {
                    printWriter.println("null");
                }
            }
        }
        int size3 = arrayList.size();
        if (size3 > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i = 0; i < size3; i++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(((vf) arrayList.get(i)).toString());
            }
        }
        ArrayList arrayList2 = this.e;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Fragments Created Menus:");
            for (int i2 = 0; i2 < size2; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(((vf) this.e.get(i2)).toString());
            }
        }
        ArrayList arrayList3 = this.d;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            for (int i3 = 0; i3 < size; i3++) {
                e7 e7Var = (e7) this.d.get(i3);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i3);
                printWriter.print(": ");
                printWriter.println(e7Var.toString());
                e7Var.f(str2, printWriter, true);
            }
        }
        printWriter.print(str);
        printWriter.println("Back Stack Index: " + this.i.get());
        synchronized (this.a) {
            try {
                int size4 = this.a.size();
                if (size4 > 0) {
                    printWriter.print(str);
                    printWriter.println("Pending Actions:");
                    for (int i4 = 0; i4 < size4; i4++) {
                        printWriter.print(str);
                        printWriter.print("  #");
                        printWriter.print(i4);
                        printWriter.print(": ");
                        printWriter.println((gg) this.a.get(i4));
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.o);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.p);
        if (this.q != null) {
            printWriter.print(str);
            printWriter.print("  mParent=");
            printWriter.println(this.q);
        }
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.n);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.z);
        printWriter.print(" mStopped=");
        printWriter.print(this.A);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.B);
        if (this.y) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.y);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        vf vfVar = this.q;
        if (vfVar != null) {
            sb.append(vfVar.getClass().getSimpleName());
            sb.append("{");
            sb.append(Integer.toHexString(System.identityHashCode(this.q)));
            sb.append("}");
        } else {
            wf wfVar = this.o;
            if (wfVar != null) {
                sb.append(wfVar.getClass().getSimpleName());
                sb.append("{");
                sb.append(Integer.toHexString(System.identityHashCode(this.o)));
                sb.append("}");
            } else {
                sb.append("null");
            }
        }
        sb.append("}}");
        return sb.toString();
    }

    public final void u(gg ggVar, boolean z) {
        if (!z) {
            if (this.o == null) {
                if (this.B) {
                    c2.g("FragmentManager has been destroyed");
                    return;
                } else {
                    c2.g("FragmentManager has not been attached to a host.");
                    return;
                }
            } else if (this.z || this.A) {
                c2.g("Can not perform this action after onSaveInstanceState");
                return;
            }
        }
        synchronized (this.a) {
            try {
                if (this.o == null) {
                    if (z) {
                        return;
                    }
                    throw new IllegalStateException("Activity has been destroyed");
                }
                this.a.add(ggVar);
                Q();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void v(boolean z) {
        if (!this.b) {
            if (this.o == null) {
                if (this.B) {
                    c2.g("FragmentManager has been destroyed");
                    return;
                } else {
                    c2.g("FragmentManager has not been attached to a host.");
                    return;
                }
            } else if (Looper.myLooper() == this.o.l.getLooper()) {
                if (!z && (this.z || this.A)) {
                    c2.g("Can not perform this action after onSaveInstanceState");
                    return;
                }
                if (this.D == null) {
                    this.D = new ArrayList();
                    this.E = new ArrayList();
                }
                this.b = false;
                return;
            } else {
                c2.g("Must be called from main thread of fragment host");
                return;
            }
        }
        c2.g("FragmentManager is already executing transactions");
    }

    public final boolean w(boolean z) {
        boolean z2;
        ArrayList arrayList;
        v(z);
        boolean z3 = false;
        while (true) {
            ArrayList arrayList2 = this.D;
            ArrayList arrayList3 = this.E;
            synchronized (this.a) {
                try {
                    if (this.a.isEmpty()) {
                        z2 = false;
                    } else {
                        int size = this.a.size();
                        int i = 0;
                        z2 = false;
                        while (true) {
                            arrayList = this.a;
                            if (i >= size) {
                                break;
                            }
                            z2 |= ((gg) arrayList.get(i)).a(arrayList2, arrayList3);
                            i++;
                        }
                        arrayList.clear();
                        this.o.l.removeCallbacks(this.H);
                    }
                } finally {
                }
            }
            if (!z2) {
                break;
            }
            z3 = true;
            this.b = true;
            try {
                N(this.D, this.E);
            } finally {
                d();
            }
        }
        Y();
        if (this.C) {
            this.C = false;
            X();
        }
        ((HashMap) this.c.b).values().removeAll(Collections.singleton(null));
        return z3;
    }

    public final void x(ArrayList arrayList, ArrayList arrayList2, int i, int i2) {
        ViewGroup viewGroup;
        boolean z;
        int i3;
        int i4;
        int i5;
        boolean z2;
        v5 v5Var = this.c;
        boolean z3 = ((e7) arrayList.get(i)).p;
        ArrayList arrayList3 = this.F;
        if (arrayList3 == null) {
            this.F = new ArrayList();
        } else {
            arrayList3.clear();
        }
        this.F.addAll(v5Var.u());
        vf vfVar = this.r;
        int i6 = i;
        boolean z4 = false;
        while (true) {
            int i7 = 1;
            if (i6 < i2) {
                e7 e7Var = (e7) arrayList.get(i6);
                boolean booleanValue = ((Boolean) arrayList2.get(i6)).booleanValue();
                ArrayList arrayList4 = this.F;
                if (!booleanValue) {
                    ArrayList arrayList5 = e7Var.a;
                    int i8 = 0;
                    while (i8 < arrayList5.size()) {
                        og ogVar = (og) arrayList5.get(i8);
                        int i9 = ogVar.a;
                        if (i9 != i7) {
                            int i10 = i7;
                            if (i9 != 2) {
                                if (i9 == 3 || i9 == 6) {
                                    arrayList4.remove(ogVar.b);
                                    vf vfVar2 = ogVar.b;
                                    if (vfVar2 == vfVar) {
                                        arrayList5.add(i8, new og(9, vfVar2));
                                        i8++;
                                        z2 = z3;
                                        i4 = i6;
                                        i5 = i10;
                                        vfVar = null;
                                    }
                                } else if (i9 == 7) {
                                    i4 = i6;
                                    i5 = i10;
                                } else if (i9 == 8) {
                                    arrayList5.add(i8, new og(9, vfVar));
                                    i8++;
                                    vfVar = ogVar.b;
                                }
                                z2 = z3;
                                i4 = i6;
                                i5 = i10;
                            } else {
                                vf vfVar3 = ogVar.b;
                                int i11 = vfVar3.x;
                                z2 = z3;
                                vf vfVar4 = vfVar;
                                int size = arrayList4.size() - 1;
                                int i12 = 0;
                                while (size >= 0) {
                                    int i13 = size;
                                    vf vfVar5 = (vf) arrayList4.get(size);
                                    int i14 = i6;
                                    if (vfVar5.x == i11) {
                                        if (vfVar5 == vfVar3) {
                                            i12 = i10;
                                        } else {
                                            if (vfVar5 == vfVar4) {
                                                arrayList5.add(i8, new og(9, vfVar5));
                                                i8++;
                                                vfVar4 = null;
                                            }
                                            og ogVar2 = new og(3, vfVar5);
                                            ogVar2.c = ogVar.c;
                                            ogVar2.e = ogVar.e;
                                            ogVar2.d = ogVar.d;
                                            ogVar2.f = ogVar.f;
                                            arrayList5.add(i8, ogVar2);
                                            arrayList4.remove(vfVar5);
                                            i8++;
                                            vfVar4 = vfVar4;
                                        }
                                    }
                                    size = i13 - 1;
                                    i6 = i14;
                                }
                                i4 = i6;
                                if (i12 != 0) {
                                    arrayList5.remove(i8);
                                    i8--;
                                    i5 = i10;
                                } else {
                                    i5 = i10;
                                    ogVar.a = i5;
                                    arrayList4.add(vfVar3);
                                }
                                vfVar = vfVar4;
                            }
                            i8 += i5;
                            i7 = i5;
                            z3 = z2;
                            i6 = i4;
                        } else {
                            i4 = i6;
                            i5 = i7;
                        }
                        z2 = z3;
                        arrayList4.add(ogVar.b);
                        i8 += i5;
                        i7 = i5;
                        z3 = z2;
                        i6 = i4;
                    }
                    z = z3;
                    i3 = i6;
                } else {
                    z = z3;
                    i3 = i6;
                    int i15 = 1;
                    ArrayList arrayList6 = e7Var.a;
                    int size2 = arrayList6.size() - 1;
                    while (size2 >= 0) {
                        og ogVar3 = (og) arrayList6.get(size2);
                        int i16 = ogVar3.a;
                        if (i16 != i15) {
                            if (i16 != 3) {
                                switch (i16) {
                                    case 8:
                                        vfVar = null;
                                        break;
                                    case 9:
                                        vfVar = ogVar3.b;
                                        break;
                                    case 10:
                                        ogVar3.h = ogVar3.g;
                                        break;
                                }
                                size2--;
                                i15 = 1;
                            }
                            arrayList4.add(ogVar3.b);
                            size2--;
                            i15 = 1;
                        }
                        arrayList4.remove(ogVar3.b);
                        size2--;
                        i15 = 1;
                    }
                }
                z4 = z4 || e7Var.g;
                i6 = i3 + 1;
                z3 = z;
            } else {
                boolean z5 = z3;
                this.F.clear();
                if (!z5 && this.n >= 1) {
                    for (int i17 = i; i17 < i2; i17++) {
                        ArrayList arrayList7 = ((e7) arrayList.get(i17)).a;
                        int size3 = arrayList7.size();
                        int i18 = 0;
                        while (i18 < size3) {
                            Object obj = arrayList7.get(i18);
                            i18++;
                            vf vfVar6 = ((og) obj).b;
                            if (vfVar6 != null && vfVar6.s != null) {
                                v5Var.A(f(vfVar6));
                            }
                        }
                    }
                }
                for (int i19 = i; i19 < i2; i19++) {
                    e7 e7Var2 = (e7) arrayList.get(i19);
                    if (((Boolean) arrayList2.get(i19)).booleanValue()) {
                        e7Var2.c(-1);
                        a aVar = e7Var2.q;
                        ArrayList arrayList8 = e7Var2.a;
                        boolean z6 = true;
                        for (int size4 = arrayList8.size() - 1; size4 >= 0; size4--) {
                            og ogVar4 = (og) arrayList8.get(size4);
                            vf vfVar7 = ogVar4.b;
                            if (vfVar7 != null) {
                                if (vfVar7.I != null) {
                                    vfVar7.d().a = z6;
                                }
                                int i20 = e7Var2.f;
                                int i21 = i20 != 4097 ? i20 != 4099 ? i20 != 8194 ? 0 : 4097 : 4099 : 8194;
                                if (vfVar7.I != null || i21 != 0) {
                                    vfVar7.d();
                                    vfVar7.I.f = i21;
                                }
                                vfVar7.d();
                                vfVar7.I.getClass();
                            }
                            switch (ogVar4.a) {
                                case 1:
                                    vfVar7.I(ogVar4.c, ogVar4.d, ogVar4.e, ogVar4.f);
                                    z6 = true;
                                    aVar.R(vfVar7, true);
                                    aVar.M(vfVar7);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + ogVar4.a);
                                case 3:
                                    vfVar7.I(ogVar4.c, ogVar4.d, ogVar4.e, ogVar4.f);
                                    aVar.a(vfVar7);
                                    z6 = true;
                                    break;
                                case 4:
                                    vfVar7.I(ogVar4.c, ogVar4.d, ogVar4.e, ogVar4.f);
                                    aVar.getClass();
                                    W(vfVar7);
                                    z6 = true;
                                    break;
                                case 5:
                                    vfVar7.I(ogVar4.c, ogVar4.d, ogVar4.e, ogVar4.f);
                                    aVar.R(vfVar7, true);
                                    aVar.D(vfVar7);
                                    z6 = true;
                                    break;
                                case 6:
                                    vfVar7.I(ogVar4.c, ogVar4.d, ogVar4.e, ogVar4.f);
                                    aVar.c(vfVar7);
                                    z6 = true;
                                    break;
                                case 7:
                                    vfVar7.I(ogVar4.c, ogVar4.d, ogVar4.e, ogVar4.f);
                                    aVar.R(vfVar7, true);
                                    aVar.g(vfVar7);
                                    z6 = true;
                                    break;
                                case 8:
                                    aVar.U(null);
                                    z6 = true;
                                    break;
                                case 9:
                                    aVar.U(vfVar7);
                                    z6 = true;
                                    break;
                                case 10:
                                    aVar.T(vfVar7, ogVar4.g);
                                    z6 = true;
                                    break;
                            }
                        }
                    } else {
                        e7Var2.c(1);
                        a aVar2 = e7Var2.q;
                        ArrayList arrayList9 = e7Var2.a;
                        int size5 = arrayList9.size();
                        for (int i22 = 0; i22 < size5; i22++) {
                            og ogVar5 = (og) arrayList9.get(i22);
                            vf vfVar8 = ogVar5.b;
                            if (vfVar8 != null) {
                                if (vfVar8.I != null) {
                                    vfVar8.d().a = false;
                                }
                                int i23 = e7Var2.f;
                                if (vfVar8.I != null || i23 != 0) {
                                    vfVar8.d();
                                    vfVar8.I.f = i23;
                                }
                                vfVar8.d();
                                vfVar8.I.getClass();
                            }
                            switch (ogVar5.a) {
                                case 1:
                                    vfVar8.I(ogVar5.c, ogVar5.d, ogVar5.e, ogVar5.f);
                                    aVar2.R(vfVar8, false);
                                    aVar2.a(vfVar8);
                                    break;
                                case 2:
                                default:
                                    throw new IllegalArgumentException("Unknown cmd: " + ogVar5.a);
                                case 3:
                                    vfVar8.I(ogVar5.c, ogVar5.d, ogVar5.e, ogVar5.f);
                                    aVar2.M(vfVar8);
                                    break;
                                case 4:
                                    vfVar8.I(ogVar5.c, ogVar5.d, ogVar5.e, ogVar5.f);
                                    aVar2.D(vfVar8);
                                    break;
                                case 5:
                                    vfVar8.I(ogVar5.c, ogVar5.d, ogVar5.e, ogVar5.f);
                                    aVar2.R(vfVar8, false);
                                    W(vfVar8);
                                    break;
                                case 6:
                                    vfVar8.I(ogVar5.c, ogVar5.d, ogVar5.e, ogVar5.f);
                                    aVar2.g(vfVar8);
                                    break;
                                case 7:
                                    vfVar8.I(ogVar5.c, ogVar5.d, ogVar5.e, ogVar5.f);
                                    aVar2.R(vfVar8, false);
                                    aVar2.c(vfVar8);
                                    break;
                                case 8:
                                    aVar2.U(vfVar8);
                                    break;
                                case 9:
                                    aVar2.U(null);
                                    break;
                                case 10:
                                    aVar2.T(vfVar8, ogVar5.h);
                                    break;
                            }
                        }
                    }
                }
                boolean booleanValue2 = ((Boolean) arrayList2.get(i2 - 1)).booleanValue();
                for (int i24 = i; i24 < i2; i24++) {
                    e7 e7Var3 = (e7) arrayList.get(i24);
                    if (booleanValue2) {
                        for (int size6 = e7Var3.a.size() - 1; size6 >= 0; size6--) {
                            vf vfVar9 = ((og) e7Var3.a.get(size6)).b;
                            if (vfVar9 != null) {
                                f(vfVar9).k();
                            }
                        }
                    } else {
                        ArrayList arrayList10 = e7Var3.a;
                        int size7 = arrayList10.size();
                        int i25 = 0;
                        while (i25 < size7) {
                            Object obj2 = arrayList10.get(i25);
                            i25++;
                            vf vfVar10 = ((og) obj2).b;
                            if (vfVar10 != null) {
                                f(vfVar10).k();
                            }
                        }
                    }
                }
                I(this.n, true);
                HashSet hashSet = new HashSet();
                for (int i26 = i; i26 < i2; i26++) {
                    ArrayList arrayList11 = ((e7) arrayList.get(i26)).a;
                    int size8 = arrayList11.size();
                    int i27 = 0;
                    while (i27 < size8) {
                        Object obj3 = arrayList11.get(i27);
                        i27++;
                        vf vfVar11 = ((og) obj3).b;
                        if (vfVar11 != null && (viewGroup = vfVar11.E) != null) {
                            hashSet.add(gc.f(viewGroup, C()));
                        }
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    gc gcVar = (gc) it.next();
                    gcVar.d = booleanValue2;
                    synchronized (gcVar.b) {
                        try {
                            gcVar.g();
                            gcVar.e = false;
                            int size9 = gcVar.b.size() - 1;
                            while (true) {
                                if (size9 >= 0) {
                                    s20 s20Var = (s20) gcVar.b.get(size9);
                                    int c = t20.c(s20Var.c.F);
                                    if (s20Var.a != 2 || c == 2) {
                                        size9--;
                                    } else {
                                        s20Var.c.getClass();
                                        gcVar.e = false;
                                    }
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    gcVar.c();
                }
                for (int i28 = i; i28 < i2; i28++) {
                    e7 e7Var4 = (e7) arrayList.get(i28);
                    if (((Boolean) arrayList2.get(i28)).booleanValue() && e7Var4.s >= 0) {
                        e7Var4.s = -1;
                    }
                    e7Var4.getClass();
                }
                return;
            }
        }
    }

    public final vf y(int i) {
        v5 v5Var = this.c;
        ArrayList arrayList = (ArrayList) v5Var.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            vf vfVar = (vf) arrayList.get(size);
            if (vfVar != null && vfVar.w == i) {
                return vfVar;
            }
        }
        for (b bVar : ((HashMap) v5Var.b).values()) {
            if (bVar != null) {
                vf vfVar2 = bVar.c;
                if (vfVar2.w == i) {
                    return vfVar2;
                }
            }
        }
        return null;
    }

    public final vf z(String str) {
        v5 v5Var = this.c;
        ArrayList arrayList = (ArrayList) v5Var.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            vf vfVar = (vf) arrayList.get(size);
            if (vfVar != null && str.equals(vfVar.y)) {
                return vfVar;
            }
        }
        for (b bVar : ((HashMap) v5Var.b).values()) {
            if (bVar != null) {
                vf vfVar2 = bVar.c;
                if (str.equals(vfVar2.y)) {
                    return vfVar2;
                }
            }
        }
        return null;
    }
}
