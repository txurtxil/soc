package androidx.recyclerview.widget;

import android.animation.LayoutTransition;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.car.app.model.Alert;
import com.google.android.apps.auto.sdk.ui.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;
/* loaded from: classes.dex */
public class RecyclerView extends ViewGroup {
    public static final int[] u0 = {16843830};
    public static final Class[] v0;
    public static final bw w0;
    public final AccessibilityManager A;
    public boolean B;
    public boolean C;
    public int D;
    public int E;
    public gw F;
    public EdgeEffect G;
    public EdgeEffect H;
    public EdgeEffect I;
    public EdgeEffect J;
    public hw K;
    public int L;
    public int M;
    public VelocityTracker N;
    public int O;
    public int P;
    public int Q;
    public int R;
    public int S;
    public final int T;
    public final int U;
    public final float V;
    public final float W;
    public final tw a;
    public boolean a0;
    public final rw b;
    public final xw b0;
    public uw c;
    public qh c0;
    public final z1 d;
    public final oh d0;
    public final v5 e;
    public final vw e0;
    public final ko f;
    public ow f0;
    public boolean g;
    public ArrayList g0;
    public final zv h;
    public boolean h0;
    public final Rect i;
    public boolean i0;
    public final Rect j;
    public final cw j0;
    public final RectF k;
    public boolean k0;
    public dw l;
    public zw l0;
    public lw m;
    public final int[] m0;
    public final ArrayList n;
    public ar n0;
    public final ArrayList o;
    public final int[] o0;
    public final int[] p0;
    public ye q;
    public final int[] q0;
    public boolean r;
    public final ArrayList r0;
    public boolean s;
    public final zv s0;
    public boolean t;
    public final cw t0;
    public int u;
    public boolean v;
    public boolean w;
    public boolean x;
    public int y;
    public boolean z;

