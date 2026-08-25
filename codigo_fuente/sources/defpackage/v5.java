package defpackage;

import android.content.ClipDescription;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.location.LocationManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Trace;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.a;
import androidx.fragment.app.b;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.apps.auto.sdk.ui.R;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: v5  reason: default package */
/* loaded from: classes.dex */
public final class v5 implements q8, hj {
    public static volatile v5 e;
    public static final Object f = new Object();
    public static v5 g;
    public final /* synthetic */ int a;
    public Object b;
    public Object c;
    public Object d;

    public v5(int i) {
        this.a = i;
        switch (i) {
            case 5:
                return;
            default:
                this.c = new ArrayList();
                this.b = new HashMap();
                return;
        }
    }

    public static v5 C(Context context, AttributeSet attributeSet, int[] iArr, int i) {
        return new v5(context, context.obtainStyledAttributes(attributeSet, iArr, i, 0));
    }

    public static void D() {
        if (Build.VERSION.SDK_INT < 29) {
            return;
        }
        throw new UnsupportedClassVersionError("This function can only be used for API Level < 29.");
    }

    public static v5 v(Context context) {
        if (e == null) {
            synchronized (f) {
                try {
                    if (e == null) {
                        e = new v5(context);
                    }
                } finally {
                }
            }
        }
        return e;
    }

    public void A(b bVar) {
        vf vfVar = bVar.c;
        String str = vfVar.e;
        HashMap hashMap = (HashMap) this.b;
        if (hashMap.get(str) != null) {
            return;
        }
        hashMap.put(vfVar.e, bVar);
        if (a.E(2)) {
            Log.v("FragmentManager", "Added fragment to active set " + vfVar);
        }
    }

    public void B(b bVar) {
        vf vfVar = bVar.c;
        if (vfVar.B) {
            ((kg) this.d).b(vfVar);
        }
        if (((b) ((HashMap) this.b).put(vfVar.e, null)) != null && a.E(2)) {
            Log.v("FragmentManager", "Removed fragment from active set " + vfVar);
        }
    }

    public void E() {
        ((TypedArray) this.b).recycle();
    }

    public void F(View view) {
        if (((ArrayList) this.d).remove(view)) {
            cw cwVar = (cw) this.b;
            nu G = RecyclerView.G(view);
            if (G != null) {
                RecyclerView recyclerView = cwVar.a;
                int i = G.p;
                if (recyclerView.J()) {
                    G.q = i;
                    recyclerView.r0.add(G);
                } else {
                    View view2 = G.a;
                    WeakHashMap weakHashMap = u70.a;
                    e70.s(view2, i);
                }
                G.p = 0;
            }
        }
    }

    @Override // defpackage.hj
    public ClipDescription a() {
        return (ClipDescription) this.c;
    }

    @Override // defpackage.hj
    public Object b() {
        return null;
    }

    @Override // defpackage.hj
    public Uri c() {
        return (Uri) this.b;
    }

    @Override // defpackage.hj
    public Uri e() {
        return (Uri) this.d;
    }

    public void f(vf vfVar) {
        if (!((ArrayList) this.c).contains(vfVar)) {
            synchronized (((ArrayList) this.c)) {
                ((ArrayList) this.c).add(vfVar);
            }
            vfVar.k = true;
            return;
        }
        c2.p(vfVar, "Fragment already added: ");
    }

    public void g(View view, int i, boolean z) {
        int w;
        RecyclerView recyclerView = ((cw) this.b).a;
        if (i < 0) {
            w = recyclerView.getChildCount();
        } else {
            w = w(i);
        }
        ((o9) this.c).e(w, z);
        if (z) {
            z(view);
        }
        recyclerView.addView(view, w);
        RecyclerView.G(view);
    }

    public void h(View view, int i, ViewGroup.LayoutParams layoutParams, boolean z) {
        int w;
        RecyclerView recyclerView = ((cw) this.b).a;
        if (i < 0) {
            w = recyclerView.getChildCount();
        } else {
            w = w(i);
        }
        ((o9) this.c).e(w, z);
        if (z) {
            z(view);
        }
        nu G = RecyclerView.G(view);
        if (G != null) {
            if (!G.k() && !G.p()) {
                throw new IllegalArgumentException("Called attach on a child which is not detached: " + G + recyclerView.w());
            }
            G.j &= -257;
        }
        recyclerView.attachViewToParent(view, w, layoutParams);
    }

    public void i(int i) {
        nu G;
        int w = w(i);
        ((o9) this.c).f(w);
        RecyclerView recyclerView = ((cw) this.b).a;
        View childAt = recyclerView.getChildAt(w);
        if (childAt != null && (G = RecyclerView.G(childAt)) != null) {
            if (G.k() && !G.p()) {
                throw new IllegalArgumentException("called detach on an already detached child " + G + recyclerView.w());
            }
            G.a(256);
        }
        recyclerView.detachViewFromParent(w);
    }

