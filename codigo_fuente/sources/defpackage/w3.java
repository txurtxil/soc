package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.ContentFrameLayout;
import com.google.android.apps.auto.sdk.ui.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.WeakHashMap;
/* renamed from: w3  reason: default package */
/* loaded from: classes.dex */
public final class w3 extends j3 implements qo, LayoutInflater.Factory2 {
    public static final j20 h0 = new j20();
    public static final int[] i0 = {16842836};
    public static final boolean j0 = !"robolectric".equals(Build.FINGERPRINT);
    public static final boolean k0 = true;
    public ViewGroup A;
    public TextView B;
    public View C;
    public boolean D;
    public boolean E;
    public boolean F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public boolean K;
    public v3[] L;
    public v3 M;
    public boolean N;
    public boolean O;
    public boolean P;
    public boolean Q;
    public Configuration R;
    public int S;
    public int T;
    public int U;
    public boolean V;
    public r3 W;
    public r3 X;
    public boolean Y;
    public int Z;
    public boolean b0;
    public Rect c0;
    public Rect d0;
    public u5 e0;
    public OnBackInvokedDispatcher f0;
    public OnBackInvokedCallback g0;
    public final Object j;
    public final Context k;
    public Window l;
    public q3 m;
    public k60 n;
    public r30 o;
    public CharSequence q;
    public ActionBarOverlayLayout r;
    public l3 s;
    public l3 t;
    public i1 u;
    public ActionBarContextView v;
    public PopupWindow w;
    public k3 x;
    public boolean z;
    public h80 y = null;
    public final k3 a0 = new k3(this, 0);

    public w3(Context context, Window window, c3 c3Var, Object obj) {
        z2 z2Var;
        this.S = -100;
        this.k = context;
        this.j = obj;
        if (obj instanceof Dialog) {
            while (context != null) {
                if (context instanceof z2) {
                    z2Var = (z2) context;
                    break;
                } else if (!(context instanceof ContextWrapper)) {
                    break;
                } else {
                    context = ((ContextWrapper) context).getBaseContext();
                }
            }
            z2Var = null;
            if (z2Var != null) {
                this.S = ((w3) z2Var.k()).S;
            }
        }
        if (this.S == -100) {
            String name = this.j.getClass().getName();
            j20 j20Var = h0;
            Integer num = (Integer) j20Var.getOrDefault(name, null);
            if (num != null) {
                this.S = num.intValue();
                j20Var.remove(this.j.getClass().getName());
            }
        }
        if (window != null) {
            q(window);
        }
        z3.c();
    }

    public static wl r(Context context) {
        wl wlVar;
        wl wlVar2;
        Locale locale;
        if (Build.VERSION.SDK_INT >= 33 || (wlVar = j3.c) == null) {
            return null;
        }
        xl xlVar = wlVar.a;
        wl b = n3.b(context.getApplicationContext().getResources().getConfiguration());
        if (xlVar.a.isEmpty()) {
            wlVar2 = wl.b;
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (int i = 0; i < b.a.a.size() + xlVar.a.size(); i++) {
                if (i < xlVar.a.size()) {
                    locale = xlVar.a.get(i);
                } else {
                    locale = b.a.a.get(i - xlVar.a.size());
                }
                if (locale != null) {
                    linkedHashSet.add(locale);
                }
            }
            wlVar2 = new wl(new xl(vl.a((Locale[]) linkedHashSet.toArray(new Locale[linkedHashSet.size()]))));
        }
        if (wlVar2.a.a.isEmpty()) {
            return b;
        }
        return wlVar2;
    }

    public static Configuration v(Context context, int i, wl wlVar, Configuration configuration, boolean z) {
        int i2;
        if (i != 1) {
            if (i != 2) {
                if (z) {
                    i2 = 0;
                } else {
                    i2 = context.getApplicationContext().getResources().getConfiguration().uiMode & 48;
                }
            } else {
                i2 = 32;
            }
        } else {
            i2 = 16;
        }
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i2 | (configuration2.uiMode & (-49));
        if (wlVar != null) {
            n3.d(configuration2, wlVar);
        }
        return configuration2;
    }

