package idv.lzn.screenonauto.projection;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Insets;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.provider.Settings;
import android.view.GestureDetector;
import android.view.ScaleGestureDetector;
import android.view.Surface;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.WindowMetrics;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.google.android.apps.auto.sdk.CarActivity;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.privileged.PrivilegedInputInjector;
import idv.lzn.screenonauto.projection.ProjectionCarActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
/* loaded from: classes.dex */
public final class ProjectionCarActivity extends CarActivity {
    public static final /* synthetic */ int G = 0;
    public boolean D;
    public SurfaceView h;
    public GestureDetector i;
    public ScaleGestureDetector j;
    public boolean k;
    public boolean l;
    public ImageView m;
    public ImageView n;
    public ImageView o;
    public ImageView q;
    public ImageView r;
    public PassThroughColumn s;
    public PassThroughScroll t;
    public LinearLayout u;
    public int v;
    public int w;
    public int x;
    public int y;
    public Surface z;
    public final w30 A = new w30(new y6(2, this));
    public final Handler B = new Handler(Looper.getMainLooper());
    public final m1 C = new m1(10, this);
    public final iq E = new iq(1, this);
    public final mv F = new View.OnFocusChangeListener() { // from class: mv
        @Override // android.view.View.OnFocusChangeListener
        public final void onFocusChange(View view, boolean z) {
            int i = ProjectionCarActivity.G;
            if (z) {
                ProjectionCarActivity.this.o();
            }
        }
    };

