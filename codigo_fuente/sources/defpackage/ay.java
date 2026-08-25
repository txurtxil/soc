package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.app.BackStackState;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManagerState;
import android.support.v4.app.FragmentState;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* renamed from: ay  reason: default package */
/* loaded from: classes.dex */
public final class ay extends k90 {
    public static final DecelerateInterpolator q = new DecelerateInterpolator(2.5f);
    public static final DecelerateInterpolator r = new DecelerateInterpolator(1.5f);
    public static boolean s = false;
    public static Field t;
    public SparseArray a;
    public boolean b;
    public ArrayList c;
    public ArrayList d;
    public ArrayList e;
    public ArrayList f;
    public int g;
    public eb0 h;
    public eb0 i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;
    public ArrayList n;
    public ArrayList o;
    public Bundle p;

    static {
        new AccelerateInterpolator(2.5f);
        new AccelerateInterpolator(1.5f);
    }

    public static AnimationSet f(float f, float f2, float f3, float f4) {
        AnimationSet animationSet = new AnimationSet(false);
        ScaleAnimation scaleAnimation = new ScaleAnimation(f, f2, f, f2, 1, 0.5f, 1, 0.5f);
        scaleAnimation.setInterpolator(q);
        scaleAnimation.setDuration(220L);
        animationSet.addAnimation(scaleAnimation);
        AlphaAnimation alphaAnimation = new AlphaAnimation(f3, f4);
        alphaAnimation.setInterpolator(r);
        alphaAnimation.setDuration(220L);
        animationSet.addAnimation(alphaAnimation);
        return animationSet;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [m90, java.lang.Object, android.view.animation.Animation$AnimationListener] */
    public static void p(View view, Animation animation) {
        String str;
        Animation.AnimationListener animationListener;
        if (view != null && view.getLayerType() == 0 && view.hasOverlappingRendering()) {
            if (!(animation instanceof AlphaAnimation)) {
                if (animation instanceof AnimationSet) {
                    List<Animation> animations = ((AnimationSet) animation).getAnimations();
                    for (int i = 0; i < animations.size(); i++) {
                        if (!(animations.get(i) instanceof AlphaAnimation)) {
                        }
                    }
                    return;
                }
                return;
            }
            try {
                if (t == null) {
                    Field declaredField = Animation.class.getDeclaredField("mListener");
                    t = declaredField;
                    declaredField.setAccessible(true);
                }
                animationListener = (Animation.AnimationListener) t.get(animation);
            } catch (IllegalAccessException e) {
                e = e;
                str = "Cannot access Animation's mListener field";
                Log.e("FragmentManager", str, e);
                animationListener = null;
                view.setLayerType(2, null);
                ?? obj = new Object();
                obj.a = animationListener;
                obj.c = view;
                obj.b = true;
                animation.setAnimationListener(obj);
            } catch (NoSuchFieldException e2) {
                e = e2;
                str = "No field with the name mListener is found in Animation class";
                Log.e("FragmentManager", str, e);
                animationListener = null;
                view.setLayerType(2, null);
                ?? obj2 = new Object();
                obj2.a = animationListener;
                obj2.c = view;
                obj2.b = true;
                animation.setAnimationListener(obj2);
            }
            view.setLayerType(2, null);
            ?? obj22 = new Object();
            obj22.a = animationListener;
            obj22.c = view;
            obj22.b = true;
            animation.setAnimationListener(obj22);
        }
    }

    public final void A(Fragment fragment) {
        if (fragment.H == null) {
            return;
        }
        SparseArray sparseArray = this.a;
        if (sparseArray == null) {
            this.a = new SparseArray();
        } else {
            sparseArray.clear();
        }
        fragment.H.saveHierarchyState(this.a);
        if (this.a.size() > 0) {
            fragment.d = this.a;
            this.a = null;
        }
    }

    public final Bundle B(Fragment fragment) {
        if (this.p == null) {
            this.p = new Bundle();
        }
        fragment.j(this.p);
        Bundle bundle = null;
        if (!this.p.isEmpty()) {
            Bundle bundle2 = this.p;
            this.p = null;
            bundle = bundle2;
        }
        if (fragment.G != null) {
            A(fragment);
        }
        if (fragment.d != null) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putSparseParcelableArray("android:view_state", fragment.d);
        }
        if (!fragment.J) {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putBoolean("android:user_visible_hint", fragment.J);
        }
        return bundle;
    }

