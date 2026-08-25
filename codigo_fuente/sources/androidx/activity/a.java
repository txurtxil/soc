package androidx.activity;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Trace;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.window.OnBackInvokedDispatcher;
import androidx.activity.a;
import androidx.lifecycle.SavedStateHandleAttacher;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes.dex */
public abstract class a extends ka implements c80, xh, vz {
    public final wa b;
    public final ko c;
    public final androidx.lifecycle.a d;
    public final qg e;
    public b80 f;
    public b g;
    public final ja h;
    public final qg i;
    public final AtomicInteger j;
    public final ga k;
    public final CopyOnWriteArrayList l;
    public final CopyOnWriteArrayList m;
    public final CopyOnWriteArrayList n;
    public final CopyOnWriteArrayList o;
    public final CopyOnWriteArrayList q;
    public boolean r;
    public boolean s;

    public a() {
        this.a = new androidx.lifecycle.a(this);
        this.b = new wa();
        this.c = new ko(new m1(4, this));
        androidx.lifecycle.a aVar = new androidx.lifecycle.a(this);
        this.d = aVar;
        qg qgVar = new qg(this);
        this.e = qgVar;
        uz uzVar = null;
        this.g = null;
        ja jaVar = new ja(this);
        this.h = jaVar;
        this.i = new qg(jaVar, new y6(1, this));
        this.j = new AtomicInteger();
        this.k = new ga(this);
        this.l = new CopyOnWriteArrayList();
        this.m = new CopyOnWriteArrayList();
        this.n = new CopyOnWriteArrayList();
        this.o = new CopyOnWriteArrayList();
        this.q = new CopyOnWriteArrayList();
        this.r = false;
        this.s = false;
        aVar.a(new qk() { // from class: androidx.activity.ComponentActivity$2
            @Override // defpackage.qk
            public final void g(sk skVar, lk lkVar) {
                View view;
                if (lkVar == lk.ON_STOP) {
                    Window window = a.this.getWindow();
                    if (window != null) {
                        view = window.peekDecorView();
                    } else {
                        view = null;
                    }
                    if (view != null) {
                        view.cancelPendingInputEvents();
                    }
                }
            }
        });
        aVar.a(new qk() { // from class: androidx.activity.ComponentActivity$3
            @Override // defpackage.qk
            public final void g(sk skVar, lk lkVar) {
                if (lkVar == lk.ON_DESTROY) {
                    a.this.b.b = null;
                    if (!a.this.isChangingConfigurations()) {
                        a.this.e().a();
                    }
                    ja jaVar2 = a.this.h;
                    a aVar2 = jaVar2.d;
                    aVar2.getWindow().getDecorView().removeCallbacks(jaVar2);
                    aVar2.getWindow().getDecorView().getViewTreeObserver().removeOnDrawListener(jaVar2);
                }
            }
        });
        aVar.a(new qk() { // from class: androidx.activity.ComponentActivity$4
            @Override // defpackage.qk
            public final void g(sk skVar, lk lkVar) {
                a aVar2 = a.this;
                if (aVar2.f == null) {
                    ia iaVar = (ia) aVar2.getLastNonConfigurationInstance();
                    if (iaVar != null) {
                        aVar2.f = iaVar.a;
                    }
                    if (aVar2.f == null) {
                        aVar2.f = new b80();
                    }
                }
                aVar2.d.b(this);
            }
        });
        qgVar.a();
        mk mkVar = aVar.c;
        if (mkVar != mk.b && mkVar != mk.c) {
            c2.n("Failed requirement.");
            throw null;
        }
        f3 f3Var = (f3) qgVar.c;
        f3Var.getClass();
        Iterator it = ((pz) f3Var.f).iterator();
        while (true) {
            lz lzVar = (lz) it;
            if (!lzVar.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) lzVar.next();
            entry.getClass();
            uz uzVar2 = (uz) entry.getValue();
            if (qj.c((String) entry.getKey(), "androidx.lifecycle.internal.SavedStateHandlesProvider")) {
                uzVar = uzVar2;
                break;
            }
        }
        if (uzVar == null) {
            qz qzVar = new qz((f3) this.e.c, this);
            ((f3) this.e.c).e("androidx.lifecycle.internal.SavedStateHandlesProvider", qzVar);
            this.d.a(new SavedStateHandleAttacher(qzVar));
        }
        ((f3) this.e.c).e("android:support:activity-result", new uz() { // from class: ea
            @Override // defpackage.uz
            public final Bundle a() {
                Bundle bundle = new Bundle();
                ga gaVar = a.this.k;
                gaVar.getClass();
                HashMap hashMap = gaVar.b;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(hashMap.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(hashMap.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(gaVar.d));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) gaVar.g.clone());
                return bundle;
            }
        });
        g(new js() { // from class: fa
            @Override // defpackage.js
            public final void a() {
                a aVar2 = a.this;
                Bundle c = ((f3) aVar2.e.c).c("android:support:activity-result");
                if (c != null) {
                    ga gaVar = aVar2.k;
                    HashMap hashMap = gaVar.b;
                    HashMap hashMap2 = gaVar.a;
                    Bundle bundle = gaVar.g;
                    ArrayList<Integer> integerArrayList = c.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = c.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList != null && integerArrayList != null) {
                        gaVar.d = c.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                        bundle.putAll(c.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
                        for (int i = 0; i < stringArrayList.size(); i++) {
                            String str = stringArrayList.get(i);
                            if (hashMap.containsKey(str)) {
                                Integer num = (Integer) hashMap.remove(str);
                                if (!bundle.containsKey(str)) {
                                    hashMap2.remove(num);
                                }
                            }
                            Integer num2 = integerArrayList.get(i);
                            num2.intValue();
                            String str2 = stringArrayList.get(i);
                            hashMap2.put(num2, str2);
                            gaVar.b.put(str2, num2);
                        }
                    }
                }
            }
        });
    }

    @Override // defpackage.vz
    public final f3 a() {
        return (f3) this.e.c;
    }

    @Override // android.app.Activity
    public void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        i();
        this.h.a(getWindow().getDecorView());
        super.addContentView(view, layoutParams);
    }

    @Override // defpackage.xh
    public final ib c() {
        hb hbVar = hb.b;
        hbVar.getClass();
        ib ibVar = new ib();
        ((LinkedHashMap) ibVar.a).putAll((LinkedHashMap) hbVar.a);
        LinkedHashMap linkedHashMap = (LinkedHashMap) ibVar.a;
        if (getApplication() != null) {
            linkedHashMap.put(hd.c, getApplication());
        }
        linkedHashMap.put(em.k, this);
        linkedHashMap.put(em.l, this);
        if (getIntent() != null && getIntent().getExtras() != null) {
            linkedHashMap.put(em.m, getIntent().getExtras());
        }
        return ibVar;
    }

    @Override // defpackage.c80
    public final b80 e() {
        if (getApplication() != null) {
            if (this.f == null) {
                ia iaVar = (ia) getLastNonConfigurationInstance();
                if (iaVar != null) {
                    this.f = iaVar.a;
                }
                if (this.f == null) {
                    this.f = new b80();
                }
            }
            return this.f;
        }
        c2.g("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        return null;
    }

    @Override // defpackage.sk
    public final androidx.lifecycle.a f() {
        return this.d;
    }

    public final void g(js jsVar) {
        wa waVar = this.b;
        waVar.getClass();
        if (waVar.b != null) {
            jsVar.a();
        }
        waVar.a.add(jsVar);
    }

    public final b h() {
        if (this.g == null) {
            this.g = new b(new c7(2, this));
            this.d.a(new qk() { // from class: androidx.activity.ComponentActivity$6
                @Override // defpackage.qk
                public final void g(sk skVar, lk lkVar) {
                    if (lkVar == lk.ON_CREATE && Build.VERSION.SDK_INT >= 33) {
                        b bVar = a.this.g;
                        OnBackInvokedDispatcher a = ha.a((a) skVar);
                        bVar.getClass();
                        a.getClass();
                        bVar.e = a;
                        bVar.c(bVar.g);
                    }
                }
            });
        }
        return this.g;
    }

    public final void i() {
        View decorView = getWindow().getDecorView();
        decorView.getClass();
        decorView.setTag(R.id.view_tree_lifecycle_owner, this);
        View decorView2 = getWindow().getDecorView();
        decorView2.getClass();
        decorView2.setTag(R.id.view_tree_view_model_store_owner, this);
        View decorView3 = getWindow().getDecorView();
        decorView3.getClass();
        decorView3.setTag(R.id.view_tree_saved_state_registry_owner, this);
        View decorView4 = getWindow().getDecorView();
        decorView4.getClass();
        decorView4.setTag(R.id.view_tree_on_back_pressed_dispatcher_owner, this);
        View decorView5 = getWindow().getDecorView();
        decorView5.getClass();
        decorView5.setTag(R.id.report_drawn, this);
    }

    public final u1 j(s1 s1Var, em emVar) {
        return this.k.c("activity_rq#" + this.j.getAndIncrement(), this, emVar, s1Var);
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        if (!this.k.a(i, i2, intent)) {
            super.onActivityResult(i, i2, intent);
        }
    }

    @Override // android.app.Activity
    public final void onBackPressed() {
        h().b();
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        Iterator it = this.l.iterator();
        while (it.hasNext()) {
            ((gf) it.next()).a(configuration);
        }
    }

    @Override // defpackage.ka, android.app.Activity
    public void onCreate(Bundle bundle) {
        this.e.b(bundle);
        wa waVar = this.b;
        waVar.getClass();
        waVar.b = this;
        Iterator it = waVar.a.iterator();
        while (it.hasNext()) {
            ((js) it.next()).a();
        }
        super.onCreate(bundle);
        int i = lx.b;
        jx.b(this);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            super.onCreatePanelMenu(i, menu);
            getMenuInflater();
            Iterator it = ((CopyOnWriteArrayList) this.c.c).iterator();
            if (it.hasNext()) {
                it.next().getClass();
                c2.l();
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            Iterator it = ((CopyOnWriteArrayList) this.c.c).iterator();
            if (it.hasNext()) {
                it.next().getClass();
                c2.l();
            }
        }
        return false;
    }

    @Override // android.app.Activity
    public final void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        this.r = true;
        try {
            super.onMultiWindowModeChanged(z, configuration);
            this.r = false;
            Iterator it = this.o.iterator();
            while (it.hasNext()) {
                ((gf) it.next()).a(new hd(20));
            }
        } catch (Throwable th) {
            this.r = false;
            throw th;
        }
    }

    @Override // android.app.Activity
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        Iterator it = this.n.iterator();
        while (it.hasNext()) {
            ((gf) it.next()).a(intent);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, Menu menu) {
        Iterator it = ((CopyOnWriteArrayList) this.c.c).iterator();
        if (!it.hasNext()) {
            super.onPanelClosed(i, menu);
            return;
        }
        it.next().getClass();
        c2.l();
    }

    @Override // android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        this.s = true;
        try {
            super.onPictureInPictureModeChanged(z, configuration);
            this.s = false;
            Iterator it = this.q.iterator();
            while (it.hasNext()) {
                ((gf) it.next()).a(new hd(21));
            }
        } catch (Throwable th) {
            this.s = false;
            throw th;
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, View view, Menu menu) {
        if (i == 0) {
            super.onPreparePanel(i, view, menu);
            Iterator it = ((CopyOnWriteArrayList) this.c.c).iterator();
            if (it.hasNext()) {
                it.next().getClass();
                c2.l();
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        if (!this.k.a(i, -1, new Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr))) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [ia, java.lang.Object] */
    @Override // android.app.Activity
    public final Object onRetainNonConfigurationInstance() {
        ia iaVar;
        b80 b80Var = this.f;
        if (b80Var == null && (iaVar = (ia) getLastNonConfigurationInstance()) != null) {
            b80Var = iaVar.a;
        }
        if (b80Var == null) {
            return null;
        }
        ?? obj = new Object();
        obj.a = b80Var;
        return obj;
    }

    @Override // defpackage.ka, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        androidx.lifecycle.a aVar = this.d;
        if (aVar != null) {
            aVar.d("setCurrentState");
            aVar.f(mk.c);
        }
        super.onSaveInstanceState(bundle);
        this.e.c(bundle);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        super.onTrimMemory(i);
        Iterator it = this.m.iterator();
        while (it.hasNext()) {
            ((gf) it.next()).a(Integer.valueOf(i));
        }
    }

    @Override // android.app.Activity
    public final void reportFullyDrawn() {
        try {
            if (gn.s()) {
                Trace.beginSection("reportFullyDrawn() for ComponentActivity");
            }
            super.reportFullyDrawn();
            qg qgVar = this.i;
            synchronized (qgVar.b) {
                qgVar.a = true;
                ArrayList arrayList = (ArrayList) qgVar.c;
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    ((rg) obj).a();
                }
                ((ArrayList) qgVar.c).clear();
            }
        } finally {
            Trace.endSection();
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        i();
        this.h.a(getWindow().getDecorView());
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(View view) {
        i();
        this.h.a(getWindow().getDecorView());
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        i();
        this.h.a(getWindow().getDecorView());
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        if (this.r) {
            return;
        }
        Iterator it = this.o.iterator();
        while (it.hasNext()) {
            ((gf) it.next()).a(new hd(20));
        }
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        if (this.s) {
            return;
        }
        Iterator it = this.q.iterator();
        while (it.hasNext()) {
            ((gf) it.next()).a(new hd(21));
        }
    }
}
