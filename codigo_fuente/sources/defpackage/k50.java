package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.os.IBinder;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import com.google.android.apps.auto.sdk.ui.R;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
/* renamed from: k50  reason: default package */
/* loaded from: classes.dex */
public final class k50 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {
    public static k50 k;
    public static k50 l;
    public final View a;
    public final CharSequence b;
    public final int c;
    public final j50 d = new Runnable(this) { // from class: j50
        public final /* synthetic */ k50 b;

        {
            this.b = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = r2;
            k50 k50Var = this.b;
            switch (i) {
                case 0:
                    k50Var.c(false);
                    return;
                default:
                    k50Var.a();
                    return;
            }
        }
    };
    public final j50 e = new Runnable(this) { // from class: j50
        public final /* synthetic */ k50 b;

        {
            this.b = this;
        }

        @Override // java.lang.Runnable
        public final void run() {
            int i = r2;
            k50 k50Var = this.b;
            switch (i) {
                case 0:
                    k50Var.c(false);
                    return;
                default:
                    k50Var.a();
                    return;
            }
        }
    };
    public int f;
    public int g;
    public l50 h;
    public boolean i;
    public boolean j;

    /* JADX WARN: Type inference failed for: r0v0, types: [j50] */
    /* JADX WARN: Type inference failed for: r0v1, types: [j50] */
    public k50(View view, CharSequence charSequence) {
        int scaledTouchSlop;
        this.a = view;
        this.b = charSequence;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(view.getContext());
        Method method = x70.a;
        if (Build.VERSION.SDK_INT >= 28) {
            scaledTouchSlop = w70.a(viewConfiguration);
        } else {
            scaledTouchSlop = viewConfiguration.getScaledTouchSlop() / 2;
        }
        this.c = scaledTouchSlop;
        this.j = true;
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    public static void b(k50 k50Var) {
        k50 k50Var2 = k;
        if (k50Var2 != null) {
            k50Var2.a.removeCallbacks(k50Var2.d);
        }
        k = k50Var;
        if (k50Var != null) {
            k50Var.a.postDelayed(k50Var.d, ViewConfiguration.getLongPressTimeout());
        }
    }

    public final void a() {
        k50 k50Var = l;
        View view = this.a;
        if (k50Var == this) {
            l = null;
            l50 l50Var = this.h;
            if (l50Var != null) {
                View view2 = l50Var.b;
                if (view2.getParent() != null) {
                    ((WindowManager) l50Var.a.getSystemService("window")).removeView(view2);
                }
                this.h = null;
                this.j = true;
                view.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (k == this) {
            b(null);
        }
        view.removeCallbacks(this.e);
    }

    public final void c(boolean z) {
        int height;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        long longPressTimeout;
        long j;
        long j2;
        WeakHashMap weakHashMap = u70.a;
        View view = this.a;
        if (!g70.b(view)) {
            return;
        }
        b(null);
        k50 k50Var = l;
        if (k50Var != null) {
            k50Var.a();
        }
        l = this;
        this.i = z;
        l50 l50Var = new l50(view.getContext());
        this.h = l50Var;
        int i8 = this.f;
        int i9 = this.g;
        boolean z2 = this.i;
        View view2 = l50Var.b;
        ViewParent parent = view2.getParent();
        Context context = l50Var.a;
        if (parent != null && view2.getParent() != null) {
            ((WindowManager) context.getSystemService("window")).removeView(view2);
        }
        l50Var.c.setText(this.b);
        IBinder applicationWindowToken = view.getApplicationWindowToken();
        WindowManager.LayoutParams layoutParams = l50Var.d;
        layoutParams.token = applicationWindowToken;
        int dimensionPixelOffset = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_threshold);
        if (view.getWidth() < dimensionPixelOffset) {
            i8 = view.getWidth() / 2;
        }
        if (view.getHeight() >= dimensionPixelOffset) {
            int dimensionPixelOffset2 = context.getResources().getDimensionPixelOffset(R.dimen.tooltip_precise_anchor_extra_offset);
            height = i9 + dimensionPixelOffset2;
            i = i9 - dimensionPixelOffset2;
        } else {
            height = view.getHeight();
            i = 0;
        }
        layoutParams.gravity = 49;
        Resources resources = context.getResources();
        if (z2) {
            i2 = R.dimen.tooltip_y_offset_touch;
        } else {
            i2 = R.dimen.tooltip_y_offset_non_touch;
        }
        int dimensionPixelOffset3 = resources.getDimensionPixelOffset(i2);
        View rootView = view.getRootView();
        ViewGroup.LayoutParams layoutParams2 = rootView.getLayoutParams();
        if (!(layoutParams2 instanceof WindowManager.LayoutParams) || ((WindowManager.LayoutParams) layoutParams2).type != 2) {
            Context context2 = view.getContext();
            while (true) {
                if (!(context2 instanceof ContextWrapper)) {
                    break;
                } else if (context2 instanceof Activity) {
                    rootView = ((Activity) context2).getWindow().getDecorView();
                    break;
                } else {
                    context2 = ((ContextWrapper) context2).getBaseContext();
                }
            }
        }
        if (rootView == null) {
            Log.e("TooltipPopup", "Cannot find app view");
            i6 = 1;
        } else {
            Rect rect = l50Var.e;
            rootView.getWindowVisibleDisplayFrame(rect);
            if (rect.left < 0 && rect.top < 0) {
                Resources resources2 = context.getResources();
                i6 = 1;
                i3 = i8;
                i4 = i;
                int identifier = resources2.getIdentifier("status_bar_height", "dimen", "android");
                if (identifier != 0) {
                    i7 = resources2.getDimensionPixelSize(identifier);
                } else {
                    i7 = 0;
                }
                DisplayMetrics displayMetrics = resources2.getDisplayMetrics();
                i5 = 0;
                rect.set(0, i7, displayMetrics.widthPixels, displayMetrics.heightPixels);
            } else {
                i3 = i8;
                i4 = i;
                i5 = 0;
                i6 = 1;
            }
            int[] iArr = l50Var.g;
            rootView.getLocationOnScreen(iArr);
            int[] iArr2 = l50Var.f;
            view.getLocationOnScreen(iArr2);
            int i10 = iArr2[i5] - iArr[i5];
            iArr2[i5] = i10;
            iArr2[i6] = iArr2[i6] - iArr[i6];
            layoutParams.x = (i10 + i3) - (rootView.getWidth() / 2);
            int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i5, i5);
            view2.measure(makeMeasureSpec, makeMeasureSpec);
            int measuredHeight = view2.getMeasuredHeight();
            int i11 = iArr2[i6];
            int i12 = ((i11 + i4) - dimensionPixelOffset3) - measuredHeight;
            int i13 = i11 + height + dimensionPixelOffset3;
            if (z2) {
                if (i12 >= 0) {
                    layoutParams.y = i12;
                } else {
                    layoutParams.y = i13;
                }
            } else if (measuredHeight + i13 <= rect.height()) {
                layoutParams.y = i13;
            } else {
                layoutParams.y = i12;
            }
        }
        ((WindowManager) context.getSystemService("window")).addView(view2, layoutParams);
        view.addOnAttachStateChangeListener(this);
        if (this.i) {
            j2 = 2500;
        } else {
            if ((e70.g(view) & 1) == i6) {
                longPressTimeout = ViewConfiguration.getLongPressTimeout();
                j = 3000;
            } else {
                longPressTimeout = ViewConfiguration.getLongPressTimeout();
                j = 15000;
            }
            j2 = j - longPressTimeout;
        }
        j50 j50Var = this.e;
        view.removeCallbacks(j50Var);
        view.postDelayed(j50Var, j2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0064, code lost:
        if (java.lang.Math.abs(r5 - r3.g) <= r2) goto L5;
     */
    @Override // android.view.View.OnHoverListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onHover(android.view.View r4, android.view.MotionEvent r5) {
        /*
            r3 = this;
            l50 r4 = r3.h
            r0 = 0
            if (r4 == 0) goto La
            boolean r4 = r3.i
            if (r4 == 0) goto La
            goto L6f
        La:
            android.view.View r4 = r3.a
            android.content.Context r1 = r4.getContext()
            java.lang.String r2 = "accessibility"
            java.lang.Object r1 = r1.getSystemService(r2)
            android.view.accessibility.AccessibilityManager r1 = (android.view.accessibility.AccessibilityManager) r1
            boolean r2 = r1.isEnabled()
            if (r2 == 0) goto L25
            boolean r1 = r1.isTouchExplorationEnabled()
            if (r1 == 0) goto L25
            goto L6f
        L25:
            int r1 = r5.getAction()
            r2 = 7
            if (r1 == r2) goto L38
            r4 = 10
            if (r1 == r4) goto L31
            goto L6f
        L31:
            r4 = 1
            r3.j = r4
            r3.a()
            return r0
        L38:
            boolean r4 = r4.isEnabled()
            if (r4 == 0) goto L6f
            l50 r4 = r3.h
            if (r4 != 0) goto L6f
            float r4 = r5.getX()
            int r4 = (int) r4
            float r5 = r5.getY()
            int r5 = (int) r5
            boolean r1 = r3.j
            if (r1 != 0) goto L66
            int r1 = r3.f
            int r1 = r4 - r1
            int r1 = java.lang.Math.abs(r1)
            int r2 = r3.c
            if (r1 > r2) goto L66
            int r1 = r3.g
            int r1 = r5 - r1
            int r1 = java.lang.Math.abs(r1)
            if (r1 <= r2) goto L6f
        L66:
            r3.f = r4
            r3.g = r5
            r3.j = r0
            b(r3)
        L6f:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k50.onHover(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        this.f = view.getWidth() / 2;
        this.g = view.getHeight() / 2;
        c(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        a();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
    }
}