    public final Fragment C(Fragment fragment) {
        ViewGroup viewGroup = fragment.F;
        View view = fragment.G;
        if (viewGroup != null && view != null) {
            int indexOf = this.d.indexOf(fragment);
            while (true) {
                indexOf--;
                if (indexOf < 0) {
                    break;
                }
                Fragment fragment2 = (Fragment) this.d.get(indexOf);
                if (fragment2.F == viewGroup && fragment2.G != null) {
                    return fragment2;
                }
            }
        }
        return null;
    }

    public final void D() {
        if (this.d != null) {
            for (int i = 0; i < this.d.size(); i++) {
                Fragment fragment = (Fragment) this.d.get(i);
                if (fragment != null) {
                    fragment.D();
                }
            }
        }
    }

    public final void E() {
        ay ayVar;
        ArrayList arrayList = this.c;
        int i = 0;
        int size = arrayList == null ? 0 : arrayList.size();
        while (i < size) {
            Fragment fragment = (Fragment) this.c.get(i);
            if (fragment == null || fragment.P() == null) {
                ayVar = this;
            } else {
                int Q = fragment.Q();
                View P = fragment.P();
                fragment.a((View) null);
                Animation animation = P.getAnimation();
                if (animation != null) {
                    animation.cancel();
                }
                ayVar = this;
                ayVar.l(fragment, Q, 0, 0, false);
            }
            i++;
            this = ayVar;
        }
    }