    /* JADX WARN: Multi-variable type inference failed */
    public final void i() {
        int i;
        at atVar;
        int i2;
        WindowManager windowManager;
        cy cyVar;
        int[] iArr;
        WindowMetrics currentWindowMetrics;
        WindowInsets windowInsets;
        int navigationBars;
        Insets insets;
        int i3;
        int i4;
        int i5;
        int i6;
        if (this.s != null && this.t != null) {
            boolean z = m().getBoolean("legacy_buttons_left", false);
            if (z) {
                i = 8388611;
            } else {
                i = 8388613;
            }
            int i7 = (int) (getResources().getDisplayMetrics().density * 16.0f);
            if (m().getBoolean("legacy_buttons_dodge_nav", false)) {
                if (Build.VERSION.SDK_INT >= 30 && (windowManager = (WindowManager) getApplicationContext().getSystemService(WindowManager.class)) != null) {
                    try {
                        currentWindowMetrics = windowManager.getCurrentWindowMetrics();
                        windowInsets = currentWindowMetrics.getWindowInsets();
                        navigationBars = WindowInsets.Type.navigationBars();
                        insets = windowInsets.getInsets(navigationBars);
                        insets.getClass();
                        i3 = insets.left;
                        i4 = insets.right;
                        i5 = insets.bottom;
                        cyVar = new int[]{i3, i4, i5};
                    } catch (Throwable th) {
                        cyVar = new cy(th);
                    }
                    boolean z2 = cyVar instanceof cy;
                    cy cyVar2 = cyVar;
                    if (z2) {
                        cyVar2 = null;
                    }
                    iArr = (int[]) cyVar2;
                } else {
                    iArr = null;
                }
                if (iArr == null) {
                    atVar = new at(Integer.valueOf(i7), Integer.valueOf(i7));
                } else {
                    q50 k = k();
                    if (k == null) {
                        atVar = new at(Integer.valueOf(i7), Integer.valueOf(i7));
                    } else {
                        float floatValue = k.a.floatValue();
                        float floatValue2 = k.b.floatValue();
                        float floatValue3 = k.c.floatValue();
                        int i8 = ((int) (getResources().getDisplayMetrics().density * 64.0f)) + i7;
                        if (z) {
                            i6 = iArr[0];
                        } else {
                            i6 = iArr[1];
                        }
                        int i9 = (int) ((i6 * floatValue) + floatValue2);
                        if (i6 <= 0 || floatValue2 >= i8 || i9 <= i7) {
                            i9 = i7;
                        }
                        int i10 = iArr[2];
                        int i11 = (int) ((i10 * floatValue) + floatValue3);
                        if (i10 <= 0 || floatValue3 >= i8 || i11 <= i7) {
                            i11 = i7;
                        }
                        atVar = new at(Integer.valueOf(i9), Integer.valueOf(i11));
                    }
                }
            } else {
                atVar = new at(Integer.valueOf(i7), Integer.valueOf(i7));
            }
            int intValue = ((Number) atVar.a).intValue();
            int intValue2 = ((Number) atVar.b).intValue();
            PassThroughColumn passThroughColumn = this.s;
            if (passThroughColumn != null) {
                ViewGroup.LayoutParams layoutParams = passThroughColumn.getLayoutParams();
                layoutParams.getClass();
                FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
                layoutParams2.gravity = i | 80;
                if (z) {
                    i2 = intValue;
                } else {
                    i2 = i7;
                }
                layoutParams2.setMarginStart(i2);
                if (!z) {
                    i7 = intValue;
                }
                layoutParams2.setMarginEnd(i7);
                layoutParams2.bottomMargin = intValue2;
                PassThroughScroll passThroughScroll = this.t;
                if (passThroughScroll != null) {
                    ViewGroup.LayoutParams layoutParams3 = passThroughScroll.getLayoutParams();
                    layoutParams3.getClass();
                    FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) layoutParams3;
                    layoutParams4.gravity = i | 48;
                    layoutParams4.setMarginStart(layoutParams2.getMarginStart());
                    layoutParams4.setMarginEnd(layoutParams2.getMarginEnd());
                    PassThroughColumn passThroughColumn2 = this.s;
                    if (passThroughColumn2 != null) {
                        passThroughColumn2.setGravity(i);
                        PassThroughColumn passThroughColumn3 = this.s;
                        if (passThroughColumn3 != null) {
                            passThroughColumn3.setLayoutParams(layoutParams2);
                            PassThroughScroll passThroughScroll2 = this.t;
                            if (passThroughScroll2 != null) {
                                passThroughScroll2.setLayoutParams(layoutParams4);
                                return;
                            } else {
                                qj.v("shortcutBarScroll");
                                throw null;
                            }
                        }
                        qj.v("toggleColumn");
                        throw null;
                    }
                    qj.v("toggleColumn");
                    throw null;
                }
                qj.v("shortcutBarScroll");
                throw null;
            }
            qj.v("toggleColumn");
            throw null;
        }
    }

    public final void j() {
        int i;
        int i2;
        int i3;
        int i4;
        ImageView imageView = this.m;
        if (imageView == null) {
            return;
        }
        int i5 = 8;
        if (m().getBoolean("map_action_force_landscape", true)) {
            i = 0;
        } else {
            i = 8;
        }
        imageView.setVisibility(i);
        ImageView imageView2 = this.n;
        if (imageView2 != null) {
            if (m().getBoolean("map_action_auto_dim", false)) {
                i2 = 0;
            } else {
                i2 = 8;
            }
            imageView2.setVisibility(i2);
            ImageView imageView3 = this.o;
            if (imageView3 != null) {
                if (m().getBoolean("map_action_back", false)) {
                    i3 = 0;
                } else {
                    i3 = 8;
                }
                imageView3.setVisibility(i3);
                ImageView imageView4 = this.q;
                if (imageView4 != null) {
                    if (m().getBoolean("map_action_home", false)) {
                        i4 = 0;
                    } else {
                        i4 = 8;
                    }
                    imageView4.setVisibility(i4);
                    ImageView imageView5 = this.r;
                    if (imageView5 != null) {
                        if (m().getBoolean("map_action_recents", false)) {
                            i5 = 0;
                        }
                        imageView5.setVisibility(i5);
                        return;
                    }
                    qj.v("recentsButton");
                    throw null;
                }
                qj.v("homeButton");
                throw null;
            }
            qj.v("backButton");
            throw null;
        }
        qj.v("autoDimButton");
        throw null;
    }

    public final q50 k() {
        float f = b00.c;
        float f2 = b00.d;
        if (f != 0.0f && f2 != 0.0f) {
            int i = this.x;
            if (i <= 0) {
                i = this.v;
            }
            float f3 = i;
            int i2 = this.y;
            if (i2 <= 0) {
                i2 = this.w;
            }
            float f4 = i2;
            if (f3 == 0.0f || f4 == 0.0f) {
                return null;
            }
            float min = Math.min(f3 / f, f4 / f2);
            return new q50(Float.valueOf(min), Float.valueOf((f3 - (f * min)) / 2.0f), Float.valueOf((f4 - (f2 * min)) / 2.0f));
        }
        return null;
    }

    public final ArrayList l() {
        ArrayList arrayList = new ArrayList();
        if (this.m != null && m().getBoolean("map_action_force_landscape", true)) {
            ImageView imageView = this.m;
            if (imageView != null) {
                arrayList.add(imageView);
            } else {
                qj.v("forceLandscapeButton");
                throw null;
            }
        }
        if (this.n != null && m().getBoolean("map_action_auto_dim", false)) {
            ImageView imageView2 = this.n;
            if (imageView2 != null) {
                arrayList.add(imageView2);
            } else {
                qj.v("autoDimButton");
                throw null;
            }
        }
        if (this.o != null && m().getBoolean("map_action_back", false)) {
            ImageView imageView3 = this.o;
            if (imageView3 != null) {
                arrayList.add(imageView3);
            } else {
                qj.v("backButton");
                throw null;
            }
        }
        if (this.q != null && m().getBoolean("map_action_home", false)) {
            ImageView imageView4 = this.q;
            if (imageView4 != null) {
                arrayList.add(imageView4);
            } else {
                qj.v("homeButton");
                throw null;
            }
        }
        if (this.r != null && m().getBoolean("map_action_recents", false)) {
            ImageView imageView5 = this.r;
            if (imageView5 != null) {
                arrayList.add(imageView5);
            } else {
                qj.v("recentsButton");
                throw null;
            }
        }
        LinearLayout linearLayout = this.u;
        if (linearLayout != null && linearLayout.getChildCount() > 0) {
            PassThroughScroll passThroughScroll = this.t;
            if (passThroughScroll != null) {
                arrayList.add(passThroughScroll);
                return arrayList;
            }
            qj.v("shortcutBarScroll");
            throw null;
        }
        return arrayList;
    }

    public final SharedPreferences m() {
        return (SharedPreferences) this.A.a();
    }

    public final void n() {
        LinearLayout linearLayout = this.u;
        if (linearLayout == null) {
            return;
        }
        linearLayout.removeAllViews();
        getApplicationContext().getPackageManager();
        float f = getResources().getDisplayMetrics().density;
        int i = (int) (32.0f * f);
        int i2 = (int) (24.0f * f);
        int i3 = (int) (16.0f * f);
        int i4 = (int) (8.0f * f);
        SharedPreferences m = m();
        m.getClass();
        Iterator it = gt.b(m).iterator();
        while (true) {
            int i5 = 0;
            if (it.hasNext()) {
                String str = (String) it.next();
                ExecutorService executorService = z5.a;
                Context applicationContext = getApplicationContext();
                applicationContext.getClass();
                String b = z5.b(applicationContext, str);
                if (b != null) {
                    TextView textView = new TextView(this);
                    textView.setText(b);
                    textView.setTextColor(-1);
                    textView.setTextSize(26.0f);
                    textView.setBackground(ya.b(this, R.drawable.bg_force_landscape_button));
                    textView.setPaddingRelative(i2, i3, i2, i3);
                    textView.setCompoundDrawablePadding((int) (12.0f * f));
                    Context applicationContext2 = getApplicationContext();
                    applicationContext2.getClass();
                    Drawable a = z5.a(applicationContext2, str, R.drawable.car_max_drawer_width);
                    if (a != null) {
                        a.setBounds(0, 0, i, i);
                        textView.setCompoundDrawablesRelative(a, null, null, null);
                    }
                    textView.setClickable(true);
                    textView.setFocusable(true);
                    textView.setOnClickListener(new lv(this, str, 1));
                    LinearLayout linearLayout2 = this.u;
                    if (linearLayout2 != null) {
                        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                        layoutParams.setMarginEnd(i4);
                        linearLayout2.addView(textView, layoutParams);
                    } else {
                        qj.v("shortcutBar");
                        throw null;
                    }
                }
            } else {
                PassThroughScroll passThroughScroll = this.t;
                if (passThroughScroll != null) {
                    LinearLayout linearLayout3 = this.u;
                    if (linearLayout3 != null) {
                        if (linearLayout3.getChildCount() <= 0) {
                            i5 = 8;
                        }
                        passThroughScroll.setVisibility(i5);
                        r();
                        return;
                    }
                    qj.v("shortcutBar");
                    throw null;
                }
                qj.v("shortcutBarScroll");
                throw null;
            }
        }
    }

    public final void o() {
        ArrayList l = l();
        if (l.isEmpty()) {
            return;
        }
        i();
        Handler handler = this.B;
        m1 m1Var = this.C;
        handler.removeCallbacks(m1Var);
        PassThroughColumn passThroughColumn = this.s;
        if (passThroughColumn != null) {
            passThroughColumn.setPassTouches(false);
            PassThroughScroll passThroughScroll = this.t;
            if (passThroughScroll != null) {
                passThroughScroll.setPassTouches(false);
                int size = l.size();
                int i = 0;
                while (i < size) {
                    Object obj = l.get(i);
                    i++;
                    View view = (View) obj;
                    view.animate().cancel();
                    view.setAlpha(1.0f);
                    view.setVisibility(0);
                }
                this.D = true;
                handler.postDelayed(m1Var, 5000L);
                return;
            }
            qj.v("shortcutBarScroll");
            throw null;
        }
        qj.v("toggleColumn");
        throw null;
    }

    @Override // com.google.android.apps.auto.sdk.CarActivity, defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_projection_car);
        View findViewById = findViewById(R.id.projection_surface_view);
        findViewById.getClass();
        this.h = (SurfaceView) findViewById;
        this.i = new GestureDetector(this, new nv(this));
        this.j = new ScaleGestureDetector(this, new ov(this));
        SurfaceView surfaceView = this.h;
        if (surfaceView != null) {
            surfaceView.setOnTouchListener(new z6(1, this));
            View findViewById2 = findViewById(R.id.toggle_column);
            findViewById2.getClass();
            this.s = (PassThroughColumn) findViewById2;
            View findViewById3 = findViewById(R.id.force_landscape_button);
            findViewById3.getClass();
            ImageView imageView = (ImageView) findViewById3;
            this.m = imageView;
            imageView.setOnClickListener(new View.OnClickListener(this) { // from class: kv
                public final /* synthetic */ ProjectionCarActivity b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i = r2;
                    ProjectionCarActivity projectionCarActivity = this.b;
                    switch (i) {
                        case 0:
                            if (!projectionCarActivity.D) {
                                projectionCarActivity.o();
                                return;
                            }
                            boolean z = projectionCarActivity.m().getBoolean("force_landscape_active", false);
                            if (!z && !Settings.canDrawOverlays(projectionCarActivity.getApplicationContext())) {
                                Toast.makeText(projectionCarActivity.getApplicationContext(), (int) R.string.auto_dim_permission_required, 1).show();
                            } else {
                                projectionCarActivity.m().edit().putBoolean("force_landscape_active", !z).apply();
                                projectionCarActivity.q();
                            }
                            projectionCarActivity.o();
                            return;
                        default:
                            if (!projectionCarActivity.D) {
                                projectionCarActivity.o();
                                return;
                            }
                            boolean z2 = projectionCarActivity.m().getBoolean("auto_dim", false);
                            if (!z2 && !Settings.canDrawOverlays(projectionCarActivity.getApplicationContext())) {
                                Toast.makeText(projectionCarActivity.getApplicationContext(), (int) R.string.auto_dim_permission_required, 1).show();
                            } else {
                                projectionCarActivity.m().edit().putBoolean("auto_dim", !z2).apply();
                                projectionCarActivity.p();
                            }
                            projectionCarActivity.o();
                            return;
                    }
                }
            });
            q();
            View findViewById4 = findViewById(R.id.auto_dim_button);
            findViewById4.getClass();
            ImageView imageView2 = (ImageView) findViewById4;
            this.n = imageView2;
            imageView2.setOnClickListener(new View.OnClickListener(this) { // from class: kv
                public final /* synthetic */ ProjectionCarActivity b;

                {
                    this.b = this;
                }

                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    int i = r2;
                    ProjectionCarActivity projectionCarActivity = this.b;
                    switch (i) {
                        case 0:
                            if (!projectionCarActivity.D) {
                                projectionCarActivity.o();
                                return;
                            }
                            boolean z = projectionCarActivity.m().getBoolean("force_landscape_active", false);
                            if (!z && !Settings.canDrawOverlays(projectionCarActivity.getApplicationContext())) {
                                Toast.makeText(projectionCarActivity.getApplicationContext(), (int) R.string.auto_dim_permission_required, 1).show();
                            } else {
                                projectionCarActivity.m().edit().putBoolean("force_landscape_active", !z).apply();
                                projectionCarActivity.q();
                            }
                            projectionCarActivity.o();
                            return;
                        default:
                            if (!projectionCarActivity.D) {
                                projectionCarActivity.o();
                                return;
                            }
                            boolean z2 = projectionCarActivity.m().getBoolean("auto_dim", false);
                            if (!z2 && !Settings.canDrawOverlays(projectionCarActivity.getApplicationContext())) {
                                Toast.makeText(projectionCarActivity.getApplicationContext(), (int) R.string.auto_dim_permission_required, 1).show();
                            } else {
                                projectionCarActivity.m().edit().putBoolean("auto_dim", !z2).apply();
                                projectionCarActivity.p();
                            }
                            projectionCarActivity.o();
                            return;
                    }
                }
            });
            p();
            View findViewById5 = findViewById(R.id.back_button);
            findViewById5.getClass();
            this.o = (ImageView) findViewById5;
            View findViewById6 = findViewById(R.id.home_button);
            findViewById6.getClass();
            this.q = (ImageView) findViewById6;
            View findViewById7 = findViewById(R.id.recents_button);
            findViewById7.getClass();
            this.r = (ImageView) findViewById7;
            ImageView imageView3 = this.o;
            if (imageView3 != null) {
                imageView3.setOnClickListener(new lv(this, mt.b, 0));
                ImageView imageView4 = this.q;
                if (imageView4 != null) {
                    imageView4.setOnClickListener(new lv(this, mt.c, 0));
                    ImageView imageView5 = this.r;
                    if (imageView5 != null) {
                        imageView5.setOnClickListener(new lv(this, mt.d, 0));
                        j();
                        View findViewById8 = findViewById(R.id.shortcut_bar_scroll);
                        findViewById8.getClass();
                        this.t = (PassThroughScroll) findViewById8;
                        View findViewById9 = findViewById(R.id.shortcut_bar);
                        findViewById9.getClass();
                        this.u = (LinearLayout) findViewById9;
                        n();
                        i();
                        SurfaceView surfaceView2 = this.h;
                        if (surfaceView2 != null) {
                            surfaceView2.getHolder().addCallback(new pv(this));
                            return;
                        } else {
                            qj.v("surfaceView");
                            throw null;
                        }
                    }
                    qj.v("recentsButton");
                    throw null;
                }
                qj.v("homeButton");
                throw null;
            }
            qj.v("backButton");
            throw null;
        }
        qj.v("surfaceView");
        throw null;
    }

    @Override // com.google.android.apps.auto.sdk.CarActivity, defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public final void onStart() {
        super.onStart();
        Context applicationContext = getApplicationContext();
        applicationContext.getClass();
        PowerManager powerManager = (PowerManager) applicationContext.getApplicationContext().getSystemService(PowerManager.class);
        if (powerManager != null && !powerManager.isInteractive()) {
            PowerManager.WakeLock wakeLock = k60.i;
            if (wakeLock == null) {
                wakeLock = powerManager.newWakeLock(268435466, "ScreenOnAuto:wake");
                wakeLock.setReferenceCounted(false);
                k60.i = wakeLock;
            }
            wakeLock.acquire(20000L);
        }
        m().registerOnSharedPreferenceChangeListener(this.E);
        if (this.m != null) {
            q();
            p();
            j();
            n();
            i();
            o();
        }
    }

    @Override // com.google.android.apps.auto.sdk.CarActivity, defpackage.cb0, com.google.android.gms.car.CarActivityHost.HostedCarActivity
    public final void onStop() {
        super.onStop();
        this.k = false;
        PrivilegedInputInjector.INSTANCE.cancelForwardedStream();
        m().unregisterOnSharedPreferenceChangeListener(this.E);
        this.B.removeCallbacks(this.C);
        b00.h = null;
        this.z = null;
        b00.k.post(new m1(13, yz.b));
    }

    public final void p() {
        int i;
        int i2;
        if (this.n == null) {
            return;
        }
        boolean z = m().getBoolean("auto_dim", false);
        ImageView imageView = this.n;
        if (imageView != null) {
            if (z) {
                i = R.drawable.car_headline_2_size;
            } else {
                i = R.drawable.car_headline_1_size;
            }
            imageView.setImageResource(i);
            ImageView imageView2 = this.n;
            if (imageView2 != null) {
                Context applicationContext = getApplicationContext();
                if (z) {
                    i2 = R.string.action_cancel_dim;
                } else {
                    i2 = R.string.action_auto_dim;
                }
                imageView2.setContentDescription(applicationContext.getString(i2));
                return;
            }
            qj.v("autoDimButton");
            throw null;
        }
        qj.v("autoDimButton");
        throw null;
    }

    public final void q() {
        int i;
        int i2;
        boolean z = m().getBoolean("force_landscape_active", false);
        ImageView imageView = this.m;
        if (imageView != null) {
            if (z) {
                i = R.drawable.ic_force_landscape_on;
            } else {
                i = R.drawable.ic_force_landscape;
            }
            imageView.setImageResource(i);
            ImageView imageView2 = this.m;
            if (imageView2 != null) {
                Context applicationContext = getApplicationContext();
                if (z) {
                    i2 = R.string.action_cancel_force;
                } else {
                    i2 = R.string.action_force_landscape;
                }
                imageView2.setContentDescription(applicationContext.getString(i2));
                return;
            }
            qj.v("forceLandscapeButton");
            throw null;
        }
        qj.v("forceLandscapeButton");
        throw null;
    }

    public final void r() {
        ArrayList arrayList = new ArrayList();
        if (this.m != null && m().getBoolean("map_action_force_landscape", true)) {
            ImageView imageView = this.m;
            if (imageView != null) {
                arrayList.add(imageView);
            } else {
                qj.v("forceLandscapeButton");
                throw null;
            }
        }
        int i = 0;
        if (this.n != null && m().getBoolean("map_action_auto_dim", false)) {
            ImageView imageView2 = this.n;
            if (imageView2 != null) {
                arrayList.add(imageView2);
            } else {
                qj.v("autoDimButton");
                throw null;
            }
        }
        if (this.o != null && m().getBoolean("map_action_back", false)) {
            ImageView imageView3 = this.o;
            if (imageView3 != null) {
                arrayList.add(imageView3);
            } else {
                qj.v("backButton");
                throw null;
            }
        }
        if (this.q != null && m().getBoolean("map_action_home", false)) {
            ImageView imageView4 = this.q;
            if (imageView4 != null) {
                arrayList.add(imageView4);
            } else {
                qj.v("homeButton");
                throw null;
            }
        }
        if (this.r != null && m().getBoolean("map_action_recents", false)) {
            ImageView imageView5 = this.r;
            if (imageView5 != null) {
                arrayList.add(imageView5);
            } else {
                qj.v("recentsButton");
                throw null;
            }
        }
        LinearLayout linearLayout = this.u;
        if (linearLayout != null) {
            int childCount = linearLayout.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                LinearLayout linearLayout2 = this.u;
                if (linearLayout2 != null) {
                    View childAt = linearLayout2.getChildAt(i2);
                    childAt.getClass();
                    arrayList.add(childAt);
                } else {
                    qj.v("shortcutBar");
                    throw null;
                }
            }
        }
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((View) obj).setOnFocusChangeListener(this.F);
        }
    }
}
