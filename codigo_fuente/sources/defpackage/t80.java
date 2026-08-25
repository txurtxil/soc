package defpackage;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* renamed from: t80  reason: default package */
/* loaded from: classes.dex */
public final class t80 extends k60 implements v0 {
    public static final AccelerateInterpolator Q = new AccelerateInterpolator();
    public static final DecelerateInterpolator R = new DecelerateInterpolator();
    public s80 A;
    public s80 B;
    public ko C;
    public boolean D;
    public final ArrayList E;
    public int F;
    public boolean G;
    public boolean H;
    public boolean I;
    public boolean J;
    public i80 K;
    public boolean L;
    public boolean M;
    public final r80 N;
    public final r80 O;
    public final i90 P;
    public Context s;
    public Context t;
    public ActionBarOverlayLayout u;
    public ActionBarContainer v;
    public pb w;
    public ActionBarContextView x;
    public final View y;
    public boolean z;

    public t80(Activity activity, boolean z) {
        new ArrayList();
        this.E = new ArrayList();
        this.F = 0;
        this.G = true;
        this.J = true;
        this.N = new r80(this, 0);
        this.O = new r80(this, 1);
        this.P = new i90(this);
        View decorView = activity.getWindow().getDecorView();
        M(decorView);
        if (!z) {
            this.y = decorView.findViewById(16908290);
        }
    }

    @Override // defpackage.k60
    public final void E(boolean z) {
        if (!this.z) {
            F(z);
        }
    }

    @Override // defpackage.k60
    public final void F(boolean z) {
        int i;
        if (z) {
            i = 4;
        } else {
            i = 0;
        }
        h50 h50Var = (h50) this.w;
        int i2 = h50Var.b;
        this.z = true;
        h50Var.a((i & 4) | (i2 & (-5)));
    }

    @Override // defpackage.k60
    public final void G(boolean z) {
        i80 i80Var;
        this.L = z;
        if (!z && (i80Var = this.K) != null) {
            i80Var.a();
        }
    }

    @Override // defpackage.k60
    public final void I(CharSequence charSequence) {
        h50 h50Var = (h50) this.w;
        if (!h50Var.g) {
            Toolbar toolbar = h50Var.a;
            h50Var.h = charSequence;
            if ((h50Var.b & 8) != 0) {
                toolbar.setTitle(charSequence);
                if (h50Var.g) {
                    u70.i(toolbar.getRootView(), charSequence);
                }
            }
        }
    }

    @Override // defpackage.k60
    public final i1 K(ko koVar) {
        s80 s80Var = this.A;
        if (s80Var != null) {
            s80Var.a();
        }
        this.u.setHideOnContentScrollEnabled(false);
        this.x.e();
        s80 s80Var2 = new s80(this, this.x.getContext(), koVar);
        so soVar = s80Var2.d;
        soVar.w();
        try {
            if (((vp) s80Var2.e.b).f(s80Var2, soVar)) {
                this.A = s80Var2;
                s80Var2.h();
                this.x.c(s80Var2);
                L(true);
                return s80Var2;
            }
            return null;
        } finally {
            soVar.v();
        }
    }

    public final void L(boolean z) {
        h80 i;
        h80 h80Var;
        long j;
        boolean z2 = this.I;
        if (z) {
            if (!z2) {
                this.I = true;
                ActionBarOverlayLayout actionBarOverlayLayout = this.u;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                O(false);
            }
        } else if (z2) {
            this.I = false;
            ActionBarOverlayLayout actionBarOverlayLayout2 = this.u;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            O(false);
        }
        ActionBarContainer actionBarContainer = this.v;
        WeakHashMap weakHashMap = u70.a;
        boolean c = g70.c(actionBarContainer);
        pb pbVar = this.w;
        if (c) {
            if (z) {
                h50 h50Var = (h50) pbVar;
                i = u70.a(h50Var.a);
                i.a(0.0f);
                i.c(100L);
                i.d(new g50(h50Var, 4));
                h80Var = this.x.i(0, 200L);
            } else {
                h50 h50Var2 = (h50) pbVar;
                h80 a = u70.a(h50Var2.a);
                a.a(1.0f);
                a.c(200L);
                a.d(new g50(h50Var2, 0));
                i = this.x.i(8, 100L);
                h80Var = a;
            }
            i80 i80Var = new i80();
            ArrayList arrayList = i80Var.a;
            arrayList.add(i);
            View view = (View) i.a.get();
            if (view != null) {
                j = view.animate().getDuration();
            } else {
                j = 0;
            }
            View view2 = (View) h80Var.a.get();
            if (view2 != null) {
                view2.animate().setStartDelay(j);
            }
            arrayList.add(h80Var);
            i80Var.b();
        } else if (z) {
            ((h50) pbVar).a.setVisibility(4);
            this.x.setVisibility(0);
        } else {
            ((h50) pbVar).a.setVisibility(0);
            this.x.setVisibility(8);
        }
    }