    public final Fragment a(int i) {
        ArrayList arrayList = this.d;
        if (arrayList != null) {
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                Fragment fragment = (Fragment) this.d.get(size);
                if (fragment != null && fragment.v == i) {
                    return fragment;
                }
            }
        }
        ArrayList arrayList2 = this.c;
        if (arrayList2 == null) {
            return null;
        }
        int size2 = arrayList2.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                return null;
            }
            Fragment fragment2 = (Fragment) this.c.get(size2);
            if (fragment2 != null && fragment2.v == i) {
                return fragment2;
            }
        }
    }

    public final Fragment b(Bundle bundle) {
        int i = bundle.getInt("android:target_state", -1);
        if (i == -1) {
            return null;
        }
        if (i < this.c.size()) {
            Fragment fragment = (Fragment) this.c.get(i);
            if (fragment != null) {
                return fragment;
            }
            m(new IllegalStateException(t20.d(i, "Fragment no longer exists for key android:target_state: index ")));
            throw null;
        }
        m(new IllegalStateException(t20.d(i, "Fragment no longer exists for key android:target_state: index ")));
        throw null;
    }

    public final Fragment c(String str) {
        ArrayList arrayList = this.d;
        if (arrayList != null) {
            int size = arrayList.size();
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                Fragment fragment = (Fragment) this.d.get(size);
                if (fragment != null && str.equals(fragment.x)) {
                    return fragment;
                }
            }
        }
        ArrayList arrayList2 = this.c;
        if (arrayList2 == null) {
            return null;
        }
        int size2 = arrayList2.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                return null;
            }
            Fragment fragment2 = (Fragment) this.c.get(size2);
            if (fragment2 != null && str.equals(fragment2.x)) {
                return fragment2;
            }
        }
    }

    public final View d(String str, Context context, AttributeSet attributeSet) {
        Fragment fragment;
        int i;
        if ("fragment".equals(str)) {
            String attributeValue = attributeSet.getAttributeValue(null, "class");
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, gt.j);
            if (attributeValue == null) {
                attributeValue = obtainStyledAttributes.getString(0);
            }
            String str2 = attributeValue;
            int resourceId = obtainStyledAttributes.getResourceId(1, -1);
            String string = obtainStyledAttributes.getString(2);
            obtainStyledAttributes.recycle();
            if (Fragment.b(this.h.a, str2)) {
                if (resourceId != -1) {
                    fragment = a(resourceId);
                } else {
                    fragment = null;
                }
                if (fragment == null && string != null) {
                    fragment = c(string);
                }
                if (fragment == null) {
                    fragment = a(0);
                }
                if (s) {
                    Log.v("FragmentManager", "onCreateView: id=0x" + Integer.toHexString(resourceId) + " fname=" + str2 + " existing=" + fragment);
                }
                if (fragment == null) {
                    fragment = Fragment.a(context, str2);
                    fragment.m = true;
                    if (resourceId != 0) {
                        i = resourceId;
                    } else {
                        i = 0;
                    }
                    fragment.v = i;
                    fragment.w = 0;
                    fragment.x = string;
                    fragment.n = true;
                    fragment.q = this;
                    fragment.r = this.h;
                    fragment.a(this.h.a, attributeSet, fragment.c);
                    o(fragment);
                } else if (!fragment.n) {
                    fragment.n = true;
                    fragment.r = this.h;
                    if (!fragment.B) {
                        fragment.a(this.h.a, attributeSet, fragment.c);
                    }
                } else {
                    c2.b(attributeSet.getPositionDescription(), Integer.toHexString(resourceId), string, Integer.toHexString(0), str2);
                    return null;
                }
                Fragment fragment2 = fragment;
                if (this.g < 1 && fragment2.m) {
                    l(fragment2, 1, 0, 0, false);
                } else {
                    l(fragment2, this.g, 0, 0, false);
                }
                if (fragment2.G != null) {
                    if (resourceId != 0) {
                        fragment2.G.setId(resourceId);
                    }
                    if (fragment2.G.getTag() == null) {
                        fragment2.G.setTag(string);
                    }
                    return fragment2.G;
                }
                c2.g(t20.f("Fragment ", str2, " did not create a view."));
                return null;
            }
        }
        return null;
    }

    public final Animation e(Fragment fragment, int i, boolean z, int i2) {
        char c;
        Window d;
        Animation loadAnimation;
        Animation a = fragment.a(i, z, fragment.K());
        if (a != null) {
            return a;
        }
        if (fragment.K() != 0 && (loadAnimation = AnimationUtils.loadAnimation(this.h.a, fragment.K())) != null) {
            return loadAnimation;
        }
        if (i != 0) {
            if (i != 4097) {
                if (i != 4099) {
                    if (i != 8194) {
                        c = 65535;
                    } else if (z) {
                        c = 3;
                    } else {
                        c = 4;
                    }
                } else if (z) {
                    c = 5;
                } else {
                    c = 6;
                }
            } else if (z) {
                c = 1;
            } else {
                c = 2;
            }
            if (c >= 0) {
                DecelerateInterpolator decelerateInterpolator = r;
                switch (c) {
                    case 1:
                        Context context = this.h.a;
                        return f(1.125f, 1.0f, 0.0f, 1.0f);
                    case 2:
                        Context context2 = this.h.a;
                        return f(1.0f, 0.975f, 1.0f, 0.0f);
                    case 3:
                        Context context3 = this.h.a;
                        return f(0.975f, 1.0f, 0.0f, 1.0f);
                    case 4:
                        Context context4 = this.h.a;
                        return f(1.0f, 1.075f, 1.0f, 0.0f);
                    case 5:
                        Context context5 = this.h.a;
                        AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
                        alphaAnimation.setInterpolator(decelerateInterpolator);
                        alphaAnimation.setDuration(220L);
                        return alphaAnimation;
                    case 6:
                        Context context6 = this.h.a;
                        AlphaAnimation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
                        alphaAnimation2.setInterpolator(decelerateInterpolator);
                        alphaAnimation2.setDuration(220L);
                        return alphaAnimation2;
                    default:
                        if (i2 == 0 && this.h.h.d() != null && (d = this.h.h.d()) != null) {
                            int i3 = d.getAttributes().windowAnimations;
                            break;
                        }
                        break;
                }
            }
        }
        return null;
    }

    public final void g(int i, boolean z) {
        if (this.h == null && i != 0) {
            c2.g("No activity");
        } else if (z || i != this.g) {
            this.g = i;
            if (this.c != null) {
                ArrayList arrayList = this.d;
                if (arrayList != null) {
                    int size = arrayList.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        Fragment fragment = (Fragment) this.d.get(i2);
                        s(fragment);
                        q90 q90Var = fragment.K;
                    }
                }
                int size2 = this.c.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    Fragment fragment2 = (Fragment) this.c.get(i3);
                    if (fragment2 != null && ((fragment2.l || fragment2.z) && !fragment2.O)) {
                        s(fragment2);
                        q90 q90Var2 = fragment2.K;
                    }
                }
                t();
                if (this.j && this.h != null && this.g == 5) {
                    this.j = false;
                }
            }
        }
    }

    public final void h(Configuration configuration) {
        if (this.d != null) {
            for (int i = 0; i < this.d.size(); i++) {
                Fragment fragment = (Fragment) this.d.get(i);
                if (fragment != null) {
                    fragment.a(configuration);
                }
            }
        }
    }

    public final void i(Bundle bundle, Fragment fragment) {
        if (fragment.e >= 0) {
            bundle.putInt("android:target_state", fragment.e);
            return;
        }
        m(new IllegalStateException("Fragment " + fragment + " is not currently in the FragmentManager"));
        throw null;
    }

    public final void j(Parcelable parcelable, az azVar) {
        int i;
        int i2;
        az azVar2;
        if (parcelable != null) {
            FragmentManagerState fragmentManagerState = (FragmentManagerState) parcelable;
            if (fragmentManagerState.a != null) {
                List list = azVar.a;
                List list2 = azVar.b;
                if (list != null) {
                    i = list.size();
                } else {
                    i = 0;
                }
                for (int i3 = 0; i3 < i; i3++) {
                    Fragment fragment = (Fragment) list.get(i3);
                    if (s) {
                        Log.v("FragmentManager", "restoreAllState: re-attaching retained " + fragment);
                    }
                    FragmentState fragmentState = fragmentManagerState.a[fragment.e];
                    fragmentState.l = fragment;
                    fragment.d = null;
                    fragment.p = 0;
                    fragment.n = false;
                    fragment.k = false;
                    fragment.h = null;
                    if (fragmentState.k != null) {
                        fragmentState.k.setClassLoader(this.h.a.getClassLoader());
                        fragment.d = fragmentState.k.getSparseParcelableArray("android:view_state");
                        fragment.c = fragmentState.k;
                    }
                }
                this.c = new ArrayList(fragmentManagerState.a.length);
                ArrayList arrayList = this.e;
                if (arrayList != null) {
                    arrayList.clear();
                }
                for (int i4 = 0; i4 < fragmentManagerState.a.length; i4++) {
                    FragmentState fragmentState2 = fragmentManagerState.a[i4];
                    if (fragmentState2 != null) {
                        if (list2 != null && i4 < list2.size()) {
                            azVar2 = (az) list2.get(i4);
                        } else {
                            azVar2 = null;
                        }
                        Fragment a = fragmentState2.a(this.h, (Fragment) null, azVar2);
                        if (s) {
                            Log.v("FragmentManager", "restoreAllState: active #" + i4 + ": " + a);
                        }
                        this.c.add(a);
                        fragmentState2.l = null;
                    } else {
                        this.c.add(null);
                        if (this.e == null) {
                            this.e = new ArrayList();
                        }
                        if (s) {
                            Log.v("FragmentManager", "restoreAllState: avail #" + i4);
                        }
                        this.e.add(Integer.valueOf(i4));
                    }
                }
                List list3 = azVar.a;
                if (list3 != null) {
                    i2 = list3.size();
                } else {
                    i2 = 0;
                }
                for (int i5 = 0; i5 < i2; i5++) {
                    Fragment fragment2 = (Fragment) list3.get(i5);
                    if (fragment2.i >= 0) {
                        if (fragment2.i < this.c.size()) {
                            fragment2.h = (Fragment) this.c.get(fragment2.i);
                        } else {
                            Log.w("FragmentManager", "Re-attaching retained fragment " + fragment2 + " target no longer exists: " + fragment2.i);
                            fragment2.h = null;
                        }
                    }
                }
                if (fragmentManagerState.b != null) {
                    this.d = new ArrayList(fragmentManagerState.b.length);
                    for (int i6 = 0; i6 < fragmentManagerState.b.length; i6++) {
                        Fragment fragment3 = (Fragment) this.c.get(fragmentManagerState.b[i6]);
                        if (fragment3 != null) {
                            fragment3.k = true;
                            if (s) {
                                Log.v("FragmentManager", "restoreAllState: added #" + i6 + ": " + fragment3);
                            }
                            if (!this.d.contains(fragment3)) {
                                this.d.add(fragment3);
                            } else {
                                c2.g("Already added!");
                                return;
                            }
                        } else {
                            m(new IllegalStateException("No instantiated fragment for index #" + fragmentManagerState.b[i6]));
                            throw null;
                        }
                    }
                } else {
                    this.d = null;
                }
                if (fragmentManagerState.c != null) {
                    this.f = new ArrayList(fragmentManagerState.c.length);
                    if (fragmentManagerState.c.length > 0) {
                        an a2 = fragmentManagerState.c[0].a(this);
                        if (s) {
                            throw null;
                        }
                        this.f.add(a2);
                        throw null;
                    }
                    return;
                }
                this.f = null;
            }
        }
    }

    public final void k(Fragment fragment) {
        if (fragment.I) {
            if (this.b) {
                this.m = true;
                return;
            }
            fragment.I = false;
            l(fragment, this.g, 0, 0, false);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x005f, code lost:
        if (r2 != 4) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x022b  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x0247  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void l(android.support.v4.app.Fragment r15, int r16, int r17, int r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 988
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ay.l(android.support.v4.app.Fragment, int, int, int, boolean):void");
    }

    public final void m(RuntimeException runtimeException) {
        Log.e("FragmentManager", runtimeException.getMessage());
        Log.e("FragmentManager", "Activity state:");
        PrintWriter printWriter = new PrintWriter(new yl(1));
        eb0 eb0Var = this.h;
        try {
            if (eb0Var != null) {
                eb0Var.h.a("  ", null, printWriter, new String[0]);
            } else {
                n("  ", null, printWriter, new String[0]);
            }
        } catch (Exception e) {
            Log.e("FragmentManager", "Failed dumping state", e);
        }
        throw runtimeException;
    }

    public final void n(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        int size;
        int size2;
        int size3;
        String str2 = str + "    ";
        ArrayList arrayList = this.c;
        if (arrayList != null && (size3 = arrayList.size()) > 0) {
            printWriter.print(str);
            printWriter.print("Active Fragments in ");
            printWriter.print(Integer.toHexString(System.identityHashCode(this)));
            printWriter.println(":");
            for (int i = 0; i < size3; i++) {
                Fragment fragment = (Fragment) this.c.get(i);
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.println(fragment);
                if (fragment != null) {
                    fragment.a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }
        ArrayList arrayList2 = this.d;
        if (arrayList2 != null && (size2 = arrayList2.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Added Fragments:");
            for (int i2 = 0; i2 < size2; i2++) {
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(i2);
                printWriter.print(": ");
                printWriter.println(((Fragment) this.d.get(i2)).toString());
            }
        }
        ArrayList arrayList3 = this.f;
        if (arrayList3 != null && (size = arrayList3.size()) > 0) {
            printWriter.print(str);
            printWriter.println("Back Stack:");
            if (size > 0) {
                if (this.f.get(0) != null) {
                    c2.l();
                    return;
                }
                printWriter.print(str);
                printWriter.print("  #");
                printWriter.print(0);
                printWriter.print(": ");
                throw null;
            }
        }
        synchronized (this) {
        }
        printWriter.print(str);
        printWriter.println("FragmentManager misc state:");
        printWriter.print(str);
        printWriter.print("  mHost=");
        printWriter.println(this.h);
        printWriter.print(str);
        printWriter.print("  mContainer=");
        printWriter.println(this.i);
        printWriter.print(str);
        printWriter.print("  mCurState=");
        printWriter.print(this.g);
        printWriter.print(" mStateSaved=");
        printWriter.print(this.k);
        printWriter.print(" mDestroyed=");
        printWriter.println(this.l);
        if (this.j) {
            printWriter.print(str);
            printWriter.print("  mNeedMenuInvalidate=");
            printWriter.println(this.j);
        }
        ArrayList arrayList4 = this.e;
        if (arrayList4 == null || arrayList4.size() <= 0) {
            return;
        }
        printWriter.print(str);
        printWriter.print("  mAvailIndices: ");
        printWriter.println(Arrays.toString(this.e.toArray()));
    }

    public final void o(Fragment fragment) {
        if (this.d == null) {
            this.d = new ArrayList();
        }
        if (s) {
            Log.v("FragmentManager", "add: " + fragment);
        }
        u(fragment);
        if (!fragment.z) {
            if (!this.d.contains(fragment)) {
                this.d.add(fragment);
                fragment.k = true;
                fragment.l = false;
                if (fragment.G == null) {
                    fragment.P = false;
                }
                if (fragment.C && fragment.D) {
                    this.j = true;
                }
                l(fragment, this.g, 0, 0, false);
                return;
            }
            c2.p(fragment, "Fragment already added: ");
        }
    }

    public final void q(Fragment fragment) {
        if (fragment.G != null) {
            Animation e = e(fragment, fragment.L(), !fragment.y, fragment.M());
            if (e != null) {
                p(fragment.G, e);
                fragment.G.startAnimation(e);
                p(fragment.G, e);
                e.start();
            }
            fragment.G.setVisibility((!fragment.y || fragment.S()) ? 0 : 8);
            if (fragment.S()) {
                fragment.g(false);
            }
        }
        if (fragment.k && fragment.C && fragment.D) {
            this.j = true;
        }
        fragment.P = false;
        fragment.a(fragment.y);
    }

    public final void r() {
        if (!this.b) {
            if (Looper.myLooper() == this.h.c.getLooper()) {
                if (this.n == null) {
                    this.n = new ArrayList();
                    this.o = new ArrayList();
                }
                this.b = false;
                return;
            }
            c2.g("Must be called from main thread of fragment host");
            return;
        }
        c2.g("FragmentManager is already executing transactions");
    }

    public final void s(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        int i = this.g;
        if (fragment.l) {
            i = fragment.l_() ? Math.min(i, 1) : Math.min(i, 0);
        }
        l(fragment, i, fragment.L(), fragment.M(), false);
        if (fragment.G != null) {
            Fragment C = C(fragment);
            if (C != null) {
                View view = C.G;
                ViewGroup viewGroup = fragment.F;
                int indexOfChild = viewGroup.indexOfChild(view);
                int indexOfChild2 = viewGroup.indexOfChild(fragment.G);
                if (indexOfChild2 < indexOfChild) {
                    viewGroup.removeViewAt(indexOfChild2);
                    viewGroup.addView(fragment.G, indexOfChild);
                }
            }
            if (fragment.O && fragment.F != null) {
                if (fragment.Q > 0.0f) {
                    fragment.G.setAlpha(fragment.Q);
                }
                fragment.Q = 0.0f;
                fragment.O = false;
                Animation e = e(fragment, fragment.L(), true, fragment.M());
                if (e != null) {
                    p(fragment.G, e);
                    fragment.G.startAnimation(e);
                }
            }
        }
        if (fragment.P) {
            q(fragment);
        }
    }

    public final void t() {
        if (this.c != null) {
            for (int i = 0; i < this.c.size(); i++) {
                Fragment fragment = (Fragment) this.c.get(i);
                if (fragment != null) {
                    k(fragment);
                }
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("FragmentManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        gn.a(this.h, sb);
        sb.append("}}");
        return sb.toString();
    }

    public final void u(Fragment fragment) {
        if (fragment.e >= 0) {
            return;
        }
        ArrayList arrayList = this.e;
        if (arrayList == null || arrayList.size() <= 0) {
            if (this.c == null) {
                this.c = new ArrayList();
            }
            fragment.a(this.c.size(), (Fragment) null);
            this.c.add(fragment);
        } else {
            ArrayList arrayList2 = this.e;
            fragment.a(((Integer) arrayList2.remove(arrayList2.size() - 1)).intValue(), (Fragment) null);
            this.c.set(fragment.e, fragment);
        }
        if (s) {
            Log.v("FragmentManager", "Allocated fragment index " + fragment);
        }
    }

    public final void v() {
        r();
        synchronized (this) {
        }
        w();
    }

    public final void w() {
        if (this.m) {
            for (int i = 0; i < this.c.size(); i++) {
                Fragment fragment = (Fragment) this.c.get(i);
                if (fragment != null) {
                    q90 q90Var = fragment.K;
                }
            }
            this.m = false;
            t();
        }
    }

    public final void x(Fragment fragment) {
        if (fragment.e < 0) {
            return;
        }
        if (s) {
            Log.v("FragmentManager", "Freeing fragment index " + fragment);
        }
        this.c.set(fragment.e, null);
        if (this.e == null) {
            this.e = new ArrayList();
        }
        this.e.add(Integer.valueOf(fragment.e));
        eb0 eb0Var = this.h;
        String str = fragment.f;
        u90 u90Var = eb0Var.d;
        if (u90Var != null) {
            q90 q90Var = (q90) u90Var.e(str);
        }
        fragment.o();
    }

    public final az y() {
        ArrayList arrayList;
        ArrayList arrayList2;
        az y;
        if (this.c != null) {
            arrayList = null;
            arrayList2 = null;
            for (int i = 0; i < this.c.size(); i++) {
                Fragment fragment = (Fragment) this.c.get(i);
                if (fragment != null) {
                    boolean z = true;
                    if (fragment.A) {
                        if (arrayList2 == null) {
                            arrayList2 = new ArrayList();
                        }
                        arrayList2.add(fragment);
                        fragment.B = true;
                        fragment.i = fragment.h != null ? fragment.h.e : -1;
                        if (s) {
                            Log.v("FragmentManager", "retainNonConfig: keeping retained " + fragment);
                        }
                    }
                    if (fragment.s == null || (y = fragment.s.y()) == null) {
                        z = false;
                    } else {
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                            for (int i2 = 0; i2 < i; i2++) {
                                arrayList.add(null);
                            }
                        }
                        arrayList.add(y);
                    }
                    if (arrayList != null && !z) {
                        arrayList.add(null);
                    }
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        if (arrayList2 == null && arrayList == null) {
            return null;
        }
        return new az(arrayList2, arrayList);
    }

    public final Parcelable z() {
        int[] iArr;
        int size;
        int size2;
        E();
        v();
        this.k = true;
        ArrayList arrayList = this.c;
        BackStackState[] backStackStateArr = null;
        if (arrayList != null && arrayList.size() > 0) {
            int size3 = this.c.size();
            FragmentState[] fragmentStateArr = new FragmentState[size3];
            boolean z = false;
            for (int i = 0; i < size3; i++) {
                Fragment fragment = (Fragment) this.c.get(i);
                if (fragment != null) {
                    if (fragment.e < 0) {
                        m(new IllegalStateException("Failure saving state: active " + fragment + " has cleared index: " + fragment.e));
                        throw null;
                    }
                    FragmentState fragmentState = new FragmentState(fragment);
                    fragmentStateArr[i] = fragmentState;
                    if (fragment.b <= 0 || fragmentState.k != null) {
                        fragmentState.k = fragment.c;
                    } else {
                        fragmentState.k = B(fragment);
                        if (fragment.h != null) {
                            if (fragment.h.e < 0) {
                                m(new IllegalStateException("Failure saving state: " + fragment + " has target not in fragment manager: " + fragment.h));
                                throw null;
                            }
                            if (fragmentState.k == null) {
                                fragmentState.k = new Bundle();
                            }
                            i(fragmentState.k, fragment.h);
                            if (fragment.j != 0) {
                                fragmentState.k.putInt("android:target_req_state", fragment.j);
                            }
                        }
                    }
                    if (s) {
                        Log.v("FragmentManager", "Saved state of " + fragment + ": " + fragmentState.k);
                    }
                    z = true;
                }
            }
            if (z) {
                ArrayList arrayList2 = this.d;
                if (arrayList2 == null || (size2 = arrayList2.size()) <= 0) {
                    iArr = null;
                } else {
                    iArr = new int[size2];
                    for (int i2 = 0; i2 < size2; i2++) {
                        int i3 = ((Fragment) this.d.get(i2)).e;
                        iArr[i2] = i3;
                        if (i3 < 0) {
                            m(new IllegalStateException("Failure saving state: active " + this.d.get(i2) + " has cleared index: " + iArr[i2]));
                            throw null;
                        }
                        if (s) {
                            Log.v("FragmentManager", "saveAllState: adding fragment #" + i2 + ": " + this.d.get(i2));
                        }
                    }
                }
                ArrayList arrayList3 = this.f;
                if (arrayList3 != null && (size = arrayList3.size()) > 0) {
                    BackStackState[] backStackStateArr2 = new BackStackState[size];
                    for (int i4 = 0; i4 < size; i4++) {
                        if (this.f.get(i4) != null) {
                            c2.l();
                            return null;
                        }
                        backStackStateArr2[i4] = new BackStackState((an) null);
                        if (s) {
                            Log.v("FragmentManager", "saveAllState: adding back stack #" + i4 + ": " + this.f.get(i4));
                        }
                    }
                    backStackStateArr = backStackStateArr2;
                }
                FragmentManagerState fragmentManagerState = new FragmentManagerState();
                fragmentManagerState.a = fragmentStateArr;
                fragmentManagerState.b = iArr;
                fragmentManagerState.c = backStackStateArr;
                return fragmentManagerState;
            } else if (s) {
                Log.v("FragmentManager", "saveAllState: no fragments!");
                return null;
            }
        }
        return null;
    }
}
