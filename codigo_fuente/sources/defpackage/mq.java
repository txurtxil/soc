package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.PorterDuff;
import android.os.Handler;
import android.os.Looper;
import android.provider.Settings;
import android.util.Log;
import androidx.car.app.b;
import androidx.car.app.i;
import androidx.car.app.model.Action;
import androidx.car.app.model.ActionStrip;
import androidx.car.app.model.CarIcon;
import androidx.car.app.model.CarText;
import androidx.car.app.model.OnClickDelegateImpl;
import androidx.car.app.model.TemplateWrapper;
import androidx.car.app.navigation.model.NavigationTemplate;
import androidx.car.app.utils.e;
import androidx.core.graphics.drawable.IconCompat;
import androidx.lifecycle.a;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
/* renamed from: mq  reason: default package */
/* loaded from: classes.dex */
public final class mq implements sk {
    public final i a;
    public final a b;
    public final c2 c;
    public TemplateWrapper d;
    public boolean e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public final Handler l;
    public final long m;
    public boolean n;
    public final SharedPreferences o;
    public final iq q;

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, c2] */
    public mq(i iVar) {
        iVar.getClass();
        this.b = new a(this);
        this.c = new Object();
        Objects.requireNonNull(iVar);
        this.a = iVar;
        this.f = 1;
        this.g = 1;
        this.l = new Handler(Looper.getMainLooper());
        this.m = 150L;
        ko koVar = new ko(this, iVar, 15, false);
        this.o = lu.a(iVar.getApplicationContext());
        this.q = new iq(0, this);
        Log.d("MirrorScreen", "init: registering SurfaceCallback");
        b00.i = new x6(1, this);
        b bVar = (b) iVar.b(b.class);
        e.d("setSurfaceListener", new bi(bVar.c, "setSurfaceListener", new e6(bVar, koVar)));
        this.b.a(new ac() { // from class: idv.lzn.screenonauto.car.MirrorScreen$2
            @Override // defpackage.ac
            public final void d(sk skVar) {
                mq mqVar = mq.this;
                mqVar.o.unregisterOnSharedPreferenceChangeListener(mqVar.q);
            }

            @Override // defpackage.ac
            public final void f(sk skVar) {
                mq mqVar = mq.this;
                mqVar.o.registerOnSharedPreferenceChangeListener(mqVar.q);
            }

            @Override // defpackage.ac
            public final void a(sk skVar) {
            }

            @Override // defpackage.ac
            public final void b(sk skVar) {
            }

            @Override // defpackage.ac
            public final void c(sk skVar) {
            }

            @Override // defpackage.ac
            public final void e(sk skVar) {
            }
        });
    }

    public static final q50 b(mq mqVar) {
        float f = b00.c;
        float f2 = b00.d;
        if (f == 0.0f || f2 == 0.0f) {
            return null;
        }
        float min = Math.min(mqVar.f / f, mqVar.g / f2);
        return new q50(Float.valueOf(min), Float.valueOf((mqVar.f - (f * min)) / 2.0f), Float.valueOf((mqVar.g - (f2 * min)) / 2.0f));
    }

    public final void c(lk lkVar) {
        n40.b(new y5(this, 7, lkVar));
    }

    public final Action d(int i, mt mtVar) {
        Context applicationContext = this.a.getApplicationContext();
        q0 q0Var = new q0();
        PorterDuff.Mode mode = IconCompat.k;
        applicationContext.getClass();
        IconCompat c = IconCompat.c(applicationContext.getResources(), applicationContext.getPackageName(), i);
        c9.c.s(c);
        CarIcon carIcon = new CarIcon(c, null, 1);
        c9.d.x(carIcon);
        q0Var.b = carIcon;
        q0Var.c = OnClickDelegateImpl.create(new kq(mtVar, this));
        return q0Var.a();
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [ai, java.lang.Object] */
    public final void e() {
        if (this.b.c.compareTo(mk.d) >= 0) {
            e.d("invalidate", new bi(((b) this.a.b(b.class)).c, "invalidate", new Object()));
        }
    }

    @Override // defpackage.sk
    public final a f() {
        return this.b;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, uq] */
    public final NavigationTemplate g() {
        i iVar;
        int i;
        int i2;
        SharedPreferences sharedPreferences = this.o;
        sharedPreferences.getClass();
        List b = gt.b(sharedPreferences);
        ArrayList arrayList = new ArrayList();
        Iterator it = b.iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            Action action = null;
            iVar = this.a;
            if (!hasNext) {
                break;
            }
            String str = (String) it.next();
            ExecutorService executorService = z5.a;
            Context applicationContext = iVar.getApplicationContext();
            applicationContext.getClass();
            String b2 = z5.b(applicationContext, str);
            if (b2 != null) {
                q0 q0Var = new q0();
                q0Var.a = CarText.create(b2);
                q0Var.c = OnClickDelegateImpl.create(new kq(this, str));
                action = q0Var.a();
            }
            if (action != null) {
                arrayList.add(action);
            }
        }
        j1 j1Var = new j1();
        if (arrayList.isEmpty()) {
            j1Var.a(Action.APP_ICON);
        } else {
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                j1Var.a((Action) obj);
            }
        }
        ?? obj2 = new Object();
        if (!j1Var.a.isEmpty()) {
            ActionStrip actionStrip = new ActionStrip(j1Var);
            l1.m.a(actionStrip.getActions());
            obj2.a = actionStrip;
            ArrayList arrayList2 = new ArrayList();
            boolean z = sharedPreferences.getBoolean("map_action_force_landscape", true);
            c9 c9Var = c9.d;
            c9 c9Var2 = c9.c;
            if (z) {
                Context applicationContext2 = iVar.getApplicationContext();
                if (lu.a(applicationContext2).getBoolean("force_landscape_active", false)) {
                    i2 = R.drawable.ic_force_landscape_on;
                } else {
                    i2 = R.drawable.ic_force_landscape;
                }
                q0 q0Var2 = new q0();
                PorterDuff.Mode mode = IconCompat.k;
                IconCompat c = IconCompat.c(applicationContext2.getResources(), applicationContext2.getPackageName(), i2);
                c9Var2.s(c);
                CarIcon carIcon = new CarIcon(c, null, 1);
                c9Var.x(carIcon);
                q0Var2.b = carIcon;
                q0Var2.c = OnClickDelegateImpl.create(new gs(this) { // from class: jq
                    public final /* synthetic */ mq b;

                    {
                        this.b = this;
                    }

                    @Override // defpackage.gs
                    public final void onClick() {
                        int i4 = r2;
                        mq mqVar = this.b;
                        switch (i4) {
                            case 0:
                                i iVar2 = mqVar.a;
                                Context applicationContext3 = iVar2.getApplicationContext();
                                SharedPreferences a = lu.a(applicationContext3);
                                boolean z2 = a.getBoolean("force_landscape_active", false);
                                if (!z2 && !Settings.canDrawOverlays(applicationContext3)) {
                                    e4.e(iVar2, R.string.auto_dim_permission_required).f();
                                    return;
                                }
                                a.edit().putBoolean("force_landscape_active", !z2).apply();
                                mqVar.e();
                                return;
                            default:
                                i iVar3 = mqVar.a;
                                Context applicationContext4 = iVar3.getApplicationContext();
                                SharedPreferences sharedPreferences2 = mqVar.o;
                                boolean z3 = sharedPreferences2.getBoolean("auto_dim", false);
                                if (!z3 && !Settings.canDrawOverlays(applicationContext4)) {
                                    e4.e(iVar3, R.string.auto_dim_permission_required).f();
                                    return;
                                }
                                sharedPreferences2.edit().putBoolean("auto_dim", !z3).apply();
                                mqVar.e();
                                return;
                        }
                    }
                });
                arrayList2.add(q0Var2.a());
            }
            if (sharedPreferences.getBoolean("map_action_auto_dim", false)) {
                Context applicationContext3 = iVar.getApplicationContext();
                if (sharedPreferences.getBoolean("auto_dim", false)) {
                    i = R.drawable.car_headline_2_size;
                } else {
                    i = R.drawable.car_headline_1_size;
                }
                q0 q0Var3 = new q0();
                PorterDuff.Mode mode2 = IconCompat.k;
                applicationContext3.getClass();
                IconCompat c2 = IconCompat.c(applicationContext3.getResources(), applicationContext3.getPackageName(), i);
                c9Var2.s(c2);
                CarIcon carIcon2 = new CarIcon(c2, null, 1);
                c9Var.x(carIcon2);
                q0Var3.b = carIcon2;
                q0Var3.c = OnClickDelegateImpl.create(new gs(this) { // from class: jq
                    public final /* synthetic */ mq b;

                    {
                        this.b = this;
                    }

                    @Override // defpackage.gs
                    public final void onClick() {
                        int i4 = r2;
                        mq mqVar = this.b;
                        switch (i4) {
                            case 0:
                                i iVar2 = mqVar.a;
                                Context applicationContext32 = iVar2.getApplicationContext();
                                SharedPreferences a = lu.a(applicationContext32);
                                boolean z2 = a.getBoolean("force_landscape_active", false);
                                if (!z2 && !Settings.canDrawOverlays(applicationContext32)) {
                                    e4.e(iVar2, R.string.auto_dim_permission_required).f();
                                    return;
                                }
                                a.edit().putBoolean("force_landscape_active", !z2).apply();
                                mqVar.e();
                                return;
                            default:
                                i iVar3 = mqVar.a;
                                Context applicationContext4 = iVar3.getApplicationContext();
                                SharedPreferences sharedPreferences2 = mqVar.o;
                                boolean z3 = sharedPreferences2.getBoolean("auto_dim", false);
                                if (!z3 && !Settings.canDrawOverlays(applicationContext4)) {
                                    e4.e(iVar3, R.string.auto_dim_permission_required).f();
                                    return;
                                }
                                sharedPreferences2.edit().putBoolean("auto_dim", !z3).apply();
                                mqVar.e();
                                return;
                        }
                    }
                });
                arrayList2.add(q0Var3.a());
            }
            if (sharedPreferences.getBoolean("map_action_back", false)) {
                arrayList2.add(d(R.drawable.car_icon, mt.b));
            }
            if (sharedPreferences.getBoolean("map_action_home", false)) {
                arrayList2.add(d(R.drawable.car_max_drawer_width, mt.c));
            }
            if (sharedPreferences.getBoolean("map_action_recents", false)) {
                arrayList2.add(d(R.drawable.car_touch_feedback_radius, mt.d));
            }
            if (!arrayList2.isEmpty()) {
                j1 j1Var2 = new j1();
                for (Action action2 : v9.C(arrayList2)) {
                    j1Var2.a(action2);
                }
                if (!j1Var2.a.isEmpty()) {
                    ActionStrip actionStrip2 = new ActionStrip(j1Var2);
                    l1.n.a(actionStrip2.getActions());
                    obj2.b = actionStrip2;
                } else {
                    c2.g("Action strip must contain at least one action");
                    return null;
                }
            }
            if (obj2.a != null) {
                return new NavigationTemplate(obj2);
            }
            c2.g("Action strip for this template must be set");
            return null;
        }
        c2.g("Action strip must contain at least one action");
        return null;
    }

    public final int h() {
        if (this.o.getBoolean("nav_fixed_size", false)) {
            return this.i;
        }
        return this.j;
    }
}