    /* JADX WARN: Type inference failed for: r0v4, types: [bw, java.lang.Object] */
    static {
        Class cls = Integer.TYPE;
        v0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        w0 = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [zb, java.lang.Object, hw] */
    /* JADX WARN: Type inference failed for: r0v9, types: [gw, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r17v1 */
    /* JADX WARN: Type inference failed for: r17v2 */
    /* JADX WARN: Type inference failed for: r3v15, types: [oh, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v16, types: [vw, java.lang.Object] */
    public RecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float a;
        float a2;
        boolean z;
        int i2;
        int i3;
        char c;
        TypedArray typedArray;
        ?? r17;
        char c2;
        AttributeSet attributeSet2;
        int i4;
        ClassLoader classLoader;
        Constructor constructor;
        Object[] objArr;
        this.a = new tw(this);
        this.b = new rw(this);
        this.f = new ko(19);
        this.h = new zv(this, 0);
        this.i = new Rect();
        this.j = new Rect();
        this.k = new RectF();
        this.n = new ArrayList();
        this.o = new ArrayList();
        this.u = 0;
        this.B = false;
        this.C = false;
        this.D = 0;
        this.E = 0;
        this.F = new Object();
        ?? obj = new Object();
        obj.a = null;
        obj.b = new ArrayList();
        obj.c = 120L;
        obj.d = 120L;
        obj.e = 250L;
        obj.f = 250L;
        obj.g = true;
        obj.h = new ArrayList();
        obj.i = new ArrayList();
        obj.j = new ArrayList();
        obj.k = new ArrayList();
        obj.l = new ArrayList();
        obj.m = new ArrayList();
        obj.n = new ArrayList();
        obj.o = new ArrayList();
        obj.p = new ArrayList();
        obj.q = new ArrayList();
        obj.r = new ArrayList();
        this.K = obj;
        this.L = 0;
        this.M = -1;
        this.V = Float.MIN_VALUE;
        this.W = Float.MIN_VALUE;
        this.a0 = true;
        this.b0 = new xw(this);
        this.d0 = new Object();
        ?? obj2 = new Object();
        obj2.a = 0;
        obj2.b = 0;
        obj2.c = 1;
        obj2.d = 0;
        obj2.e = false;
        obj2.f = false;
        obj2.g = false;
        obj2.h = false;
        obj2.i = false;
        obj2.j = false;
        this.e0 = obj2;
        this.h0 = false;
        this.i0 = false;
        cw cwVar = new cw(this);
        this.j0 = cwVar;
        this.k0 = false;
        this.m0 = new int[2];
        this.o0 = new int[2];
        this.p0 = new int[2];
        this.q0 = new int[2];
        this.r0 = new ArrayList();
        this.s0 = new zv(this, 1);
        this.t0 = new cw(this);
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.S = viewConfiguration.getScaledTouchSlop();
        int i5 = Build.VERSION.SDK_INT;
        if (i5 >= 26) {
            Method method = x70.a;
            a = v70.a(viewConfiguration);
        } else {
            a = x70.a(viewConfiguration, context);
        }
        this.V = a;
        if (i5 >= 26) {
            a2 = v70.b(viewConfiguration);
        } else {
            a2 = x70.a(viewConfiguration, context);
        }
        this.W = a2;
        this.T = viewConfiguration.getScaledMinimumFlingVelocity();
        this.U = viewConfiguration.getScaledMaximumFlingVelocity();
        if (getOverScrollMode() == 2) {
            z = true;
        } else {
            z = false;
        }
        setWillNotDraw(z);
        this.K.a = cwVar;
        this.d = new z1(new cw(this));
        this.e = new v5(new cw(this));
        WeakHashMap weakHashMap = u70.a;
        if (i5 >= 26) {
            i2 = l70.b(this);
        } else {
            i2 = 0;
        }
        if (i2 == 0 && i5 >= 26) {
            l70.l(this, 8);
        }
        if (e70.c(this) == 0) {
            e70.s(this, 1);
        }
        this.A = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new zw(this));
        int[] iArr = tv.a;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i, 0);
        if (i5 >= 29) {
            saveAttributeDataForStyleable(context, iArr, attributeSet, obtainStyledAttributes, i, 0);
        }
        String string = obtainStyledAttributes.getString(8);
        if (obtainStyledAttributes.getInt(2, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.g = obtainStyledAttributes.getBoolean(1, true);
        if (obtainStyledAttributes.getBoolean(3, false)) {
            StateListDrawable stateListDrawable = (StateListDrawable) obtainStyledAttributes.getDrawable(6);
            Drawable drawable = obtainStyledAttributes.getDrawable(7);
            StateListDrawable stateListDrawable2 = (StateListDrawable) obtainStyledAttributes.getDrawable(4);
            Drawable drawable2 = obtainStyledAttributes.getDrawable(5);
            if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
                Resources resources = getContext().getResources();
                c2 = 2;
                i3 = i;
                r17 = 1;
                c = 3;
                i4 = 4;
                typedArray = obtainStyledAttributes;
                attributeSet2 = attributeSet;
                new ye(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(R.dimen.fastscroll_default_thickness), resources.getDimensionPixelSize(R.dimen.fastscroll_minimum_range), resources.getDimensionPixelOffset(R.dimen.fastscroll_margin));
            } else {
                c2.n("Trying to set fast scroller without both required drawables.".concat(w()));
                throw null;
            }
        } else {
            i3 = i;
            c = 3;
            typedArray = obtainStyledAttributes;
            r17 = 1;
            c2 = 2;
            attributeSet2 = attributeSet;
            i4 = 4;
        }
        typedArray.recycle();
        if (string != null) {
            String trim = string.trim();
            if (!trim.isEmpty()) {
                if (trim.charAt(0) == '.') {
                    trim = context.getPackageName() + trim;
                } else if (!trim.contains(".")) {
                    trim = RecyclerView.class.getPackage().getName() + '.' + trim;
                }
                String str = trim;
                try {
                    if (isInEditMode()) {
                        classLoader = getClass().getClassLoader();
                    } else {
                        classLoader = context.getClassLoader();
                    }
                    Class asSubclass = Class.forName(str, false, classLoader).asSubclass(lw.class);
                    try {
                        constructor = asSubclass.getConstructor(v0);
                        objArr = new Object[i4];
                        objArr[0] = context;
                        objArr[r17] = attributeSet2;
                        objArr[c2] = Integer.valueOf(i3);
                        objArr[c] = 0;
                    } catch (NoSuchMethodException e) {
                        try {
                            constructor = asSubclass.getConstructor(null);
                            objArr = null;
                        } catch (NoSuchMethodException e2) {
                            e2.initCause(e);
                            throw new IllegalStateException(attributeSet2.getPositionDescription() + ": Error creating LayoutManager " + str, e2);
                        }
                    }
                    constructor.setAccessible(r17);
                    setLayoutManager((lw) constructor.newInstance(objArr));
                } catch (ClassCastException e3) {
                    c2.c(attributeSet2.getPositionDescription(), ": Class is not a LayoutManager ", str, e3);
                    throw null;
                } catch (ClassNotFoundException e4) {
                    c2.c(attributeSet2.getPositionDescription(), ": Unable to find LayoutManager ", str, e4);
                    throw null;
                } catch (IllegalAccessException e5) {
                    c2.c(attributeSet2.getPositionDescription(), ": Cannot access non-public constructor ", str, e5);
                    throw null;
                } catch (InstantiationException e6) {
                    c2.c(attributeSet2.getPositionDescription(), ": Could not instantiate the LayoutManager: ", str, e6);
                    throw null;
                } catch (InvocationTargetException e7) {
                    c2.c(attributeSet2.getPositionDescription(), ": Could not instantiate the LayoutManager: ", str, e7);
                    throw null;
                }
            }
        }
        int[] iArr2 = u0;
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet2, iArr2, i3, 0);
        if (Build.VERSION.SDK_INT >= 29) {
            saveAttributeDataForStyleable(context, iArr2, attributeSet2, obtainStyledAttributes2, i3, 0);
        }
        boolean z2 = obtainStyledAttributes2.getBoolean(0, true);
        obtainStyledAttributes2.recycle();
        setNestedScrollingEnabled(z2);
    }

    public static RecyclerView B(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            RecyclerView B = B(viewGroup.getChildAt(i));
            if (B != null) {
                return B;
            }
        }
        return null;
    }

    public static nu G(View view) {
        if (view == null) {
            return null;
        }
        return ((mw) view.getLayoutParams()).a;
    }

    private ar getScrollingChildHelper() {
        if (this.n0 == null) {
            this.n0 = new ar(this);
        }
        return this.n0;
    }

    public static void h(nu nuVar) {
        WeakReference weakReference = nuVar.b;
        if (weakReference != null) {
            View view = (View) weakReference.get();
            while (view != null) {
                if (view != nuVar.a) {
                    ViewParent parent = view.getParent();
                    if (parent instanceof View) {
                        view = (View) parent;
                    } else {
                        view = null;
                    }
                } else {
                    return;
                }
            }
            nuVar.b = null;
        }
    }

    public final void A(int[] iArr) {
        v5 v5Var = this.e;
        int p = v5Var.p();
        if (p == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i = Alert.DURATION_SHOW_INDEFINITELY;
        int i2 = Integer.MIN_VALUE;
        for (int i3 = 0; i3 < p; i3++) {
            nu G = G(v5Var.o(i3));
            if (!G.p()) {
                int c = G.c();
                if (c < i) {
                    i = c;
                }
                if (c > i2) {
                    i2 = c;
                }
            }
        }
        iArr[0] = i;
        iArr[1] = i2;
    }

    public final nu C(int i) {
        nu nuVar = null;
        if (this.B) {
            return null;
        }
        v5 v5Var = this.e;
        int y = v5Var.y();
        for (int i2 = 0; i2 < y; i2++) {
            nu G = G(v5Var.x(i2));
            if (G != null && !G.i() && D(G) == i) {
                if (((ArrayList) v5Var.d).contains(G.a)) {
                    nuVar = G;
                } else {
                    return G;
                }
            }
        }
        return nuVar;
    }

    public final int D(nu nuVar) {
        if ((nuVar.j & 524) == 0 && nuVar.f()) {
            int i = nuVar.c;
            ArrayList arrayList = (ArrayList) this.d.c;
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                y1 y1Var = (y1) arrayList.get(i2);
                int i3 = y1Var.a;
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 == 8) {
                            int i4 = y1Var.b;
                            if (i4 == i) {
                                i = y1Var.d;
                            } else {
                                if (i4 < i) {
                                    i--;
                                }
                                if (y1Var.d <= i) {
                                    i++;
                                }
                            }
                        }
                    } else {
                        int i5 = y1Var.b;
                        if (i5 <= i) {
                            int i6 = y1Var.d;
                            if (i5 + i6 <= i) {
                                i -= i6;
                            }
                        } else {
                            continue;
                        }
                    }
                } else if (y1Var.b <= i) {
                    i += y1Var.d;
                }
            }
            return i;
        }
        return -1;
    }

    public final long E(nu nuVar) {
        if (this.l.b) {
            return nuVar.e;
        }
        return nuVar.c;
    }

    public final nu F(View view) {
        ViewParent parent = view.getParent();
        if (parent != null && parent != this) {
            c2.j("View ", view, " is not a direct child of ", this);
            return null;
        }
        return G(view);
    }

    public final Rect H(View view) {
        mw mwVar = (mw) view.getLayoutParams();
        boolean z = mwVar.c;
        Rect rect = mwVar.b;
        if (!z || (this.e0.f && (mwVar.a.l() || mwVar.a.g()))) {
            return rect;
        }
        rect.set(0, 0, 0, 0);
        ArrayList arrayList = this.n;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Rect rect2 = this.i;
            rect2.set(0, 0, 0, 0);
            ((iw) arrayList.get(i)).a(rect2, view, this);
            rect.left += rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        mwVar.c = false;
        return rect;
    }

    public final boolean I() {
        if (this.t && !this.B && !this.d.j()) {
            return false;
        }
        return true;
    }

    public final boolean J() {
        if (this.D > 0) {
            return true;
        }
        return false;
    }

    public final void K() {
        v5 v5Var = this.e;
        int y = v5Var.y();
        for (int i = 0; i < y; i++) {
            ((mw) v5Var.x(i).getLayoutParams()).c = true;
        }
        ArrayList arrayList = this.b.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            mw mwVar = (mw) ((nu) arrayList.get(i2)).a.getLayoutParams();
            if (mwVar != null) {
                mwVar.c = true;
            }
        }
    }

    public final void L(int i, int i2, boolean z) {
        int i3 = i + i2;
        v5 v5Var = this.e;
        int y = v5Var.y();
        for (int i4 = 0; i4 < y; i4++) {
            nu G = G(v5Var.x(i4));
            if (G != null && !G.p()) {
                int i5 = G.c;
                vw vwVar = this.e0;
                if (i5 >= i3) {
                    G.m(-i2, z);
                    vwVar.e = true;
                } else if (i5 >= i) {
                    G.a(8);
                    G.m(-i2, z);
                    G.c = i - 1;
                    vwVar.e = true;
                }
            }
        }
        rw rwVar = this.b;
        ArrayList arrayList = rwVar.c;
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            nu nuVar = (nu) arrayList.get(size);
            if (nuVar != null) {
                int i6 = nuVar.c;
                if (i6 >= i3) {
                    nuVar.m(-i2, z);
                } else if (i6 >= i) {
                    nuVar.a(8);
                    rwVar.e(size);
                }
            }
        }
        requestLayout();
    }

    public final void M() {
        this.D++;
    }

    public final void N(boolean z) {
        int i;
        AccessibilityManager accessibilityManager;
        int i2 = this.D - 1;
        this.D = i2;
        if (i2 < 1) {
            this.D = 0;
            if (z) {
                int i3 = this.y;
                this.y = 0;
                if (i3 != 0 && (accessibilityManager = this.A) != null && accessibilityManager.isEnabled()) {
                    AccessibilityEvent obtain = AccessibilityEvent.obtain();
                    obtain.setEventType(2048);
                    x.b(obtain, i3);
                    sendAccessibilityEventUnchecked(obtain);
                }
                ArrayList arrayList = this.r0;
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    nu nuVar = (nu) arrayList.get(size);
                    if (nuVar.a.getParent() == this && !nuVar.p() && (i = nuVar.q) != -1) {
                        View view = nuVar.a;
                        WeakHashMap weakHashMap = u70.a;
                        e70.s(view, i);
                        nuVar.q = -1;
                    }
                }
                arrayList.clear();
            }
        }
    }

    public final void O(MotionEvent motionEvent) {
        int i;
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.M) {
            if (actionIndex == 0) {
                i = 1;
            } else {
                i = 0;
            }
            this.M = motionEvent.getPointerId(i);
            int x = (int) (motionEvent.getX(i) + 0.5f);
            this.Q = x;
            this.O = x;
            int y = (int) (motionEvent.getY(i) + 0.5f);
            this.R = y;
            this.P = y;
        }
    }

    public final void P() {
        if (!this.k0 && this.r) {
            WeakHashMap weakHashMap = u70.a;
            e70.m(this, this.s0);
            this.k0 = true;
        }
    }

    public final void Q() {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = this.B;
        z1 z1Var = this.d;
        boolean z6 = false;
        if (z5) {
            z1Var.q((ArrayList) z1Var.c);
            z1Var.q((ArrayList) z1Var.d);
            z1Var.a = 0;
            if (this.C) {
                this.m.S();
            }
        }
        if (this.K != null && this.m.r0()) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            z1Var.p();
        } else {
            z1Var.d();
        }
        if (!this.h0 && !this.i0) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (this.t && this.K != null && (((z4 = this.B) || z2 || this.m.e) && (!z4 || this.l.b))) {
            z3 = true;
        } else {
            z3 = false;
        }
        vw vwVar = this.e0;
        vwVar.i = z3;
        if (z3 && z2 && !this.B && this.K != null && this.m.r0()) {
            z6 = true;
        }
        vwVar.j = z6;
    }

    public final void R(boolean z) {
        this.C = z | this.C;
        this.B = true;
        v5 v5Var = this.e;
        int y = v5Var.y();
        for (int i = 0; i < y; i++) {
            nu G = G(v5Var.x(i));
            if (G != null && !G.p()) {
                G.a(6);
            }
        }
        K();
        rw rwVar = this.b;
        ArrayList arrayList = rwVar.c;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            nu nuVar = (nu) arrayList.get(i2);
            if (nuVar != null) {
                nuVar.a(6);
                nuVar.a(1024);
            }
        }
        dw dwVar = rwVar.h.l;
        if (dwVar != null && dwVar.b) {
            return;
        }
        rwVar.d();
    }

    public final void S(nu nuVar, dr drVar) {
        nuVar.j &= -8193;
        boolean z = this.e0.g;
        ko koVar = this.f;
        if (z && nuVar.l() && !nuVar.i() && !nuVar.p()) {
            ((am) koVar.c).d(E(nuVar), nuVar);
        }
        j20 j20Var = (j20) koVar.b;
        y70 y70Var = (y70) j20Var.getOrDefault(nuVar, null);
        if (y70Var == null) {
            y70Var = y70.a();
            j20Var.put(nuVar, y70Var);
        }
        y70Var.b = drVar;
        y70Var.a |= 4;
    }

    public final void T(View view, View view2) {
        View view3;
        boolean z;
        if (view2 != null) {
            view3 = view2;
        } else {
            view3 = view;
        }
        int width = view3.getWidth();
        int height = view3.getHeight();
        Rect rect = this.i;
        rect.set(0, 0, width, height);
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof mw) {
            mw mwVar = (mw) layoutParams;
            if (!mwVar.c) {
                Rect rect2 = mwVar.b;
                rect.left -= rect2.left;
                rect.right += rect2.right;
                rect.top -= rect2.top;
                rect.bottom += rect2.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, rect);
            offsetRectIntoDescendantCoords(view, rect);
        }
        lw lwVar = this.m;
        boolean z2 = !this.t;
        if (view2 == null) {
            z = true;
        } else {
            z = false;
        }
        lwVar.f0(this, view, this.i, z2, z);
    }

    public final void U() {
        VelocityTracker velocityTracker = this.N;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        boolean z = false;
        a0(0);
        EdgeEffect edgeEffect = this.G;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            z = this.G.isFinished();
        }
        EdgeEffect edgeEffect2 = this.H;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            z |= this.H.isFinished();
        }
        EdgeEffect edgeEffect3 = this.I;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            z |= this.I.isFinished();
        }
        EdgeEffect edgeEffect4 = this.J;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            z |= this.J.isFinished();
        }
        if (z) {
            WeakHashMap weakHashMap = u70.a;
            e70.k(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00c8  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e0  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean V(int r18, int r19, android.view.MotionEvent r20) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.V(int, int, android.view.MotionEvent):boolean");
    }

    public final void W(int i, int i2, int[] iArr) {
        int i3;
        int i4;
        nu nuVar;
        Y();
        M();
        int i5 = n50.a;
        m50.a("RV Scroll");
        vw vwVar = this.e0;
        x(vwVar);
        rw rwVar = this.b;
        if (i != 0) {
            i3 = this.m.h0(i, rwVar, vwVar);
        } else {
            i3 = 0;
        }
        if (i2 != 0) {
            i4 = this.m.i0(i2, rwVar, vwVar);
        } else {
            i4 = 0;
        }
        m50.b();
        v5 v5Var = this.e;
        int p = v5Var.p();
        for (int i6 = 0; i6 < p; i6++) {
            View o = v5Var.o(i6);
            nu F = F(o);
            if (F != null && (nuVar = F.i) != null) {
                View view = nuVar.a;
                int left = o.getLeft();
                int top = o.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
        N(true);
        Z(false);
        if (iArr != null) {
            iArr[0] = i3;
            iArr[1] = i4;
        }
    }

    public final void X(int i, int i2, boolean z) {
        int i3;
        int i4;
        boolean z2;
        int height;
        int i5;
        int i6;
        lw lwVar = this.m;
        if (lwVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.w) {
            if (!lwVar.c()) {
                i3 = 0;
            } else {
                i3 = i;
            }
            if (!this.m.d()) {
                i4 = 0;
            } else {
                i4 = i2;
            }
            if (i3 == 0 && i4 == 0) {
                return;
            }
            if (z) {
                if (i3 != 0) {
                    i6 = 1;
                } else {
                    i6 = 0;
                }
                if (i4 != 0) {
                    i6 |= 2;
                }
                getScrollingChildHelper().g(i6, 1);
            }
            xw xwVar = this.b0;
            RecyclerView recyclerView = xwVar.g;
            int abs = Math.abs(i3);
            int abs2 = Math.abs(i4);
            if (abs > abs2) {
                z2 = true;
            } else {
                z2 = false;
            }
            int sqrt = (int) Math.sqrt(0.0d);
            int sqrt2 = (int) Math.sqrt((i4 * i4) + (i3 * i3));
            if (z2) {
                height = recyclerView.getWidth();
            } else {
                height = recyclerView.getHeight();
            }
            int i7 = height / 2;
            float f = height;
            float f2 = i7;
            float sin = (((float) Math.sin((Math.min(1.0f, (sqrt2 * 1.0f) / f) - 0.5f) * 0.47123894f)) * f2) + f2;
            if (sqrt > 0) {
                i5 = Math.round(Math.abs(sin / sqrt) * 1000.0f) * 4;
            } else {
                if (!z2) {
                    abs = abs2;
                }
                i5 = (int) (((abs / f) + 1.0f) * 300.0f);
            }
            int min = Math.min(i5, 2000);
            Interpolator interpolator = xwVar.d;
            bw bwVar = w0;
            if (interpolator != bwVar) {
                xwVar.d = bwVar;
                xwVar.c = new OverScroller(recyclerView.getContext(), bwVar);
            }
            xwVar.b = 0;
            xwVar.a = 0;
            recyclerView.setScrollState(2);
            xwVar.c.startScroll(0, 0, i3, i4, min);
            if (xwVar.e) {
                xwVar.f = true;
                return;
            }
            RecyclerView recyclerView2 = xwVar.g;
            recyclerView2.removeCallbacks(xwVar);
            WeakHashMap weakHashMap = u70.a;
            e70.m(recyclerView2, xwVar);
        }
    }

    public final void Y() {
        int i = this.u + 1;
        this.u = i;
        if (i == 1 && !this.w) {
            this.v = false;
        }
    }

    public final void Z(boolean z) {
        if (this.u < 1) {
            this.u = 1;
        }
        if (!z && !this.w) {
            this.v = false;
        }
        if (this.u == 1) {
            if (z && this.v && !this.w && this.m != null && this.l != null) {
                m();
            }
            if (!this.w) {
                this.v = false;
            }
        }
        this.u--;
    }

    public final void a0(int i) {
        getScrollingChildHelper().h(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void addFocusables(ArrayList arrayList, int i, int i2) {
        lw lwVar = this.m;
        if (lwVar != null) {
            lwVar.getClass();
        }
        super.addFocusables(arrayList, i, i2);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        if ((layoutParams instanceof mw) && this.m.e((mw) layoutParams)) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollExtent() {
        lw lwVar = this.m;
        if (lwVar != null && lwVar.c()) {
            return this.m.i(this.e0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollOffset() {
        lw lwVar = this.m;
        if (lwVar != null && lwVar.c()) {
            return this.m.j(this.e0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeHorizontalScrollRange() {
        lw lwVar = this.m;
        if (lwVar != null && lwVar.c()) {
            return this.m.k(this.e0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollExtent() {
        lw lwVar = this.m;
        if (lwVar != null && lwVar.d()) {
            return this.m.l(this.e0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollOffset() {
        lw lwVar = this.m;
        if (lwVar != null && lwVar.d()) {
            return this.m.m(this.e0);
        }
        return 0;
    }

    @Override // android.view.View
    public final int computeVerticalScrollRange() {
        lw lwVar = this.m;
        if (lwVar != null && lwVar.d()) {
            return this.m.n(this.e0);
        }
        return 0;
    }

    @Override // android.view.View
    public final boolean dispatchNestedFling(float f, float f2, boolean z) {
        return getScrollingChildHelper().a(f, f2, z);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreFling(float f, float f2) {
        return getScrollingChildHelper().b(f, f2);
    }

    @Override // android.view.View
    public final boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public final boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return getScrollingChildHelper().d(i, i2, i3, i4, iArr, 0, null);
    }

    @Override // android.view.View
    public final boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchRestoreInstanceState(SparseArray sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchSaveInstanceState(SparseArray sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public final void draw(Canvas canvas) {
        boolean z;
        int i;
        boolean z2;
        boolean z3;
        int i2;
        super.draw(canvas);
        ArrayList arrayList = this.n;
        int size = arrayList.size();
        boolean z4 = false;
        for (int i3 = 0; i3 < size; i3++) {
            ((iw) arrayList.get(i3)).b(canvas, this);
        }
        EdgeEffect edgeEffect = this.G;
        boolean z5 = true;
        if (edgeEffect != null && !edgeEffect.isFinished()) {
            int save = canvas.save();
            if (this.g) {
                i2 = getPaddingBottom();
            } else {
                i2 = 0;
            }
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + i2, 0.0f);
            EdgeEffect edgeEffect2 = this.G;
            if (edgeEffect2 != null && edgeEffect2.draw(canvas)) {
                z = true;
            } else {
                z = false;
            }
            canvas.restoreToCount(save);
        } else {
            z = false;
        }
        EdgeEffect edgeEffect3 = this.H;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int save2 = canvas.save();
            if (this.g) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.H;
            if (edgeEffect4 != null && edgeEffect4.draw(canvas)) {
                z3 = true;
            } else {
                z3 = false;
            }
            z |= z3;
            canvas.restoreToCount(save2);
        }
        EdgeEffect edgeEffect5 = this.I;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int save3 = canvas.save();
            int width = getWidth();
            if (this.g) {
                i = getPaddingTop();
            } else {
                i = 0;
            }
            canvas.rotate(90.0f);
            canvas.translate(-i, -width);
            EdgeEffect edgeEffect6 = this.I;
            if (edgeEffect6 != null && edgeEffect6.draw(canvas)) {
                z2 = true;
            } else {
                z2 = false;
            }
            z |= z2;
            canvas.restoreToCount(save3);
        }
        EdgeEffect edgeEffect7 = this.J;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int save4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.g) {
                canvas.translate(getPaddingRight() + (-getWidth()), getPaddingBottom() + (-getHeight()));
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.J;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z4 = true;
            }
            z |= z4;
            canvas.restoreToCount(save4);
        }
        if (z || this.K == null || arrayList.size() <= 0 || !this.K.f()) {
            z5 = z;
        }
        if (z5) {
            WeakHashMap weakHashMap = u70.a;
            e70.k(this);
        }
    }

    @Override // android.view.ViewGroup
    public final boolean drawChild(Canvas canvas, View view, long j) {
        return super.drawChild(canvas, view, j);
    }

    public final void e(nu nuVar) {
        boolean z;
        View view = nuVar.a;
        if (view.getParent() == this) {
            z = true;
        } else {
            z = false;
        }
        this.b.j(F(view));
        boolean k = nuVar.k();
        v5 v5Var = this.e;
        if (k) {
            v5Var.h(view, -1, view.getLayoutParams(), true);
        } else if (!z) {
            v5Var.g(view, -1, true);
        } else {
            int indexOfChild = ((cw) v5Var.b).a.indexOfChild(view);
            if (indexOfChild >= 0) {
                ((o9) v5Var.c).h(indexOfChild);
                v5Var.z(view);
                return;
            }
            c2.m(view, "view is not a child, cannot hide ");
        }
    }

    public final void f(iw iwVar) {
        lw lwVar = this.m;
        if (lwVar != null) {
            lwVar.b("Cannot add item decoration during a scroll  or layout");
        }
        ArrayList arrayList = this.n;
        if (arrayList.isEmpty()) {
            setWillNotDraw(false);
        }
        arrayList.add(iwVar);
        K();
        requestLayout();
    }

    /* JADX WARN: Code restructure failed: missing block: B:115:0x0160, code lost:
        if (r16 > 0) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x017e, code lost:
        if (r5 > 0) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0181, code lost:
        if (r16 < 0) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0184, code lost:
        if (r5 < 0) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x018c, code lost:
        if ((r5 * r6) < 0) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0194, code lost:
        if ((r5 * r6) > 0) goto L115;
     */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00cc A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x010e  */
    @Override // android.view.ViewGroup, android.view.ViewParent
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View focusSearch(android.view.View r18, int r19) {
        /*
            Method dump skipped, instructions count: 412
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.focusSearch(android.view.View, int):android.view.View");
    }

    public final void g(String str) {
        if (J()) {
            if (str == null) {
                c2.g("Cannot call this method while RecyclerView is computing a layout or scrolling".concat(w()));
            } else {
                c2.g(str);
            }
        } else if (this.E > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(w()));
        }
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateDefaultLayoutParams() {
        lw lwVar = this.m;
        if (lwVar != null) {
            return lwVar.q();
        }
        c2.g("RecyclerView has no LayoutManager".concat(w()));
        return null;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        lw lwVar = this.m;
        if (lwVar != null) {
            return lwVar.r(getContext(), attributeSet);
        }
        c2.g("RecyclerView has no LayoutManager".concat(w()));
        return null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public dw getAdapter() {
        return this.l;
    }

    @Override // android.view.View
    public int getBaseline() {
        lw lwVar = this.m;
        if (lwVar != null) {
            lwVar.getClass();
            return -1;
        }
        return super.getBaseline();
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i, int i2) {
        return super.getChildDrawingOrder(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.g;
    }

    public zw getCompatAccessibilityDelegate() {
        return this.l0;
    }

    public gw getEdgeEffectFactory() {
        return this.F;
    }

    public hw getItemAnimator() {
        return this.K;
    }

    public int getItemDecorationCount() {
        return this.n.size();
    }

    public lw getLayoutManager() {
        return this.m;
    }

    public int getMaxFlingVelocity() {
        return this.U;
    }

    public int getMinFlingVelocity() {
        return this.T;
    }

    public long getNanoTime() {
        return System.nanoTime();
    }

    public nw getOnFlingListener() {
        return null;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.a0;
    }

    public qw getRecycledViewPool() {
        return this.b.c();
    }

    public int getScrollState() {
        return this.L;
    }

    @Override // android.view.View
    public final boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().f(0);
    }

    public final void i() {
        v5 v5Var = this.e;
        int y = v5Var.y();
        for (int i = 0; i < y; i++) {
            nu G = G(v5Var.x(i));
            if (!G.p()) {
                G.d = -1;
                G.g = -1;
            }
        }
        rw rwVar = this.b;
        ArrayList arrayList = rwVar.a;
        ArrayList arrayList2 = rwVar.c;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            nu nuVar = (nu) arrayList2.get(i2);
            nuVar.d = -1;
            nuVar.g = -1;
        }
        int size2 = arrayList.size();
        for (int i3 = 0; i3 < size2; i3++) {
            nu nuVar2 = (nu) arrayList.get(i3);
            nuVar2.d = -1;
            nuVar2.g = -1;
        }
        ArrayList arrayList3 = rwVar.b;
        if (arrayList3 != null) {
            int size3 = arrayList3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                nu nuVar3 = (nu) rwVar.b.get(i4);
                nuVar3.d = -1;
                nuVar3.g = -1;
            }
        }
    }

    @Override // android.view.View
    public final boolean isAttachedToWindow() {
        return this.r;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.w;
    }

    @Override // android.view.View
    public final boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().d;
    }

    public final void j(int i, int i2) {
        boolean z;
        EdgeEffect edgeEffect = this.G;
        if (edgeEffect != null && !edgeEffect.isFinished() && i > 0) {
            this.G.onRelease();
            z = this.G.isFinished();
        } else {
            z = false;
        }
        EdgeEffect edgeEffect2 = this.I;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i < 0) {
            this.I.onRelease();
            z |= this.I.isFinished();
        }
        EdgeEffect edgeEffect3 = this.H;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i2 > 0) {
            this.H.onRelease();
            z |= this.H.isFinished();
        }
        EdgeEffect edgeEffect4 = this.J;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i2 < 0) {
            this.J.onRelease();
            z |= this.J.isFinished();
        }
        if (z) {
            WeakHashMap weakHashMap = u70.a;
            e70.k(this);
        }
    }

    public final void k() {
        if (this.t && !this.B) {
            z1 z1Var = this.d;
            if (z1Var.j()) {
                int i = z1Var.a;
                if ((i & 4) != 0 && (i & 11) == 0) {
                    int i2 = n50.a;
                    m50.a("RV PartialInvalidate");
                    Y();
                    M();
                    z1Var.p();
                    if (!this.v) {
                        v5 v5Var = this.e;
                        int p = v5Var.p();
                        int i3 = 0;
                        while (true) {
                            if (i3 < p) {
                                nu G = G(v5Var.o(i3));
                                if (G != null && !G.p() && G.l()) {
                                    m();
                                    break;
                                }
                                i3++;
                            } else {
                                z1Var.c();
                                break;
                            }
                        }
                    }
                    Z(true);
                    N(true);
                    m50.b();
                    return;
                } else if (z1Var.j()) {
                    int i4 = n50.a;
                    m50.a("RV FullInvalidate");
                    m();
                    m50.b();
                    return;
                } else {
                    return;
                }
            }
            return;
        }
        int i5 = n50.a;
        m50.a("RV FullInvalidate");
        m();
        m50.b();
    }

    public final void l(int i, int i2) {
        int paddingRight = getPaddingRight() + getPaddingLeft();
        WeakHashMap weakHashMap = u70.a;
        setMeasuredDimension(lw.f(i, paddingRight, e70.e(this)), lw.f(i2, getPaddingBottom() + getPaddingTop(), e70.d(this)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:152:0x0336, code lost:
        if (((java.util.ArrayList) r7.d).contains(getFocusedChild()) == false) goto L215;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:115:0x026c  */
    /* JADX WARN: Removed duplicated region for block: B:206:0x03d9  */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r14v7, types: [java.lang.Object, dr] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m() {
        /*
            Method dump skipped, instructions count: 1015
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.m():void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:133:0x009f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0083 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v3, types: [java.lang.Object, dr] */
    /* JADX WARN: Type inference failed for: r11v6, types: [java.lang.Object, dr] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void n() {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.n():void");
    }

    public final void o() {
        boolean z;
        Y();
        M();
        vw vwVar = this.e0;
        vwVar.a(6);
        this.d.d();
        vwVar.d = ((ju) this.l).e.size();
        vwVar.b = 0;
        vwVar.f = false;
        this.m.W(this.b, vwVar);
        vwVar.e = false;
        this.c = null;
        if (vwVar.i && this.K != null) {
            z = true;
        } else {
            z = false;
        }
        vwVar.i = z;
        vwVar.c = 4;
        N(true);
        Z(false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0057, code lost:
        if (r1 >= 30.0f) goto L16;
     */
    /* JADX WARN: Type inference failed for: r1v3, types: [qh, java.lang.Object] */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void onAttachedToWindow() {
        /*
            r5 = this;
            super.onAttachedToWindow()
            r0 = 0
            r5.D = r0
            r1 = 1
            r5.r = r1
            boolean r2 = r5.t
            if (r2 == 0) goto L15
            boolean r2 = r5.isLayoutRequested()
            if (r2 != 0) goto L15
            r2 = r1
            goto L16
        L15:
            r2 = r0
        L16:
            r5.t = r2
            lw r2 = r5.m
            if (r2 == 0) goto L1e
            r2.f = r1
        L1e:
            r5.k0 = r0
            java.lang.ThreadLocal r0 = defpackage.qh.e
            java.lang.Object r1 = r0.get()
            qh r1 = (defpackage.qh) r1
            r5.c0 = r1
            if (r1 != 0) goto L68
            qh r1 = new qh
            r1.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.a = r2
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            r1.d = r2
            r5.c0 = r1
            java.util.WeakHashMap r1 = defpackage.u70.a
            android.view.Display r1 = defpackage.f70.b(r5)
            boolean r2 = r5.isInEditMode()
            if (r2 != 0) goto L5a
            if (r1 == 0) goto L5a
            float r1 = r1.getRefreshRate()
            r2 = 1106247680(0x41f00000, float:30.0)
            int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
            if (r2 < 0) goto L5a
            goto L5c
        L5a:
            r1 = 1114636288(0x42700000, float:60.0)
        L5c:
            qh r2 = r5.c0
            r3 = 1315859240(0x4e6e6b28, float:1.0E9)
            float r3 = r3 / r1
            long r3 = (long) r3
            r2.c = r3
            r0.set(r2)
        L68:
            qh r0 = r5.c0
            java.util.ArrayList r0 = r0.a
            r0.add(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onAttachedToWindow():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        hw hwVar = this.K;
        if (hwVar != null) {
            hwVar.e();
        }
        setScrollState(0);
        xw xwVar = this.b0;
        xwVar.g.removeCallbacks(xwVar);
        xwVar.c.abortAnimation();
        this.r = false;
        lw lwVar = this.m;
        if (lwVar != null) {
            lwVar.f = false;
            lwVar.M(this);
        }
        this.r0.clear();
        removeCallbacks(this.s0);
        this.f.getClass();
        do {
        } while (y70.d.a() != null);
        qh qhVar = this.c0;
        if (qhVar != null) {
            qhVar.a.remove(this);
            this.c0 = null;
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.n;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((iw) arrayList.get(i)).getClass();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x006a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            lw r0 = r5.m
            r1 = 0
            if (r0 != 0) goto L7
            goto L79
        L7:
            boolean r0 = r5.w
            if (r0 == 0) goto Ld
            goto L79
        Ld:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L79
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L40
            lw r0 = r5.m
            boolean r0 = r0.d()
            if (r0 == 0) goto L2e
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2f
        L2e:
            r0 = r2
        L2f:
            lw r3 = r5.m
            boolean r3 = r3.c()
            if (r3 == 0) goto L3e
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L66
        L3e:
            r3 = r2
            goto L66
        L40:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L64
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            lw r3 = r5.m
            boolean r3 = r3.d()
            if (r3 == 0) goto L59
            float r0 = -r0
            goto L3e
        L59:
            lw r3 = r5.m
            boolean r3 = r3.c()
            if (r3 == 0) goto L64
            r3 = r0
            r0 = r2
            goto L66
        L64:
            r0 = r2
            r3 = r0
        L66:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6e
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L79
        L6e:
            float r2 = r5.V
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.W
            float r0 = r0 * r3
            int r0 = (int) r0
            r5.V(r2, r0, r6)
        L79:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z;
        if (!this.w) {
            this.q = null;
            if (z(motionEvent)) {
                U();
                setScrollState(0);
                return true;
            }
            lw lwVar = this.m;
            if (lwVar != null) {
                boolean c = lwVar.c();
                boolean d = this.m.d();
                if (this.N == null) {
                    this.N = VelocityTracker.obtain();
                }
                this.N.addMovement(motionEvent);
                int actionMasked = motionEvent.getActionMasked();
                int actionIndex = motionEvent.getActionIndex();
                if (actionMasked != 0) {
                    if (actionMasked != 1) {
                        if (actionMasked != 2) {
                            if (actionMasked != 3) {
                                if (actionMasked != 5) {
                                    if (actionMasked == 6) {
                                        O(motionEvent);
                                    }
                                } else {
                                    this.M = motionEvent.getPointerId(actionIndex);
                                    int x = (int) (motionEvent.getX(actionIndex) + 0.5f);
                                    this.Q = x;
                                    this.O = x;
                                    int y = (int) (motionEvent.getY(actionIndex) + 0.5f);
                                    this.R = y;
                                    this.P = y;
                                }
                            } else {
                                U();
                                setScrollState(0);
                            }
                        } else {
                            int findPointerIndex = motionEvent.findPointerIndex(this.M);
                            if (findPointerIndex < 0) {
                                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.M + " not found. Did any MotionEvents get skipped?");
                                return false;
                            }
                            int x2 = (int) (motionEvent.getX(findPointerIndex) + 0.5f);
                            int y2 = (int) (motionEvent.getY(findPointerIndex) + 0.5f);
                            if (this.L != 1) {
                                int i = x2 - this.O;
                                int i2 = y2 - this.P;
                                if (c && Math.abs(i) > this.S) {
                                    this.Q = x2;
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (d && Math.abs(i2) > this.S) {
                                    this.R = y2;
                                    z = true;
                                }
                                if (z) {
                                    setScrollState(1);
                                }
                            }
                        }
                    } else {
                        this.N.clear();
                        a0(0);
                    }
                } else {
                    if (this.x) {
                        this.x = false;
                    }
                    this.M = motionEvent.getPointerId(0);
                    int x3 = (int) (motionEvent.getX() + 0.5f);
                    this.Q = x3;
                    this.O = x3;
                    int y3 = (int) (motionEvent.getY() + 0.5f);
                    this.R = y3;
                    this.P = y3;
                    if (this.L == 2) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                        setScrollState(1);
                        a0(1);
                    }
                    int[] iArr = this.p0;
                    iArr[1] = 0;
                    iArr[0] = 0;
                    int i3 = c;
                    if (d) {
                        i3 = (c ? 1 : 0) | 2;
                    }
                    getScrollingChildHelper().g(i3, 0);
                }
                if (this.L == 1) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5 = n50.a;
        m50.a("RV OnLayout");
        m();
        m50.b();
        this.t = true;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        lw lwVar = this.m;
        if (lwVar == null) {
            l(i, i2);
            return;
        }
        boolean H = lwVar.H();
        vw vwVar = this.e0;
        if (H) {
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            this.m.b.l(i, i2);
            if ((mode != 1073741824 || mode2 != 1073741824) && this.l != null) {
                if (vwVar.c == 1) {
                    n();
                }
                this.m.k0(i, i2);
                vwVar.h = true;
                o();
                this.m.m0(i, i2);
                if (this.m.p0()) {
                    this.m.k0(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                    vwVar.h = true;
                    o();
                    this.m.m0(i, i2);
                }
            }
        } else if (this.s) {
            this.m.b.l(i, i2);
        } else {
            if (this.z) {
                Y();
                M();
                Q();
                N(true);
                if (vwVar.j) {
                    vwVar.f = true;
                } else {
                    this.d.d();
                    vwVar.f = false;
                }
                this.z = false;
                Z(false);
            } else if (vwVar.j) {
                setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
                return;
            }
            dw dwVar = this.l;
            if (dwVar != null) {
                vwVar.d = ((ju) dwVar).e.size();
            } else {
                vwVar.d = 0;
            }
            Y();
            this.m.b.l(i, i2);
            Z(false);
            vwVar.f = false;
        }
    }

    @Override // android.view.ViewGroup
    public final boolean onRequestFocusInDescendants(int i, Rect rect) {
        if (J()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i, rect);
    }

    @Override // android.view.View
    public final void onRestoreInstanceState(Parcelable parcelable) {
        Parcelable parcelable2;
        if (!(parcelable instanceof uw)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        uw uwVar = (uw) parcelable;
        this.c = uwVar;
        super.onRestoreInstanceState(uwVar.a);
        lw lwVar = this.m;
        if (lwVar != null && (parcelable2 = this.c.c) != null) {
            lwVar.Y(parcelable2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [uw, android.os.Parcelable, f] */
    @Override // android.view.View
    public final Parcelable onSaveInstanceState() {
        ?? fVar = new f(super.onSaveInstanceState());
        uw uwVar = this.c;
        if (uwVar != null) {
            fVar.c = uwVar.c;
            return fVar;
        }
        lw lwVar = this.m;
        if (lwVar != null) {
            fVar.c = lwVar.Z();
            return fVar;
        }
        fVar.c = null;
        return fVar;
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        if (i == i3 && i2 == i4) {
            return;
        }
        this.J = null;
        this.H = null;
        this.I = null;
        this.G = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x020c  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x01f8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r23) {
        /*
            Method dump skipped, instructions count: 908
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    public final boolean p(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return getScrollingChildHelper().c(i, i2, iArr, iArr2, i3);
    }

    public final void q(int i, int i2, int i3, int i4, int[] iArr, int i5, int[] iArr2) {
        getScrollingChildHelper().d(i, i2, i3, i4, iArr, i5, iArr2);
    }

    public final void r(int i, int i2) {
        this.E++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i, scrollY - i2);
        ow owVar = this.f0;
        if (owVar != null) {
            owVar.a(this);
        }
        ArrayList arrayList = this.g0;
        if (arrayList != null) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((ow) this.g0.get(size)).a(this);
            }
        }
        this.E--;
    }

    @Override // android.view.ViewGroup
    public final void removeDetachedView(View view, boolean z) {
        nu G = G(view);
        if (G != null) {
            if (G.k()) {
                G.j &= -257;
            } else if (!G.p()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + G + w());
            }
        }
        view.clearAnimation();
        G(view);
        dw dwVar = this.l;
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestChildFocus(View view, View view2) {
        this.m.getClass();
        if (!J() && view2 != null) {
            T(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z) {
        return this.m.f0(this, view, rect, z, false);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void requestDisallowInterceptTouchEvent(boolean z) {
        ArrayList arrayList = this.o;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((ye) arrayList.get(i)).getClass();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public final void requestLayout() {
        if (this.u == 0 && !this.w) {
            super.requestLayout();
        } else {
            this.v = true;
        }
    }

    public final void s() {
        if (this.J != null) {
            return;
        }
        this.F.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.J = edgeEffect;
        if (this.g) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    @Override // android.view.View
    public final void scrollBy(int i, int i2) {
        lw lwVar = this.m;
        if (lwVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else if (!this.w) {
            boolean c = lwVar.c();
            boolean d = this.m.d();
            if (!c && !d) {
                return;
            }
            if (!c) {
                i = 0;
            }
            if (!d) {
                i2 = 0;
            }
            V(i, i2, null);
        }
    }

    @Override // android.view.View
    public final void scrollTo(int i, int i2) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public final void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        int i;
        if (J()) {
            int i2 = 0;
            if (accessibilityEvent != null) {
                i = x.a(accessibilityEvent);
            } else {
                i = 0;
            }
            if (i != 0) {
                i2 = i;
            }
            this.y |= i2;
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(zw zwVar) {
        this.l0 = zwVar;
        u70.h(this, zwVar);
    }

    public void setAdapter(dw dwVar) {
        setLayoutFrozen(false);
        dw dwVar2 = this.l;
        tw twVar = this.a;
        if (dwVar2 != null) {
            dwVar2.a.unregisterObserver(twVar);
            this.l.getClass();
        }
        hw hwVar = this.K;
        if (hwVar != null) {
            hwVar.e();
        }
        lw lwVar = this.m;
        rw rwVar = this.b;
        if (lwVar != null) {
            lwVar.b0(rwVar);
            this.m.c0(rwVar);
        }
        rwVar.a.clear();
        rwVar.d();
        z1 z1Var = this.d;
        z1Var.q((ArrayList) z1Var.c);
        z1Var.q((ArrayList) z1Var.d);
        z1Var.a = 0;
        dw dwVar3 = this.l;
        this.l = dwVar;
        if (dwVar != null) {
            dwVar.a.registerObserver(twVar);
        }
        dw dwVar4 = this.l;
        rwVar.a.clear();
        rwVar.d();
        qw c = rwVar.c();
        if (dwVar3 != null) {
            c.b--;
        }
        if (c.b == 0) {
            SparseArray sparseArray = c.a;
            for (int i = 0; i < sparseArray.size(); i++) {
                ((pw) sparseArray.valueAt(i)).a.clear();
            }
        }
        if (dwVar4 != null) {
            c.b++;
        }
        this.e0.e = true;
        R(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(fw fwVar) {
        if (fwVar == null) {
            return;
        }
        setChildrenDrawingOrderEnabled(false);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z) {
        if (z != this.g) {
            this.J = null;
            this.H = null;
            this.I = null;
            this.G = null;
        }
        this.g = z;
        super.setClipToPadding(z);
        if (this.t) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(gw gwVar) {
        gwVar.getClass();
        this.F = gwVar;
        this.J = null;
        this.H = null;
        this.I = null;
        this.G = null;
    }

    public void setHasFixedSize(boolean z) {
        this.s = z;
    }

    public void setItemAnimator(hw hwVar) {
        hw hwVar2 = this.K;
        if (hwVar2 != null) {
            hwVar2.e();
            this.K.a = null;
        }
        this.K = hwVar;
        if (hwVar != null) {
            hwVar.a = this.j0;
        }
    }

    public void setItemViewCacheSize(int i) {
        rw rwVar = this.b;
        rwVar.e = i;
        rwVar.k();
    }

    @Deprecated
    public void setLayoutFrozen(boolean z) {
        suppressLayout(z);
    }

    public void setLayoutManager(lw lwVar) {
        RecyclerView recyclerView;
        if (lwVar == this.m) {
            return;
        }
        setScrollState(0);
        xw xwVar = this.b0;
        xwVar.g.removeCallbacks(xwVar);
        xwVar.c.abortAnimation();
        lw lwVar2 = this.m;
        rw rwVar = this.b;
        if (lwVar2 != null) {
            hw hwVar = this.K;
            if (hwVar != null) {
                hwVar.e();
            }
            this.m.b0(rwVar);
            this.m.c0(rwVar);
            rwVar.a.clear();
            rwVar.d();
            if (this.r) {
                lw lwVar3 = this.m;
                lwVar3.f = false;
                lwVar3.M(this);
            }
            this.m.n0(null);
            this.m = null;
        } else {
            rwVar.a.clear();
            rwVar.d();
        }
        v5 v5Var = this.e;
        ((o9) v5Var.c).g();
        ArrayList arrayList = (ArrayList) v5Var.d;
        int size = arrayList.size() - 1;
        while (true) {
            recyclerView = ((cw) v5Var.b).a;
            if (size < 0) {
                break;
            }
            nu G = G((View) arrayList.get(size));
            if (G != null) {
                int i = G.p;
                if (recyclerView.J()) {
                    G.q = i;
                    recyclerView.r0.add(G);
                } else {
                    View view = G.a;
                    WeakHashMap weakHashMap = u70.a;
                    e70.s(view, i);
                }
                G.p = 0;
            }
            arrayList.remove(size);
            size--;
        }
        int childCount = recyclerView.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = recyclerView.getChildAt(i2);
            G(childAt);
            dw dwVar = recyclerView.l;
            childAt.clearAnimation();
        }
        recyclerView.removeAllViews();
        this.m = lwVar;
        if (lwVar != null) {
            if (lwVar.b == null) {
                lwVar.n0(this);
                if (this.r) {
                    this.m.f = true;
                }
            } else {
                StringBuilder sb = new StringBuilder("LayoutManager ");
                sb.append(lwVar);
                String w = lwVar.b.w();
                sb.append(" is already attached to a RecyclerView:");
                sb.append(w);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        rwVar.k();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (layoutTransition == null) {
            super.setLayoutTransition(null);
        } else {
            c2.n("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        ar scrollingChildHelper = getScrollingChildHelper();
        if (scrollingChildHelper.d) {
            ViewGroup viewGroup = scrollingChildHelper.c;
            WeakHashMap weakHashMap = u70.a;
            j70.z(viewGroup);
        }
        scrollingChildHelper.d = z;
    }

    @Deprecated
    public void setOnScrollListener(ow owVar) {
        this.f0 = owVar;
    }

    public void setPreserveFocusAfterLayout(boolean z) {
        this.a0 = z;
    }

    public void setRecycledViewPool(qw qwVar) {
        qw qwVar2;
        rw rwVar = this.b;
        if (rwVar.g != null) {
            qwVar2.b--;
        }
        rwVar.g = qwVar;
        if (qwVar != null && rwVar.h.getAdapter() != null) {
            rwVar.g.b++;
        }
    }

    public void setScrollState(int i) {
        if (i != this.L) {
            this.L = i;
            if (i != 2) {
                xw xwVar = this.b0;
                xwVar.g.removeCallbacks(xwVar);
                xwVar.c.abortAnimation();
            }
            lw lwVar = this.m;
            if (lwVar != null) {
                lwVar.a0(i);
            }
            ArrayList arrayList = this.g0;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ((ow) this.g0.get(size)).getClass();
                }
            }
        }
    }

    public void setScrollingTouchSlop(int i) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i != 0) {
            if (i != 1) {
                Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i + "; using default value");
            } else {
                this.S = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
        }
        this.S = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(ww wwVar) {
        this.b.getClass();
    }

    @Override // android.view.View
    public final boolean startNestedScroll(int i) {
        return getScrollingChildHelper().g(i, 0);
    }

    @Override // android.view.View
    public final void stopNestedScroll() {
        getScrollingChildHelper().h(0);
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z) {
        if (z != this.w) {
            g("Do not suppressLayout in layout or scroll");
            if (!z) {
                this.w = false;
                if (this.v && this.m != null && this.l != null) {
                    requestLayout();
                }
                this.v = false;
                return;
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            onTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            this.w = true;
            this.x = true;
            setScrollState(0);
            xw xwVar = this.b0;
            xwVar.g.removeCallbacks(xwVar);
            xwVar.c.abortAnimation();
        }
    }

    public final void t() {
        if (this.G != null) {
            return;
        }
        this.F.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.G = edgeEffect;
        if (this.g) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void u() {
        if (this.I != null) {
            return;
        }
        this.F.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.I = edgeEffect;
        if (this.g) {
            edgeEffect.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffect.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    public final void v() {
        if (this.H != null) {
            return;
        }
        this.F.getClass();
        EdgeEffect edgeEffect = new EdgeEffect(getContext());
        this.H = edgeEffect;
        if (this.g) {
            edgeEffect.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffect.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public final String w() {
        return " " + super.toString() + ", adapter:" + this.l + ", layout:" + this.m + ", context:" + getContext();
    }

    public final void x(vw vwVar) {
        if (getScrollState() == 2) {
            OverScroller overScroller = this.b0.c;
            overScroller.getFinalX();
            overScroller.getCurrX();
            vwVar.getClass();
            overScroller.getFinalY();
            overScroller.getCurrY();
            return;
        }
        vwVar.getClass();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.View y(android.view.View r3) {
        /*
            r2 = this;
            android.view.ViewParent r0 = r3.getParent()
        L4:
            if (r0 == 0) goto L14
            if (r0 == r2) goto L14
            boolean r1 = r0 instanceof android.view.View
            if (r1 == 0) goto L14
            r3 = r0
            android.view.View r3 = (android.view.View) r3
            android.view.ViewParent r0 = r3.getParent()
            goto L4
        L14:
            if (r0 != r2) goto L17
            return r3
        L17:
            r2 = 0
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.y(android.view.View):android.view.View");
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0061 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean z(android.view.MotionEvent r12) {
        /*
            r11 = this;
            int r0 = r12.getAction()
            java.util.ArrayList r1 = r11.o
            int r2 = r1.size()
            r3 = 0
            r4 = r3
        Lc:
            if (r4 >= r2) goto L64
            java.lang.Object r5 = r1.get(r4)
            ye r5 = (defpackage.ye) r5
            int r6 = r5.v
            r7 = 1
            r8 = 2
            if (r6 != r7) goto L59
            float r6 = r12.getX()
            float r9 = r12.getY()
            boolean r6 = r5.d(r6, r9)
            float r9 = r12.getX()
            float r10 = r12.getY()
            boolean r9 = r5.c(r9, r10)
            int r10 = r12.getAction()
            if (r10 != 0) goto L61
            if (r6 != 0) goto L3c
            if (r9 == 0) goto L61
        L3c:
            if (r9 == 0) goto L49
            r5.w = r7
            float r6 = r12.getX()
            int r6 = (int) r6
            float r6 = (float) r6
            r5.p = r6
            goto L55
        L49:
            if (r6 == 0) goto L55
            r5.w = r8
            float r6 = r12.getY()
            int r6 = (int) r6
            float r6 = (float) r6
            r5.m = r6
        L55:
            r5.f(r8)
            goto L5b
        L59:
            if (r6 != r8) goto L61
        L5b:
            r6 = 3
            if (r0 == r6) goto L61
            r11.q = r5
            return r7
        L61:
            int r4 = r4 + 1
            goto Lc
        L64:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.z(android.view.MotionEvent):boolean");
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        lw lwVar = this.m;
        if (lwVar != null) {
            return lwVar.s(layoutParams);
        }
        c2.g("RecyclerView has no LayoutManager".concat(w()));
        return null;
    }

    public void setOnFlingListener(nw nwVar) {
    }

    public void setRecyclerListener(sw swVar) {
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.recyclerViewStyle);
    }

    public RecyclerView(Context context) {
        this(context, null);
    }
}