    public final void M(View view) {
        String str;
        pb wrapper;
        boolean z;
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(R.id.decor_content_parent);
        this.u = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        View findViewById = view.findViewById(R.id.action_bar);
        if (findViewById instanceof pb) {
            wrapper = (pb) findViewById;
        } else if (findViewById instanceof Toolbar) {
            wrapper = ((Toolbar) findViewById).getWrapper();
        } else {
            if (findViewById != null) {
                str = findViewById.getClass().getSimpleName();
            } else {
                str = "null";
            }
            throw new IllegalStateException("Can't make a decor toolbar out of ".concat(str));
        }
        this.w = wrapper;
        this.x = (ActionBarContextView) view.findViewById(R.id.action_context_bar);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(R.id.action_bar_container);
        this.v = actionBarContainer;
        pb pbVar = this.w;
        if (pbVar != null && this.x != null && actionBarContainer != null) {
            Context context = ((h50) pbVar).a.getContext();
            this.s = context;
            if ((((h50) this.w).b & 4) != 0) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                this.z = true;
            }
            int i = context.getApplicationInfo().targetSdkVersion;
            this.w.getClass();
            N(context.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs));
            TypedArray obtainStyledAttributes = this.s.obtainStyledAttributes(null, vv.a, R.attr.actionBarStyle, 0);
            if (obtainStyledAttributes.getBoolean(14, false)) {
                ActionBarOverlayLayout actionBarOverlayLayout2 = this.u;
                if (actionBarOverlayLayout2.h) {
                    this.M = true;
                    actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
                } else {
                    c2.g("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
                    return;
                }
            }
            int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(12, 0);
            if (dimensionPixelSize != 0) {
                ActionBarContainer actionBarContainer2 = this.v;
                WeakHashMap weakHashMap = u70.a;
                j70.s(actionBarContainer2, dimensionPixelSize);
            }
            obtainStyledAttributes.recycle();
            return;
        }
        c2.g(t80.class.getSimpleName().concat(" can only be used with a compatible window decor layout"));
    }

    public final void N(boolean z) {
        if (!z) {
            ((h50) this.w).getClass();
            this.v.setTabContainer(null);
        } else {
            this.v.setTabContainer(null);
            ((h50) this.w).getClass();
        }
        this.w.getClass();
        ((h50) this.w).a.setCollapsible(false);
        this.u.setHasNonEmbeddedTabs(false);
    }

    public final void O(boolean z) {
        boolean z2;
        int[] iArr;
        int[] iArr2;
        boolean z3 = this.H;
        if (!this.I && z3) {
            z2 = false;
        } else {
            z2 = true;
        }
        boolean z4 = this.J;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = null;
        final i90 i90Var = this.P;
        View view = this.y;
        if (z2) {
            if (!z4) {
                this.J = true;
                i80 i80Var = this.K;
                if (i80Var != null) {
                    i80Var.a();
                }
                this.v.setVisibility(0);
                int i = this.F;
                r80 r80Var = this.O;
                if (i == 0 && (this.L || z)) {
                    this.v.setTranslationY(0.0f);
                    float f = -this.v.getHeight();
                    if (z) {
                        this.v.getLocationInWindow(new int[]{0, 0});
                        f -= iArr2[1];
                    }
                    this.v.setTranslationY(f);
                    i80 i80Var2 = new i80();
                    h80 a = u70.a(this.v);
                    a.e(0.0f);
                    final View view2 = (View) a.a.get();
                    if (view2 != null) {
                        if (i90Var != null) {
                            animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener(view2) { // from class: f80
                                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                    ((View) ((t80) i90.this.a).v.getParent()).invalidate();
                                }
                            };
                        }
                        g80.a(view2.animate(), animatorUpdateListener);
                    }
                    boolean z5 = i80Var2.e;
                    ArrayList arrayList = i80Var2.a;
                    if (!z5) {
                        arrayList.add(a);
                    }
                    if (this.G && view != null) {
                        view.setTranslationY(f);
                        h80 a2 = u70.a(view);
                        a2.e(0.0f);
                        if (!i80Var2.e) {
                            arrayList.add(a2);
                        }
                    }
                    boolean z6 = i80Var2.e;
                    if (!z6) {
                        i80Var2.c = R;
                    }
                    if (!z6) {
                        i80Var2.b = 250L;
                    }
                    if (!z6) {
                        i80Var2.d = r80Var;
                    }
                    this.K = i80Var2;
                    i80Var2.b();
                } else {
                    this.v.setAlpha(1.0f);
                    this.v.setTranslationY(0.0f);
                    if (this.G && view != null) {
                        view.setTranslationY(0.0f);
                    }
                    r80Var.b();
                }
                ActionBarOverlayLayout actionBarOverlayLayout = this.u;
                if (actionBarOverlayLayout != null) {
                    WeakHashMap weakHashMap = u70.a;
                    h70.c(actionBarOverlayLayout);
                }
            }
        } else if (z4) {
            this.J = false;
            i80 i80Var3 = this.K;
            if (i80Var3 != null) {
                i80Var3.a();
            }
            int i2 = this.F;
            r80 r80Var2 = this.N;
            if (i2 == 0 && (this.L || z)) {
                this.v.setAlpha(1.0f);
                this.v.setTransitioning(true);
                i80 i80Var4 = new i80();
                float f2 = -this.v.getHeight();
                if (z) {
                    this.v.getLocationInWindow(new int[]{0, 0});
                    f2 -= iArr[1];
                }
                h80 a3 = u70.a(this.v);
                a3.e(f2);
                final View view3 = (View) a3.a.get();
                if (view3 != null) {
                    if (i90Var != null) {
                        animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener(view3) { // from class: f80
                            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                                ((View) ((t80) i90.this.a).v.getParent()).invalidate();
                            }
                        };
                    }
                    g80.a(view3.animate(), animatorUpdateListener);
                }
                boolean z7 = i80Var4.e;
                ArrayList arrayList2 = i80Var4.a;
                if (!z7) {
                    arrayList2.add(a3);
                }
                if (this.G && view != null) {
                    h80 a4 = u70.a(view);
                    a4.e(f2);
                    if (!i80Var4.e) {
                        arrayList2.add(a4);
                    }
                }
                boolean z8 = i80Var4.e;
                if (!z8) {
                    i80Var4.c = Q;
                }
                if (!z8) {
                    i80Var4.b = 250L;
                }
                if (!z8) {
                    i80Var4.d = r80Var2;
                }
                this.K = i80Var4;
                i80Var4.b();
                return;
            }
            r80Var2.b();
        }
    }

    @Override // defpackage.k60
    public final boolean i() {
        y40 y40Var;
        wo woVar;
        pb pbVar = this.w;
        if (pbVar != null && (y40Var = ((h50) pbVar).a.N) != null && y40Var.b != null) {
            y40 y40Var2 = ((h50) pbVar).a.N;
            if (y40Var2 == null) {
                woVar = null;
            } else {
                woVar = y40Var2.b;
            }
            if (woVar != null) {
                woVar.collapseActionView();
                return true;
            }
            return true;
        }
        return false;
    }

    @Override // defpackage.k60
    public final void n(boolean z) {
        if (z != this.D) {
            this.D = z;
            ArrayList arrayList = this.E;
            if (arrayList.size() <= 0) {
                return;
            }
            arrayList.get(0).getClass();
            c2.l();
        }
    }

    @Override // defpackage.k60
    public final int t() {
        return ((h50) this.w).b;
    }

    @Override // defpackage.k60
    public final Context u() {
        if (this.t == null) {
            TypedValue typedValue = new TypedValue();
            this.s.getTheme().resolveAttribute(R.attr.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.t = new ContextThemeWrapper(this.s, i);
            } else {
                this.t = this.s;
            }
        }
        return this.t;
    }

    @Override // defpackage.k60
    public final void x() {
        N(this.s.getResources().getBoolean(R.bool.abc_action_bar_embed_tabs));
    }

    @Override // defpackage.k60
    public final boolean z(int i, KeyEvent keyEvent) {
        so soVar;
        s80 s80Var = this.A;
        if (s80Var == null || (soVar = s80Var.d) == null) {
            return false;
        }
        boolean z = true;
        if (KeyCharacterMap.load(keyEvent.getDeviceId()).getKeyboardType() == 1) {
            z = false;
        }
        soVar.setQwertyMode(z);
        return soVar.performShortcut(i, keyEvent, 0);
    }

    public t80(Dialog dialog) {
        new ArrayList();
        this.E = new ArrayList();
        this.F = 0;
        this.G = true;
        this.J = true;
        this.N = new r80(this, 0);
        this.O = new r80(this, 1);
        this.P = new i90(this);
        M(dialog.getWindow().getDecorView());
    }
}