    public void j(Bundle bundle) {
        HashSet hashSet = (HashSet) this.c;
        String string = ((Context) this.d).getString(R.string.androidx_startup);
        if (bundle != null) {
            try {
                HashSet hashSet2 = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (bj.class.isAssignableFrom(cls)) {
                            hashSet.add(cls);
                        }
                    }
                }
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    k((Class) it.next(), hashSet2);
                }
            } catch (ClassNotFoundException e2) {
                throw new RuntimeException(e2);
            }
        }
    }

    public Object k(Class cls, HashSet hashSet) {
        Object obj;
        HashMap hashMap = (HashMap) this.b;
        if (gn.s()) {
            try {
                Trace.beginSection(cls.getSimpleName());
            } finally {
                Trace.endSection();
            }
        }
        if (!hashSet.contains(cls)) {
            if (!hashMap.containsKey(cls)) {
                hashSet.add(cls);
                bj bjVar = (bj) cls.getDeclaredConstructor(null).newInstance(null);
                List<Class> a = bjVar.a();
                if (!a.isEmpty()) {
                    for (Class cls2 : a) {
                        if (!hashMap.containsKey(cls2)) {
                            k(cls2, hashSet);
                        }
                    }
                }
                obj = bjVar.b((Context) this.d);
                hashSet.remove(cls);
                hashMap.put(cls, obj);
            } else {
                obj = hashMap.get(cls);
            }
            return obj;
        }
        String name = cls.getName();
        throw new IllegalStateException("Cannot initialize " + name + ". Cycle detected.");
    }

    public vf l(String str) {
        b bVar = (b) ((HashMap) this.b).get(str);
        if (bVar != null) {
            return bVar.c;
        }
        return null;
    }

    public vf m(String str) {
        for (b bVar : ((HashMap) this.b).values()) {
            if (bVar != null) {
                vf vfVar = bVar.c;
                if (!str.equals(vfVar.e)) {
                    vfVar = vfVar.u.c.m(str);
                }
                if (vfVar != null) {
                    return vfVar;
                }
            }
        }
        return null;
    }

    public ArrayList n() {
        ArrayList arrayList = new ArrayList();
        for (b bVar : ((HashMap) this.b).values()) {
            if (bVar != null) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public View o(int i) {
        return ((cw) this.b).a.getChildAt(w(i));
    }

    @Override // defpackage.q8
    public void onCancel() {
        View view = (View) this.b;
        view.clearAnimation();
        ((ViewGroup) this.c).endViewTransition(view);
        ((ec) this.d).d();
    }

    public int p() {
        return ((cw) this.b).a.getChildCount() - ((ArrayList) this.d).size();
    }

    public ColorStateList q(int i) {
        int resourceId;
        ColorStateList o;
        TypedArray typedArray = (TypedArray) this.b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0 && (o = gn.o((Context) this.d, resourceId)) != null) {
            return o;
        }
        return typedArray.getColorStateList(i);
    }

    public Drawable r(int i) {
        int resourceId;
        TypedArray typedArray = (TypedArray) this.b;
        if (typedArray.hasValue(i) && (resourceId = typedArray.getResourceId(i, 0)) != 0) {
            return gn.p((Context) this.d, resourceId);
        }
        return typedArray.getDrawable(i);
    }

    public Drawable s(int i) {
        int resourceId;
        Drawable e2;
        if (((TypedArray) this.b).hasValue(i) && (resourceId = ((TypedArray) this.b).getResourceId(i, 0)) != 0) {
            z3 a = z3.a();
            Context context = (Context) this.d;
            synchronized (a) {
                e2 = a.a.e(context, resourceId, true);
            }
            return e2;
        }
        return null;
    }

    public Typeface t(int i, int i2, b5 b5Var) {
        b5 b5Var2;
        XmlPullParserException xmlPullParserException;
        IOException iOException;
        int resourceId = ((TypedArray) this.b).getResourceId(i, 0);
        if (resourceId != 0) {
            if (((TypedValue) this.c) == null) {
                this.c = new TypedValue();
            }
            Context context = (Context) this.d;
            TypedValue typedValue = (TypedValue) this.c;
            ThreadLocal threadLocal = xx.a;
            if (!context.isRestricted()) {
                Resources resources = context.getResources();
                resources.getValue(resourceId, typedValue, true);
                CharSequence charSequence = typedValue.string;
                if (charSequence != null) {
                    String charSequence2 = charSequence.toString();
                    if (!charSequence2.startsWith("res/")) {
                        b5Var.a();
                        return null;
                    }
                    int i3 = typedValue.assetCookie;
                    bm bmVar = v50.b;
                    Typeface typeface = (Typeface) bmVar.a(v50.b(resources, resourceId, charSequence2, i3, i2));
                    if (typeface != null) {
                        new Handler(Looper.getMainLooper()).post(new y5(b5Var, 4, typeface));
                        return typeface;
                    }
                    try {
                        if (charSequence2.toLowerCase().endsWith(".xml")) {
                            lf C = k60.C(resources.getXml(resourceId), resources);
                            if (C == null) {
                                try {
                                    Log.e("ResourcesCompat", "Failed to find font-family tag");
                                    b5Var.a();
                                    return null;
                                } catch (IOException e2) {
                                    iOException = e2;
                                    b5Var2 = b5Var;
                                    Log.e("ResourcesCompat", "Failed to read xml resource ".concat(charSequence2), iOException);
                                    b5Var2.a();
                                    return null;
                                } catch (XmlPullParserException e3) {
                                    xmlPullParserException = e3;
                                    b5Var2 = b5Var;
                                    Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(charSequence2), xmlPullParserException);
                                    b5Var2.a();
                                    return null;
                                }
                            }
                            try {
                                return v50.a(context, C, resources, resourceId, charSequence2, typedValue.assetCookie, i2, b5Var);
                            } catch (IOException e4) {
                                e = e4;
                                b5Var2 = b5Var;
                                iOException = e;
                                Log.e("ResourcesCompat", "Failed to read xml resource ".concat(charSequence2), iOException);
                                b5Var2.a();
                                return null;
                            } catch (XmlPullParserException e5) {
                                e = e5;
                                b5Var2 = b5Var;
                                xmlPullParserException = e;
                                Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(charSequence2), xmlPullParserException);
                                b5Var2.a();
                                return null;
                            }
                        }
                        b5Var2 = b5Var;
                        try {
                            int i4 = typedValue.assetCookie;
                            Typeface l = v50.a.l(context, resources, resourceId, charSequence2, i2);
                            if (l != null) {
                                bmVar.b(v50.b(resources, resourceId, charSequence2, i4, i2), l);
                            }
                            if (l != null) {
                                new Handler(Looper.getMainLooper()).post(new y5(b5Var2, 4, l));
                            } else {
                                b5Var2.a();
                            }
                            return l;
                        } catch (IOException e6) {
                            e = e6;
                            iOException = e;
                            Log.e("ResourcesCompat", "Failed to read xml resource ".concat(charSequence2), iOException);
                            b5Var2.a();
                            return null;
                        } catch (XmlPullParserException e7) {
                            e = e7;
                            xmlPullParserException = e;
                            Log.e("ResourcesCompat", "Failed to parse xml resource ".concat(charSequence2), xmlPullParserException);
                            b5Var2.a();
                            return null;
                        }
                    } catch (IOException e8) {
                        e = e8;
                        b5Var2 = b5Var;
                    } catch (XmlPullParserException e9) {
                        e = e9;
                        b5Var2 = b5Var;
                    }
                } else {
                    String resourceName = resources.getResourceName(resourceId);
                    String hexString = Integer.toHexString(resourceId);
                    throw new Resources.NotFoundException("Resource \"" + resourceName + "\" (" + hexString + ") is not a Font: " + typedValue);
                }
            }
        }
        return null;
    }

    public String toString() {
        switch (this.a) {
            case 1:
                return ((o9) this.c).toString() + ", hidden list:" + ((ArrayList) this.d).size();
            default:
                return super.toString();
        }
    }

    public List u() {
        ArrayList arrayList;
        if (((ArrayList) this.c).isEmpty()) {
            return Collections.EMPTY_LIST;
        }
        synchronized (((ArrayList) this.c)) {
            arrayList = new ArrayList((ArrayList) this.c);
        }
        return arrayList;
    }

    public int w(int i) {
        o9 o9Var = (o9) this.c;
        if (i >= 0) {
            int childCount = ((cw) this.b).a.getChildCount();
            int i2 = i;
            while (i2 < childCount) {
                int b = i - (i2 - o9Var.b(i2));
                if (b == 0) {
                    while (o9Var.d(i2)) {
                        i2++;
                    }
                    return i2;
                }
                i2 += b;
            }
            return -1;
        }
        return -1;
    }

    public View x(int i) {
        return ((cw) this.b).a.getChildAt(i);
    }

    public int y() {
        return ((cw) this.b).a.getChildCount();
    }

    public void z(View view) {
        ((ArrayList) this.d).add(view);
        cw cwVar = (cw) this.b;
        nu G = RecyclerView.G(view);
        if (G != null) {
            View view2 = G.a;
            RecyclerView recyclerView = cwVar.a;
            int i = G.q;
            if (i != -1) {
                G.p = i;
            } else {
                WeakHashMap weakHashMap = u70.a;
                G.p = e70.c(view2);
            }
            if (recyclerView.J()) {
                G.q = 4;
                recyclerView.r0.add(G);
                return;
            }
            WeakHashMap weakHashMap2 = u70.a;
            e70.s(view2, 4);
        }
    }

    public /* synthetic */ v5(Object obj, Object obj2, Object obj3, int i) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
        this.d = obj3;
    }

    public v5(cw cwVar) {
        this.a = 1;
        this.b = cwVar;
        this.c = new o9();
        this.d = new ArrayList();
    }

    public v5(Context context, TypedArray typedArray) {
        this.a = 6;
        this.d = context;
        this.b = typedArray;
    }

    public v5(Context context, LocationManager locationManager) {
        this.a = 7;
        this.c = new Object();
        this.d = context;
        this.b = locationManager;
    }

    public v5(Context context) {
        this.a = 0;
        this.d = context.getApplicationContext();
        this.c = new HashSet();
        this.b = new HashMap();
    }

    @Override // defpackage.hj
    public void d() {
    }
}
