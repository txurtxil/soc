package defpackage;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.activity.a;
import androidx.appcompat.widget.Toolbar;
import com.google.android.apps.auto.sdk.ui.R;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.LinkedHashMap;
/* renamed from: z2  reason: default package */
/* loaded from: classes.dex */
public abstract class z2 extends a implements c3 {
    public boolean v;
    public boolean w;
    public w3 y;
    public final c9 t = new c9(16, new wf(this));
    public final androidx.lifecycle.a u = new androidx.lifecycle.a(this);
    public boolean x = true;

    public z2() {
        ((f3) this.e.c).e("android:support:fragments", new x2(this, 1));
        g(new y2(this, 1));
        ((f3) this.e.c).e("androidx:appcompat", new x2(this, 0));
        g(new y2(this, 0));
    }

    public static boolean n(androidx.fragment.app.a aVar) {
        z2 z2Var;
        boolean z = false;
        for (vf vfVar : aVar.c.u()) {
            if (vfVar != null) {
                wf wfVar = vfVar.t;
                if (wfVar == null) {
                    z2Var = null;
                } else {
                    z2Var = wfVar.n;
                }
                if (z2Var != null) {
                    z |= n(vfVar.g());
                }
                pg pgVar = vfVar.O;
                mk mkVar = mk.c;
                mk mkVar2 = mk.d;
                if (pgVar != null) {
                    pgVar.d();
                    if (pgVar.b.c.compareTo(mkVar2) >= 0) {
                        androidx.lifecycle.a aVar2 = vfVar.O.b;
                        aVar2.d("setCurrentState");
                        aVar2.f(mkVar);
                        z = true;
                    }
                }
                if (vfVar.N.c.compareTo(mkVar2) >= 0) {
                    androidx.lifecycle.a aVar3 = vfVar.N;
                    aVar3.d("setCurrentState");
                    aVar3.f(mkVar);
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // androidx.activity.a, android.app.Activity
    public final void addContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m();
        w3 w3Var = (w3) k();
        w3Var.y();
        ((ViewGroup) w3Var.A.findViewById(16908290)).addView(view, layoutParams);
        w3Var.m.a(w3Var.l.getCallback());
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public void attachBaseContext(Context context) {
        Configuration configuration;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        w3 w3Var = (w3) k();
        w3Var.O = true;
        int i9 = w3Var.S;
        if (i9 == -100) {
            i9 = j3.b;
        }
        int E = w3Var.E(context, i9);
        if (j3.c(context) && j3.c(context)) {
            if (t7.a()) {
                if (!j3.f) {
                    j3.a.execute(new g3(context, 0));
                }
            } else {
                synchronized (j3.i) {
                    try {
                        wl wlVar = j3.c;
                        if (wlVar == null) {
                            if (j3.d == null) {
                                j3.d = wl.a(gt.q(context));
                            }
                            if (!j3.d.a.a.isEmpty()) {
                                j3.c = j3.d;
                            }
                        } else if (!wlVar.equals(j3.d)) {
                            wl wlVar2 = j3.c;
                            j3.d = wlVar2;
                            gt.m(context, wlVar2.a.a.toLanguageTags());
                        }
                    } finally {
                    }
                }
            }
        }
        wl r = w3.r(context);
        if (w3.k0 && (context instanceof ContextThemeWrapper)) {
            try {
                ((ContextThemeWrapper) context).applyOverrideConfiguration(w3.v(context, E, r, null, false));
            } catch (IllegalStateException unused) {
            }
            super.attachBaseContext(context);
        }
        if (context instanceof cb) {
            try {
                ((cb) context).a(w3.v(context, E, r, null, false));
            } catch (IllegalStateException unused2) {
            }
            super.attachBaseContext(context);
        }
        if (w3.j0) {
            Configuration configuration2 = new Configuration();
            configuration2.uiMode = -1;
            configuration2.fontScale = 0.0f;
            Configuration configuration3 = context.createConfigurationContext(configuration2).getResources().getConfiguration();
            Configuration configuration4 = context.getResources().getConfiguration();
            configuration3.uiMode = configuration4.uiMode;
            if (!configuration3.equals(configuration4)) {
                configuration = new Configuration();
                configuration.fontScale = 0.0f;
                if (configuration3.diff(configuration4) != 0) {
                    float f = configuration3.fontScale;
                    float f2 = configuration4.fontScale;
                    if (f != f2) {
                        configuration.fontScale = f2;
                    }
                    int i10 = configuration3.mcc;
                    int i11 = configuration4.mcc;
                    if (i10 != i11) {
                        configuration.mcc = i11;
                    }
                    int i12 = configuration3.mnc;
                    int i13 = configuration4.mnc;
                    if (i12 != i13) {
                        configuration.mnc = i13;
                    }
                    n3.a(configuration3, configuration4, configuration);
                    int i14 = configuration3.touchscreen;
                    int i15 = configuration4.touchscreen;
                    if (i14 != i15) {
                        configuration.touchscreen = i15;
                    }
                    int i16 = configuration3.keyboard;
                    int i17 = configuration4.keyboard;
                    if (i16 != i17) {
                        configuration.keyboard = i17;
                    }
                    int i18 = configuration3.keyboardHidden;
                    int i19 = configuration4.keyboardHidden;
                    if (i18 != i19) {
                        configuration.keyboardHidden = i19;
                    }
                    int i20 = configuration3.navigation;
                    int i21 = configuration4.navigation;
                    if (i20 != i21) {
                        configuration.navigation = i21;
                    }
                    int i22 = configuration3.navigationHidden;
                    int i23 = configuration4.navigationHidden;
                    if (i22 != i23) {
                        configuration.navigationHidden = i23;
                    }
                    int i24 = configuration3.orientation;
                    int i25 = configuration4.orientation;
                    if (i24 != i25) {
                        configuration.orientation = i25;
                    }
                    int i26 = configuration3.screenLayout & 15;
                    int i27 = configuration4.screenLayout & 15;
                    if (i26 != i27) {
                        configuration.screenLayout |= i27;
                    }
                    int i28 = configuration3.screenLayout & 192;
                    int i29 = configuration4.screenLayout & 192;
                    if (i28 != i29) {
                        configuration.screenLayout |= i29;
                    }
                    int i30 = configuration3.screenLayout & 48;
                    int i31 = configuration4.screenLayout & 48;
                    if (i30 != i31) {
                        configuration.screenLayout |= i31;
                    }
                    int i32 = configuration3.screenLayout & 768;
                    int i33 = configuration4.screenLayout & 768;
                    if (i32 != i33) {
                        configuration.screenLayout |= i33;
                    }
                    if (Build.VERSION.SDK_INT >= 26) {
                        i = configuration3.colorMode;
                        int i34 = i & 3;
                        i2 = configuration4.colorMode;
                        if (i34 != (i2 & 3)) {
                            i7 = configuration.colorMode;
                            i8 = configuration4.colorMode;
                            configuration.colorMode = i7 | (i8 & 3);
                        }
                        i3 = configuration3.colorMode;
                        int i35 = i3 & 12;
                        i4 = configuration4.colorMode;
                        if (i35 != (i4 & 12)) {
                            i5 = configuration.colorMode;
                            i6 = configuration4.colorMode;
                            configuration.colorMode = i5 | (i6 & 12);
                        }
                    }
                    int i36 = configuration3.uiMode & 15;
                    int i37 = configuration4.uiMode & 15;
                    if (i36 != i37) {
                        configuration.uiMode |= i37;
                    }
                    int i38 = configuration3.uiMode & 48;
                    int i39 = configuration4.uiMode & 48;
                    if (i38 != i39) {
                        configuration.uiMode |= i39;
                    }
                    int i40 = configuration3.screenWidthDp;
                    int i41 = configuration4.screenWidthDp;
                    if (i40 != i41) {
                        configuration.screenWidthDp = i41;
                    }
                    int i42 = configuration3.screenHeightDp;
                    int i43 = configuration4.screenHeightDp;
                    if (i42 != i43) {
                        configuration.screenHeightDp = i43;
                    }
                    int i44 = configuration3.smallestScreenWidthDp;
                    int i45 = configuration4.smallestScreenWidthDp;
                    if (i44 != i45) {
                        configuration.smallestScreenWidthDp = i45;
                    }
                    int i46 = configuration3.densityDpi;
                    int i47 = configuration4.densityDpi;
                    if (i46 != i47) {
                        configuration.densityDpi = i47;
                    }
                }
            } else {
                configuration = null;
            }
            Configuration v = w3.v(context, E, r, configuration, true);
            cb cbVar = new cb(context, 2131821117);
            cbVar.a(v);
            try {
                if (context.getTheme() != null) {
                    Resources.Theme theme = cbVar.getTheme();
                    if (Build.VERSION.SDK_INT >= 29) {
                        wx.a(theme);
                    } else {
                        synchronized (k60.d) {
                            if (!k60.f) {
                                try {
                                    Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", null);
                                    k60.e = declaredMethod;
                                    declaredMethod.setAccessible(true);
                                } catch (NoSuchMethodException e) {
                                    Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                                }
                                k60.f = true;
                            }
                            Method method = k60.e;
                            if (method != null) {
                                try {
                                    method.invoke(theme, null);
                                } catch (IllegalAccessException | InvocationTargetException e2) {
                                    Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                                    k60.e = null;
                                }
                            }
                        }
                    }
                }
            } catch (NullPointerException unused3) {
            }
            context = cbVar;
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    public final void closeOptionsMenu() {
        k60 l = l();
        if (getWindow().hasFeature(0)) {
            if (l == null || !l.h()) {
                super.closeOptionsMenu();
            }
        }
    }

    @Override // defpackage.ka, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        k60 l = l();
        if (keyCode == 82 && l != null && l.A(keyEvent)) {
            return true;
        }
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity
    public final void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        tl tlVar;
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(Integer.toHexString(System.identityHashCode(this)));
        printWriter.println(" State:");
        String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.v);
        printWriter.print(" mResumed=");
        printWriter.print(this.w);
        printWriter.print(" mStopped=");
        printWriter.print(this.x);
        if (getApplication() != null) {
            b80 e = e();
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
                    printWriter.print(str2);
                    printWriter.println("Loaders:");
                    if (q20Var.c > 0) {
                        if (q20Var.b[0] != null) {
                            c2.l();
                            return;
                        }
                        printWriter.print(str2);
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
        ((wf) this.t.b).m.t(str, fileDescriptor, printWriter, strArr);
    }

    @Override // android.app.Activity
    public final View findViewById(int i) {
        w3 w3Var = (w3) k();
        w3Var.y();
        return w3Var.l.findViewById(i);
    }

    @Override // android.app.Activity
    public final MenuInflater getMenuInflater() {
        Context context;
        w3 w3Var = (w3) k();
        if (w3Var.o == null) {
            w3Var.C();
            k60 k60Var = w3Var.n;
            if (k60Var != null) {
                context = k60Var.u();
            } else {
                context = w3Var.k;
            }
            w3Var.o = new r30(context);
        }
        return w3Var.o;
    }

    @Override // android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        int i = v60.a;
        return super.getResources();
    }

    @Override // android.app.Activity
    public final void invalidateOptionsMenu() {
        k().b();
    }

    public final j3 k() {
        if (this.y == null) {
            c6 c6Var = j3.a;
            this.y = new w3(this, null, this, this);
        }
        return this.y;
    }

    public final k60 l() {
        w3 w3Var = (w3) k();
        w3Var.C();
        return w3Var.n;
    }

    public final void m() {
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
    }

    public final void o(Configuration configuration) {
        c9 c9Var = this.t;
        c9Var.t();
        super.onConfigurationChanged(configuration);
        ((wf) c9Var.b).m.h();
    }

    @Override // androidx.activity.a, android.app.Activity
    public final void onActivityResult(int i, int i2, Intent intent) {
        this.t.t();
        super.onActivityResult(i, i2, intent);
    }

    @Override // androidx.activity.a, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        o(configuration);
        w3 w3Var = (w3) k();
        if (w3Var.F && w3Var.z) {
            w3Var.C();
            k60 k60Var = w3Var.n;
            if (k60Var != null) {
                k60Var.x();
            }
        }
        z3 a = z3.a();
        Context context = w3Var.k;
        synchronized (a) {
            rx rxVar = a.a;
            synchronized (rxVar) {
                am amVar = (am) rxVar.b.get(context);
                if (amVar != null) {
                    amVar.a();
                }
            }
        }
        w3Var.R = new Configuration(w3Var.k.getResources().getConfiguration());
        w3Var.p(false, false);
    }

    @Override // androidx.activity.a, defpackage.ka, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.u.e(lk.ON_CREATE);
        ig igVar = ((wf) this.t.b).m;
        igVar.z = false;
        igVar.A = false;
        igVar.G.h = false;
        igVar.s(1);
    }

    @Override // androidx.activity.a, android.app.Activity, android.view.Window.Callback
    public final boolean onCreatePanelMenu(int i, Menu menu) {
        if (i == 0) {
            super.onCreatePanelMenu(i, menu);
            getMenuInflater();
            ((wf) this.t.b).m.j();
            return true;
        }
        super.onCreatePanelMenu(i, menu);
        return true;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((wf) this.t.b).m.f.onCreateView(null, str, context, attributeSet);
        if (onCreateView == null) {
            return super.onCreateView(str, context, attributeSet);
        }
        return onCreateView;
    }

    @Override // android.app.Activity
    public final void onDestroy() {
        p();
        k().f();
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        Window window;
        if (Build.VERSION.SDK_INT < 26 && !keyEvent.isCtrlPressed() && !KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState()) && keyEvent.getRepeatCount() == 0 && !KeyEvent.isModifierKey(keyEvent.getKeyCode()) && (window = getWindow()) != null && window.getDecorView() != null && window.getDecorView().dispatchKeyShortcutEvent(keyEvent)) {
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onLowMemory() {
        super.onLowMemory();
        ((wf) this.t.b).m.l();
    }

    @Override // androidx.activity.a, android.app.Activity, android.view.Window.Callback
    public final boolean onMenuItemSelected(int i, MenuItem menuItem) {
        if (q(i, menuItem)) {
            return true;
        }
        k60 l = l();
        if (menuItem.getItemId() == 16908332 && l != null && (l.t() & 4) != 0) {
            return v();
        }
        return false;
    }

    @Override // androidx.activity.a, android.app.Activity
    public final void onMultiWindowModeChanged(boolean z) {
        ((wf) this.t.b).m.m();
    }

    @Override // androidx.activity.a, android.app.Activity
    public void onNewIntent(Intent intent) {
        this.t.t();
        super.onNewIntent(intent);
    }

    @Override // androidx.activity.a, android.app.Activity, android.view.Window.Callback
    public final void onPanelClosed(int i, Menu menu) {
        r(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.w = false;
        ((wf) this.t.b).m.s(5);
        this.u.e(lk.ON_PAUSE);
    }

    @Override // androidx.activity.a, android.app.Activity
    public final void onPictureInPictureModeChanged(boolean z) {
        ((wf) this.t.b).m.q();
    }

    @Override // android.app.Activity
    public final void onPostCreate(Bundle bundle) {
        super.onPostCreate(bundle);
        ((w3) k()).y();
    }

    @Override // android.app.Activity
    public final void onPostResume() {
        s();
        w3 w3Var = (w3) k();
        w3Var.C();
        k60 k60Var = w3Var.n;
        if (k60Var != null) {
            k60Var.G(true);
        }
    }

    @Override // androidx.activity.a, android.app.Activity, android.view.Window.Callback
    public final boolean onPreparePanel(int i, View view, Menu menu) {
        if (i == 0) {
            super.onPreparePanel(0, view, menu);
            ((wf) this.t.b).m.r();
            return true;
        }
        super.onPreparePanel(i, view, menu);
        return true;
    }

    @Override // androidx.activity.a, android.app.Activity
    public final void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        this.t.t();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        c9 c9Var = this.t;
        c9Var.t();
        super.onResume();
        this.w = true;
        ((wf) c9Var.b).m.w(true);
    }

    @Override // android.app.Activity
    public void onStart() {
        t();
        ((w3) k()).p(true, false);
    }

    @Override // android.app.Activity
    public final void onStateNotSaved() {
        this.t.t();
    }

    @Override // android.app.Activity
    public final void onStop() {
        u();
        w3 w3Var = (w3) k();
        w3Var.C();
        k60 k60Var = w3Var.n;
        if (k60Var != null) {
            k60Var.G(false);
        }
    }

    @Override // android.app.Activity
    public final void onTitleChanged(CharSequence charSequence, int i) {
        super.onTitleChanged(charSequence, i);
        k().o(charSequence);
    }

    @Override // android.app.Activity
    public final void openOptionsMenu() {
        k60 l = l();
        if (getWindow().hasFeature(0)) {
            if (l == null || !l.B()) {
                super.openOptionsMenu();
            }
        }
    }

    public final void p() {
        super.onDestroy();
        ((wf) this.t.b).m.k();
        this.u.e(lk.ON_DESTROY);
    }

    public final boolean q(int i, MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        c9 c9Var = this.t;
        if (i != 0) {
            if (i != 6) {
                return false;
            }
            return ((wf) c9Var.b).m.i();
        }
        return ((wf) c9Var.b).m.n();
    }

    public final void r(int i, Menu menu) {
        if (i == 0) {
            ((wf) this.t.b).m.o();
        }
        super.onPanelClosed(i, menu);
    }

    public final void s() {
        super.onPostResume();
        this.u.e(lk.ON_RESUME);
        ig igVar = ((wf) this.t.b).m;
        igVar.z = false;
        igVar.A = false;
        igVar.G.h = false;
        igVar.s(7);
    }

    @Override // androidx.activity.a, android.app.Activity
    public final void setContentView(int i) {
        m();
        k().i(i);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i) {
        super.setTheme(i);
        ((w3) k()).T = i;
    }

    public final void t() {
        c9 c9Var = this.t;
        c9Var.t();
        wf wfVar = (wf) c9Var.b;
        super.onStart();
        this.x = false;
        if (!this.v) {
            this.v = true;
            ig igVar = wfVar.m;
            igVar.z = false;
            igVar.A = false;
            igVar.G.h = false;
            igVar.s(4);
        }
        wfVar.m.w(true);
        this.u.e(lk.ON_START);
        ig igVar2 = wfVar.m;
        igVar2.z = false;
        igVar2.A = false;
        igVar2.G.h = false;
        igVar2.s(5);
    }

    public final void u() {
        c9 c9Var;
        super.onStop();
        this.x = true;
        do {
            c9Var = this.t;
        } while (n(((wf) c9Var.b).m));
        ig igVar = ((wf) c9Var.b).m;
        igVar.A = true;
        igVar.G.h = true;
        igVar.s(4);
        this.u.e(lk.ON_STOP);
    }

    public boolean v() {
        Intent s = s8.s(this);
        if (s == null) {
            return false;
        }
        if (tq.c(this, s)) {
            ArrayList arrayList = new ArrayList();
            Intent s2 = s8.s(this);
            if (s2 == null) {
                s2 = s8.s(this);
            }
            if (s2 != null) {
                ComponentName component = s2.getComponent();
                if (component == null) {
                    component = s2.resolveActivity(getPackageManager());
                }
                int size = arrayList.size();
                try {
                    Intent t = s8.t(this, component);
                    while (t != null) {
                        arrayList.add(size, t);
                        t = s8.t(this, t.getComponent());
                    }
                    arrayList.add(s2);
                } catch (PackageManager.NameNotFoundException e) {
                    Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
                    throw new IllegalArgumentException(e);
                }
            }
            if (!arrayList.isEmpty()) {
                Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
                intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
                xa.a(this, intentArr, null);
                try {
                    n1.a(this);
                    return true;
                } catch (IllegalStateException unused) {
                    finish();
                    return true;
                }
            }
            c2.g("No intents added to TaskStackBuilder; cannot startActivities");
            return false;
        }
        tq.b(this, s);
        return true;
    }

    public final void w(Toolbar toolbar) {
        CharSequence charSequence;
        w3 w3Var = (w3) k();
        if (!(w3Var.j instanceof Activity)) {
            return;
        }
        w3Var.C();
        k60 k60Var = w3Var.n;
        if (!(k60Var instanceof t80)) {
            w3Var.o = null;
            if (k60Var != null) {
                k60Var.y();
            }
            w3Var.n = null;
            if (toolbar != null) {
                Object obj = w3Var.j;
                if (obj instanceof Activity) {
                    charSequence = ((Activity) obj).getTitle();
                } else {
                    charSequence = w3Var.q;
                }
                e50 e50Var = new e50(toolbar, charSequence, w3Var.m);
                w3Var.n = e50Var;
                w3Var.m.b = e50Var.u;
                toolbar.setBackInvokedCallbackEnabled(true);
            } else {
                w3Var.m.b = null;
            }
            w3Var.b();
            return;
        }
        c2.g("This Activity already has an action bar supplied by the window decor. Do not request Window.FEATURE_SUPPORT_ACTION_BAR and set windowActionBar to false in your theme to use a Toolbar instead.");
    }

    @Override // androidx.activity.a, android.app.Activity
    public void setContentView(View view) {
        m();
        k().j(view);
    }

    @Override // androidx.activity.a, android.app.Activity
    public final void setContentView(View view, ViewGroup.LayoutParams layoutParams) {
        m();
        k().k(view, layoutParams);
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView = ((wf) this.t.b).m.f.onCreateView(view, str, context, attributeSet);
        return onCreateView == null ? super.onCreateView(view, str, context, attributeSet) : onCreateView;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final void onContentChanged() {
    }
}