    public final t3 A(Context context) {
        if (this.W == null) {
            if (v5.g == null) {
                Context applicationContext = context.getApplicationContext();
                v5.g = new v5(applicationContext, (LocationManager) applicationContext.getSystemService("location"));
            }
            this.W = new r3(this, v5.g);
        }
        return this.W;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, v3] */
    public final v3 B(int i) {
        Object[] objArr = this.L;
        if (objArr == null || objArr.length <= i) {
            v3[] v3VarArr = new v3[i + 1];
            if (objArr != null) {
                System.arraycopy(objArr, 0, v3VarArr, 0, objArr.length);
            }
            this.L = v3VarArr;
            objArr = v3VarArr;
        }
        v3 v3Var = objArr[i];
        if (v3Var == 0) {
            ?? obj = new Object();
            obj.a = i;
            obj.n = false;
            objArr[i] = obj;
            return obj;
        }
        return v3Var;
    }

    public final void C() {
        y();
        if (this.F && this.n == null) {
            Object obj = this.j;
            if (obj instanceof Activity) {
                this.n = new t80((Activity) obj, this.G);
            } else if (obj instanceof Dialog) {
                this.n = new t80((Dialog) obj);
            }
            k60 k60Var = this.n;
            if (k60Var != null) {
                k60Var.E(this.b0);
            }
        }
    }

    public final void D(int i) {
        this.Z = (1 << i) | this.Z;
        if (!this.Y) {
            View decorView = this.l.getDecorView();
            WeakHashMap weakHashMap = u70.a;
            e70.m(decorView, this.a0);
            this.Y = true;
        }
    }

