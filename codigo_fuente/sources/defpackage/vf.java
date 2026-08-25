package defpackage;

import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.a;
import androidx.lifecycle.b;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: vf  reason: default package */
/* loaded from: classes.dex */
public abstract class vf implements ComponentCallbacks, View.OnCreateContextMenuListener, sk, c80, xh, vz {
    public static final Object S = new Object();
    public boolean A;
    public boolean B;
    public boolean D;
    public ViewGroup E;
    public View F;
    public boolean G;
    public tf I;
    public boolean J;
    public LayoutInflater K;
    public boolean L;
    public a N;
    public pg O;
    public qg Q;
    public final ArrayList R;
    public Bundle b;
    public SparseArray c;
    public Bundle d;
    public Bundle f;
    public vf g;
    public int i;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public boolean q;
    public int r;
    public androidx.fragment.app.a s;
    public wf t;
    public vf v;
    public int w;
    public int x;
    public String y;
    public boolean z;
    public int a = -1;
    public String e = UUID.randomUUID().toString();
    public String h = null;
    public Boolean j = null;
    public ig u = new androidx.fragment.app.a();
    public final boolean C = true;
    public boolean H = true;
    public mk M = mk.e;
    public final b P = new b();

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.fragment.app.a, ig] */
    public vf() {
        new AtomicInteger();
        this.R = new ArrayList();
        this.N = new a(this);
        this.Q = new qg(this);
    }

    public abstract void A();

    public abstract void B();

    public void D(Bundle bundle) {
        this.D = true;
    }

    public void E(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.u.J();
        this.q = true;
        this.O = new pg(e());
        View s = s(layoutInflater, viewGroup);
        this.F = s;
        pg pgVar = this.O;
        if (s != null) {
            pgVar.d();
            View view = this.F;
            pg pgVar2 = this.O;
            view.getClass();
            view.setTag(R.id.view_tree_lifecycle_owner, pgVar2);
            View view2 = this.F;
            pg pgVar3 = this.O;
            view2.getClass();
            view2.setTag(R.id.view_tree_view_model_store_owner, pgVar3);
            View view3 = this.F;
            pg pgVar4 = this.O;
            view3.getClass();
            view3.setTag(R.id.view_tree_saved_state_registry_owner, pgVar4);
            this.P.e(this.O);
        } else if (pgVar.b == null) {
            this.O = null;
        } else {
            c2.g("Called getViewLifecycleOwner() but onCreateView() returned null");
        }
    }

    public final z2 F() {
        z2 z2Var;
        wf wfVar = this.t;
        if (wfVar == null) {
            z2Var = null;
        } else {
            z2Var = wfVar.j;
        }
        if (z2Var != null) {
            return z2Var;
        }
        c2.g(t20.e("Fragment ", this, " not attached to an activity."));
        return null;
    }

    public final Context G() {
        Context h = h();
        if (h != null) {
            return h;
        }
        c2.g(t20.e("Fragment ", this, " not attached to a context."));
        return null;
    }

    public final View H() {
        View view = this.F;
        if (view != null) {
            return view;
        }
        c2.g(t20.e("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
        return null;
    }

    public final void I(int i, int i2, int i3, int i4) {
        if (this.I == null && i == 0 && i2 == 0 && i3 == 0 && i4 == 0) {
            return;
        }
        d().b = i;
        d().c = i2;
        d().d = i3;
        d().e = i4;
    }

    public final void J(Bundle bundle) {
        androidx.fragment.app.a aVar = this.s;
        if (aVar != null && (aVar.z || aVar.A)) {
            c2.g("Fragment already added and state has been saved");
        } else {
            this.f = bundle;
        }
    }

    public final void K(vf vfVar) {
        androidx.fragment.app.a aVar;
        androidx.fragment.app.a aVar2 = this.s;
        if (vfVar != null) {
            aVar = vfVar.s;
        } else {
            aVar = null;
        }
        if (aVar2 != null && aVar != null && aVar2 != aVar) {
            c2.n(t20.e("Fragment ", vfVar, " must share the same FragmentManager to be set as a target fragment"));
            return;
        }
        for (vf vfVar2 = vfVar; vfVar2 != null; vfVar2 = vfVar2.n()) {
            if (vfVar2 == this) {
                throw new IllegalArgumentException("Setting " + vfVar + " as the target of " + this + " would create a target cycle");
            }
        }
        if (vfVar == null) {
            this.h = null;
            this.g = null;
        } else if (this.s != null && vfVar.s != null) {
            this.h = vfVar.e;
            this.g = null;
        } else {
            this.h = null;
            this.g = vfVar;
        }
        this.i = 0;
    }

    public final void L(Intent intent) {
        wf wfVar = this.t;
        if (wfVar != null) {
            xa.b(wfVar.k, intent, null);
        } else {
            c2.g(t20.e("Fragment ", this, " not attached to Activity"));
        }
    }

    @Override // defpackage.vz
    public final f3 a() {
        return (f3) this.Q.c;
    }

    public s8 b() {
        return new sf(this);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [tf, java.lang.Object] */
    public final tf d() {
        if (this.I == null) {
            ?? obj = new Object();
            Object obj2 = S;
            obj.g = obj2;
            obj.h = obj2;
            obj.i = obj2;
            obj.j = 1.0f;
            obj.k = null;
            this.I = obj;
        }
        return this.I;
    }

    @Override // defpackage.c80
    public final b80 e() {
        if (this.s != null) {
            if (i() != 1) {
                HashMap hashMap = this.s.G.e;
                b80 b80Var = (b80) hashMap.get(this.e);
                if (b80Var == null) {
                    b80 b80Var2 = new b80();
                    hashMap.put(this.e, b80Var2);
                    return b80Var2;
                }
                return b80Var;
            }
            c2.g("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
            return null;
        }
        c2.g("Can't access ViewModels from detached fragment");
        return null;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return false;
        }
        return true;
    }

    @Override // defpackage.sk
    public final a f() {
        return this.N;
    }

    public final androidx.fragment.app.a g() {
        if (this.t != null) {
            return this.u;
        }
        c2.g(t20.e("Fragment ", this, " has not been attached yet."));
        return null;
    }

    public final Context h() {
        wf wfVar = this.t;
        if (wfVar == null) {
            return null;
        }
        return wfVar.k;
    }

    public final int i() {
        mk mkVar = this.M;
        if (mkVar != mk.b && this.v != null) {
            return Math.min(mkVar.ordinal(), this.v.i());
        }
        return mkVar.ordinal();
    }

    public final androidx.fragment.app.a j() {
        androidx.fragment.app.a aVar = this.s;
        if (aVar != null) {
            return aVar;
        }
        c2.g(t20.e("Fragment ", this, " not associated with a fragment manager."));
        return null;
    }

    public final Resources k() {
        return G().getResources();
    }

    public final String l(int i) {
        return k().getString(i);
    }

    public final String m(int i, Object... objArr) {
        return k().getString(i, objArr);
    }

    public final vf n() {
        String str;
        vf vfVar = this.g;
        if (vfVar != null) {
            return vfVar;
        }
        androidx.fragment.app.a aVar = this.s;
        if (aVar != null && (str = this.h) != null) {
            return aVar.c.l(str);
        }
        return null;
    }

    public final boolean o() {
        if (this.t != null && this.k) {
            return true;
        }
        return false;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        this.D = true;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public final void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        F().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        this.D = true;
    }

    public final void p(int i, int i2, Intent intent) {
        if (androidx.fragment.app.a.E(2)) {
            Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i + " resultCode: " + i2 + " data: " + intent);
        }
    }

    public void q(Context context) {
        z2 z2Var;
        this.D = true;
        wf wfVar = this.t;
        if (wfVar == null) {
            z2Var = null;
        } else {
            z2Var = wfVar.j;
        }
        if (z2Var != null) {
            this.D = true;
        }
    }

    public abstract void r(Bundle bundle);

    public View s(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        return null;
    }

    public void t() {
        this.D = true;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append("{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("} (");
        sb.append(this.e);
        if (this.w != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(this.w));
        }
        if (this.y != null) {
            sb.append(" tag=");
            sb.append(this.y);
        }
        sb.append(")");
        return sb.toString();
    }

    public abstract void u();

    public void v() {
        this.D = true;
    }

    public LayoutInflater w(Bundle bundle) {
        wf wfVar = this.t;
        if (wfVar != null) {
            z2 z2Var = wfVar.n;
            LayoutInflater cloneInContext = z2Var.getLayoutInflater().cloneInContext(z2Var);
            cloneInContext.setFactory2(this.u.f);
            return cloneInContext;
        }
        c2.g("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        return null;
    }

    public void x() {
        this.D = true;
    }

    public void y() {
        this.D = true;
    }

    public abstract void z(Bundle bundle);

    public void C(Bundle bundle) {
    }
}