    public final int E(Context context, int i) {
        if (i != -100) {
            if (i != -1) {
                if (i != 0) {
                    if (i != 1 && i != 2) {
                        if (i == 3) {
                            if (this.X == null) {
                                this.X = new r3(this, context);
                            }
                            return this.X.f();
                        }
                        c2.g("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
                        return 0;
                    }
                } else if (((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return A(context).f();
                }
            }
            return i;
        }
        return -1;
    }

    public final boolean F() {
        boolean z = this.N;
        this.N = false;
        v3 B = B(0);
        if (B.m) {
            if (!z) {
                u(B, true);
                return true;
            }
        } else {
            i1 i1Var = this.u;
            if (i1Var != null) {
                i1Var.a();
                return true;
            }
            C();
            k60 k60Var = this.n;
            if (k60Var == null || !k60Var.i()) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:76:0x0156, code lost:
        if (r2 != null) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0176, code lost:
        if (r2.f.getCount() > 0) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x01d3  */
    /* JADX WARN: Removed duplicated region for block: B:105:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void G(defpackage.v3 r18, android.view.KeyEvent r19) {
        /*
            Method dump skipped, instructions count: 474
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w3.G(v3, android.view.KeyEvent):void");
    }

    public final boolean H(v3 v3Var, int i, KeyEvent keyEvent) {
        so soVar;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((!v3Var.k && !I(v3Var, keyEvent)) || (soVar = v3Var.h) == null) {
            return false;
        }
        return soVar.performShortcut(i, keyEvent, 1);
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x00d3, code lost:
        if (r13.h == null) goto L98;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean I(defpackage.v3 r13, android.view.KeyEvent r14) {
        /*
            Method dump skipped, instructions count: 361
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w3.I(v3, android.view.KeyEvent):boolean");
    }

    public final void J() {
        if (!this.z) {
            return;
        }
        throw new AndroidRuntimeException("Window feature must be requested before adding content");
    }

    public final void K() {
        OnBackInvokedCallback onBackInvokedCallback;
        if (Build.VERSION.SDK_INT >= 33) {
            boolean z = false;
            if (this.f0 != null && (B(0).m || this.u != null)) {
                z = true;
            }
            if (z && this.g0 == null) {
                this.g0 = p3.b(this.f0, this);
            } else if (!z && (onBackInvokedCallback = this.g0) != null) {
                p3.c(this.f0, onBackInvokedCallback);
            }
        }
    }

    @Override // defpackage.j3
    public final void a() {
        LayoutInflater from = LayoutInflater.from(this.k);
        if (from.getFactory() == null) {
            from.setFactory2(this);
        } else if (!(from.getFactory2() instanceof w3)) {
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    @Override // defpackage.j3
    public final void b() {
        if (this.n != null) {
            C();
            if (!this.n.v()) {
                D(0);
            }
        }
    }

    @Override // defpackage.j3
    public final void d() {
        String str;
        this.O = true;
        p(false, true);
        z();
        Object obj = this.j;
        if (obj instanceof Activity) {
            try {
                Activity activity = (Activity) obj;
                try {
                    str = s8.u(activity, activity.getComponentName());
                } catch (PackageManager.NameNotFoundException e) {
                    throw new IllegalArgumentException(e);
                }
            } catch (IllegalArgumentException unused) {
                str = null;
            }
            if (str != null) {
                k60 k60Var = this.n;
                if (k60Var == null) {
                    this.b0 = true;
                } else {
                    k60Var.E(true);
                }
            }
            synchronized (j3.h) {
                j3.g(this);
                j3.g.add(new WeakReference(this));
            }
        }
        this.R = new Configuration(this.k.getResources().getConfiguration());
        this.P = true;
    }

    @Override // defpackage.qo
    public final boolean e(so soVar, MenuItem menuItem) {
        int i;
        v3 v3Var;
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !this.Q) {
            so k = soVar.k();
            v3[] v3VarArr = this.L;
            if (v3VarArr != null) {
                i = v3VarArr.length;
            } else {
                i = 0;
            }
            int i2 = 0;
            while (true) {
                if (i2 < i) {
                    v3Var = v3VarArr[i2];
                    if (v3Var != null && v3Var.h == k) {
                        break;
                    }
                    i2++;
                } else {
                    v3Var = null;
                    break;
                }
            }
            if (v3Var != null) {
                return callback.onMenuItemSelected(v3Var.a, menuItem);
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
    @Override // defpackage.j3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.j
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L11
            java.lang.Object r0 = defpackage.j3.h
            monitor-enter(r0)
            defpackage.j3.g(r3)     // Catch: java.lang.Throwable -> Le
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            goto L11
        Le:
            r3 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Le
            throw r3
        L11:
            boolean r0 = r3.Y
            if (r0 == 0) goto L20
            android.view.Window r0 = r3.l
            android.view.View r0 = r0.getDecorView()
            k3 r1 = r3.a0
            r0.removeCallbacks(r1)
        L20:
            r0 = 1
            r3.Q = r0
            int r0 = r3.S
            r1 = -100
            if (r0 == r1) goto L4d
            java.lang.Object r0 = r3.j
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L4d
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L4d
            j20 r0 = defpackage.w3.h0
            java.lang.Object r1 = r3.j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.S
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L5c
        L4d:
            j20 r0 = defpackage.w3.h0
            java.lang.Object r1 = r3.j
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L5c:
            k60 r0 = r3.n
            if (r0 == 0) goto L63
            r0.y()
        L63:
            r3 r0 = r3.W
            if (r0 == 0) goto L6a
            r0.c()
        L6a:
            r3 r3 = r3.X
            if (r3 == 0) goto L71
            r3.c()
        L71:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w3.f():void");
    }

    @Override // defpackage.j3
    public final boolean h(int i) {
        if (i == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            i = 108;
        } else if (i == 9) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
            i = 109;
        }
        if (this.J && i == 108) {
            return false;
        }
        if (this.F && i == 1) {
            this.F = false;
        }
        if (i != 1) {
            if (i != 2) {
                if (i != 5) {
                    if (i != 10) {
                        if (i != 108) {
                            if (i != 109) {
                                return this.l.requestFeature(i);
                            }
                            J();
                            this.G = true;
                            return true;
                        }
                        J();
                        this.F = true;
                        return true;
                    }
                    J();
                    this.H = true;
                    return true;
                }
                J();
                this.E = true;
                return true;
            }
            J();
            this.D = true;
            return true;
        }
        J();
        this.J = true;
        return true;
    }

    @Override // defpackage.j3
    public final void i(int i) {
        y();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(16908290);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.k).inflate(i, viewGroup);
        this.m.a(this.l.getCallback());
    }

    @Override // defpackage.j3
    public final void j(View view) {
        y();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.m.a(this.l.getCallback());
    }

    @Override // defpackage.j3
    public final void k(View view, ViewGroup.LayoutParams layoutParams) {
        y();
        ViewGroup viewGroup = (ViewGroup) this.A.findViewById(16908290);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.m.a(this.l.getCallback());
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0044, code lost:
        if (r6.h() != false) goto L19;
     */
    @Override // defpackage.qo
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(defpackage.so r6) {
        /*
            r5 = this;
            androidx.appcompat.widget.ActionBarOverlayLayout r6 = r5.r
            r0 = 1
            r1 = 0
            if (r6 == 0) goto Lc9
            r6.k()
            pb r6 = r6.e
            h50 r6 = (defpackage.h50) r6
            androidx.appcompat.widget.Toolbar r6 = r6.a
            int r2 = r6.getVisibility()
            if (r2 != 0) goto Lc9
            androidx.appcompat.widget.ActionMenuView r6 = r6.a
            if (r6 == 0) goto Lc9
            boolean r6 = r6.t
            if (r6 == 0) goto Lc9
            android.content.Context r6 = r5.k
            android.view.ViewConfiguration r6 = android.view.ViewConfiguration.get(r6)
            boolean r6 = r6.hasPermanentMenuKey()
            if (r6 == 0) goto L46
            androidx.appcompat.widget.ActionBarOverlayLayout r6 = r5.r
            r6.k()
            pb r6 = r6.e
            h50 r6 = (defpackage.h50) r6
            androidx.appcompat.widget.Toolbar r6 = r6.a
            androidx.appcompat.widget.ActionMenuView r6 = r6.a
            if (r6 == 0) goto Lc9
            e1 r6 = r6.u
            if (r6 == 0) goto Lc9
            c1 r2 = r6.v
            if (r2 != 0) goto L46
            boolean r6 = r6.h()
            if (r6 == 0) goto Lc9
        L46:
            android.view.Window r6 = r5.l
            android.view.Window$Callback r6 = r6.getCallback()
            androidx.appcompat.widget.ActionBarOverlayLayout r2 = r5.r
            r2.k()
            pb r2 = r2.e
            h50 r2 = (defpackage.h50) r2
            androidx.appcompat.widget.Toolbar r2 = r2.a
            boolean r2 = r2.p()
            r3 = 108(0x6c, float:1.51E-43)
            if (r2 == 0) goto L84
            androidx.appcompat.widget.ActionBarOverlayLayout r0 = r5.r
            r0.k()
            pb r0 = r0.e
            h50 r0 = (defpackage.h50) r0
            androidx.appcompat.widget.Toolbar r0 = r0.a
            androidx.appcompat.widget.ActionMenuView r0 = r0.a
            if (r0 == 0) goto L76
            e1 r0 = r0.u
            if (r0 == 0) goto L76
            boolean r0 = r0.d()
        L76:
            boolean r0 = r5.Q
            if (r0 != 0) goto Lc8
            v3 r5 = r5.B(r1)
            so r5 = r5.h
            r6.onPanelClosed(r3, r5)
            return
        L84:
            if (r6 == 0) goto Lc8
            boolean r2 = r5.Q
            if (r2 != 0) goto Lc8
            boolean r2 = r5.Y
            if (r2 == 0) goto La1
            int r2 = r5.Z
            r0 = r0 & r2
            if (r0 == 0) goto La1
            android.view.Window r0 = r5.l
            android.view.View r0 = r0.getDecorView()
            k3 r2 = r5.a0
            r0.removeCallbacks(r2)
            r2.run()
        La1:
            v3 r0 = r5.B(r1)
            so r2 = r0.h
            if (r2 == 0) goto Lc8
            boolean r4 = r0.o
            if (r4 != 0) goto Lc8
            android.view.View r4 = r0.g
            boolean r1 = r6.onPreparePanel(r1, r4, r2)
            if (r1 == 0) goto Lc8
            so r0 = r0.h
            r6.onMenuOpened(r3, r0)
            androidx.appcompat.widget.ActionBarOverlayLayout r5 = r5.r
            r5.k()
            pb r5 = r5.e
            h50 r5 = (defpackage.h50) r5
            androidx.appcompat.widget.Toolbar r5 = r5.a
            r5.v()
        Lc8:
            return
        Lc9:
            v3 r6 = r5.B(r1)
            r6.n = r0
            r5.u(r6, r1)
            r0 = 0
            r5.G(r6, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w3.m(so):void");
    }

    @Override // defpackage.j3
    public final void n(int i) {
        if (this.S != i) {
            this.S = i;
            if (this.O) {
                p(true, true);
            }
        }
    }

    @Override // defpackage.j3
    public final void o(CharSequence charSequence) {
        this.q = charSequence;
        ActionBarOverlayLayout actionBarOverlayLayout = this.r;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setWindowTitle(charSequence);
            return;
        }
        k60 k60Var = this.n;
        if (k60Var != null) {
            k60Var.I(charSequence);
            return;
        }
        TextView textView = this.B;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x010a, code lost:
        if (r10.equals("ImageButton") == false) goto L23;
     */
    @Override // android.view.LayoutInflater.Factory2
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View onCreateView(android.view.View r9, java.lang.String r10, android.content.Context r11, android.util.AttributeSet r12) {
        /*
            Method dump skipped, instructions count: 722
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w3.onCreateView(android.view.View, java.lang.String, android.content.Context, android.util.AttributeSet):android.view.View");
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0174  */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01fe A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:157:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x008e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x00e3 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean p(boolean r13, boolean r14) {
        /*
            Method dump skipped, instructions count: 570
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w3.p(boolean, boolean):boolean");
    }

    public final void q(Window window) {
        Drawable drawable;
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        OnBackInvokedCallback onBackInvokedCallback;
        int resourceId;
        if (this.l == null) {
            Window.Callback callback = window.getCallback();
            if (!(callback instanceof q3)) {
                q3 q3Var = new q3(this, callback);
                this.m = q3Var;
                window.setCallback(q3Var);
                Context context = this.k;
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes((AttributeSet) null, i0);
                if (obtainStyledAttributes.hasValue(0) && (resourceId = obtainStyledAttributes.getResourceId(0, 0)) != 0) {
                    z3 a = z3.a();
                    synchronized (a) {
                        drawable = a.a.e(context, resourceId, true);
                    }
                } else {
                    drawable = null;
                }
                if (drawable != null) {
                    window.setBackgroundDrawable(drawable);
                }
                obtainStyledAttributes.recycle();
                this.l = window;
                if (Build.VERSION.SDK_INT >= 33 && (onBackInvokedDispatcher = this.f0) == null) {
                    Object obj = this.j;
                    if (onBackInvokedDispatcher != null && (onBackInvokedCallback = this.g0) != null) {
                        p3.c(onBackInvokedDispatcher, onBackInvokedCallback);
                        this.g0 = null;
                    }
                    if (obj instanceof Activity) {
                        Activity activity = (Activity) obj;
                        if (activity.getWindow() != null) {
                            this.f0 = p3.a(activity);
                            K();
                            return;
                        }
                    }
                    this.f0 = null;
                    K();
                    return;
                }
                return;
            }
            c2.g("AppCompat has already installed itself into the Window");
            return;
        }
        c2.g("AppCompat has already installed itself into the Window");
    }

    public final void s(int i, v3 v3Var, so soVar) {
        if (soVar == null) {
            if (v3Var == null && i >= 0) {
                v3[] v3VarArr = this.L;
                if (i < v3VarArr.length) {
                    v3Var = v3VarArr[i];
                }
            }
            if (v3Var != null) {
                soVar = v3Var.h;
            }
        }
        if ((v3Var == null || v3Var.m) && !this.Q) {
            q3 q3Var = this.m;
            Window.Callback callback = this.l.getCallback();
            q3Var.getClass();
            try {
                q3Var.e = true;
                callback.onPanelClosed(i, soVar);
            } finally {
                q3Var.e = false;
            }
        }
    }

    public final void t(so soVar) {
        e1 e1Var;
        if (this.K) {
            return;
        }
        this.K = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.r;
        actionBarOverlayLayout.k();
        ActionMenuView actionMenuView = ((h50) actionBarOverlayLayout.e).a.a;
        if (actionMenuView != null && (e1Var = actionMenuView.u) != null) {
            e1Var.d();
            a1 a1Var = e1Var.u;
            if (a1Var != null && a1Var.b()) {
                a1Var.i.dismiss();
            }
        }
        Window.Callback callback = this.l.getCallback();
        if (callback != null && !this.Q) {
            callback.onPanelClosed(108, soVar);
        }
        this.K = false;
    }

    public final void u(v3 v3Var, boolean z) {
        u3 u3Var;
        ActionBarOverlayLayout actionBarOverlayLayout;
        if (z && v3Var.a == 0 && (actionBarOverlayLayout = this.r) != null) {
            actionBarOverlayLayout.k();
            if (((h50) actionBarOverlayLayout.e).a.p()) {
                t(v3Var.h);
                return;
            }
        }
        WindowManager windowManager = (WindowManager) this.k.getSystemService("window");
        if (windowManager != null && v3Var.m && (u3Var = v3Var.e) != null) {
            windowManager.removeView(u3Var);
            if (z) {
                s(v3Var.a, v3Var, null);
            }
        }
        v3Var.k = false;
        v3Var.l = false;
        v3Var.m = false;
        v3Var.f = null;
        v3Var.n = true;
        if (this.M == v3Var) {
            this.M = null;
        }
        if (v3Var.a == 0) {
            K();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0037, code lost:
        if (r4.dispatchKeyEvent(r7) != false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e8, code lost:
        if (r6.d() != false) goto L69;
     */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0113  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean w(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.w3.w(android.view.KeyEvent):boolean");
    }

    public final void x(int i) {
        v3 B = B(i);
        if (B.h != null) {
            Bundle bundle = new Bundle();
            B.h.t(bundle);
            if (bundle.size() > 0) {
                B.p = bundle;
            }
            B.h.w();
            B.h.clear();
        }
        B.o = true;
        B.n = true;
        if ((i == 108 || i == 0) && this.r != null) {
            v3 B2 = B(0);
            B2.k = false;
            I(B2, null);
        }
    }

    public final void y() {
        ViewGroup viewGroup;
        CharSequence charSequence;
        Context context;
        if (!this.z) {
            Context context2 = this.k;
            int[] iArr = vv.j;
            TypedArray obtainStyledAttributes = context2.obtainStyledAttributes(iArr);
            if (obtainStyledAttributes.hasValue(117)) {
                if (obtainStyledAttributes.getBoolean(126, false)) {
                    h(1);
                } else if (obtainStyledAttributes.getBoolean(117, false)) {
                    h(108);
                }
                if (obtainStyledAttributes.getBoolean(118, false)) {
                    h(109);
                }
                if (obtainStyledAttributes.getBoolean(119, false)) {
                    h(10);
                }
                this.I = obtainStyledAttributes.getBoolean(0, false);
                obtainStyledAttributes.recycle();
                z();
                this.l.getDecorView();
                LayoutInflater from = LayoutInflater.from(context2);
                if (!this.J) {
                    if (this.I) {
                        viewGroup = (ViewGroup) from.inflate(R.layout.abc_dialog_title_material, (ViewGroup) null);
                        this.G = false;
                        this.F = false;
                    } else if (this.F) {
                        TypedValue typedValue = new TypedValue();
                        context2.getTheme().resolveAttribute(R.attr.actionBarTheme, typedValue, true);
                        if (typedValue.resourceId != 0) {
                            context = new cb(context2, typedValue.resourceId);
                        } else {
                            context = context2;
                        }
                        viewGroup = (ViewGroup) LayoutInflater.from(context).inflate(R.layout.abc_screen_toolbar, (ViewGroup) null);
                        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) viewGroup.findViewById(R.id.decor_content_parent);
                        this.r = actionBarOverlayLayout;
                        actionBarOverlayLayout.setWindowCallback(this.l.getCallback());
                        if (this.G) {
                            this.r.j(109);
                        }
                        if (this.D) {
                            this.r.j(2);
                        }
                        if (this.E) {
                            this.r.j(5);
                        }
                    } else {
                        viewGroup = null;
                    }
                } else {
                    viewGroup = this.H ? (ViewGroup) from.inflate(R.layout.abc_screen_simple_overlay_action_mode, (ViewGroup) null) : (ViewGroup) from.inflate(R.layout.abc_screen_simple, (ViewGroup) null);
                }
                if (viewGroup != null) {
                    l3 l3Var = new l3(this, 0);
                    WeakHashMap weakHashMap = u70.a;
                    j70.u(viewGroup, l3Var);
                    if (this.r == null) {
                        this.B = (TextView) viewGroup.findViewById(R.id.title);
                    }
                    Method method = l80.a;
                    try {
                        Method method2 = viewGroup.getClass().getMethod("makeOptionalFitsSystemWindows", null);
                        if (!method2.isAccessible()) {
                            method2.setAccessible(true);
                        }
                        method2.invoke(viewGroup, null);
                    } catch (IllegalAccessException e) {
                        Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
                    } catch (NoSuchMethodException unused) {
                        Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
                    } catch (InvocationTargetException e2) {
                        Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e2);
                    }
                    ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(R.id.action_bar_activity_content);
                    ViewGroup viewGroup2 = (ViewGroup) this.l.findViewById(16908290);
                    if (viewGroup2 != null) {
                        while (viewGroup2.getChildCount() > 0) {
                            View childAt = viewGroup2.getChildAt(0);
                            viewGroup2.removeViewAt(0);
                            contentFrameLayout.addView(childAt);
                        }
                        viewGroup2.setId(-1);
                        contentFrameLayout.setId(16908290);
                        if (viewGroup2 instanceof FrameLayout) {
                            ((FrameLayout) viewGroup2).setForeground(null);
                        }
                    }
                    this.l.setContentView(viewGroup);
                    contentFrameLayout.setAttachListener(new l3(this, 1));
                    this.A = viewGroup;
                    Object obj = this.j;
                    if (obj instanceof Activity) {
                        charSequence = ((Activity) obj).getTitle();
                    } else {
                        charSequence = this.q;
                    }
                    if (!TextUtils.isEmpty(charSequence)) {
                        ActionBarOverlayLayout actionBarOverlayLayout2 = this.r;
                        if (actionBarOverlayLayout2 != null) {
                            actionBarOverlayLayout2.setWindowTitle(charSequence);
                        } else {
                            k60 k60Var = this.n;
                            if (k60Var != null) {
                                k60Var.I(charSequence);
                            } else {
                                TextView textView = this.B;
                                if (textView != null) {
                                    textView.setText(charSequence);
                                }
                            }
                        }
                    }
                    ContentFrameLayout contentFrameLayout2 = (ContentFrameLayout) this.A.findViewById(16908290);
                    View decorView = this.l.getDecorView();
                    contentFrameLayout2.g.set(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
                    WeakHashMap weakHashMap2 = u70.a;
                    if (g70.c(contentFrameLayout2)) {
                        contentFrameLayout2.requestLayout();
                    }
                    TypedArray obtainStyledAttributes2 = context2.obtainStyledAttributes(iArr);
                    obtainStyledAttributes2.getValue(124, contentFrameLayout2.getMinWidthMajor());
                    obtainStyledAttributes2.getValue(125, contentFrameLayout2.getMinWidthMinor());
                    if (obtainStyledAttributes2.hasValue(122)) {
                        obtainStyledAttributes2.getValue(122, contentFrameLayout2.getFixedWidthMajor());
                    }
                    if (obtainStyledAttributes2.hasValue(123)) {
                        obtainStyledAttributes2.getValue(123, contentFrameLayout2.getFixedWidthMinor());
                    }
                    if (obtainStyledAttributes2.hasValue(120)) {
                        obtainStyledAttributes2.getValue(120, contentFrameLayout2.getFixedHeightMajor());
                    }
                    if (obtainStyledAttributes2.hasValue(121)) {
                        obtainStyledAttributes2.getValue(121, contentFrameLayout2.getFixedHeightMinor());
                    }
                    obtainStyledAttributes2.recycle();
                    contentFrameLayout2.requestLayout();
                    this.z = true;
                    v3 B = B(0);
                    if (!this.Q && B.h == null) {
                        D(108);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.F + ", windowActionBarOverlay: " + this.G + ", android:windowIsFloating: " + this.I + ", windowActionModeOverlay: " + this.H + ", windowNoTitle: " + this.J + " }");
            }
            obtainStyledAttributes.recycle();
            c2.g("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
    }

    public final void z() {
        if (this.l == null) {
            Object obj = this.j;
            if (obj instanceof Activity) {
                q(((Activity) obj).getWindow());
            }
        }
        if (this.l != null) {
            return;
        }
        c2.g("We have not been given a Window");
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }
}
