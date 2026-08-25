package defpackage;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Looper;
import android.os.Parcelable;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: gu  reason: default package */
/* loaded from: classes.dex */
public abstract class gu extends vf {
    public lu U;
    public RecyclerView V;
    public boolean W;
    public boolean X;
    public final fu T = new fu(this);
    public int Y = R.layout.preference_list_fragment;
    public final db0 Z = new db0(this, Looper.getMainLooper(), 4);
    public final c7 a0 = new c7(11, this);

    @Override // defpackage.vf
    public final void A() {
        this.D = true;
        lu luVar = this.U;
        luVar.h = this;
        luVar.i = this;
    }

    @Override // defpackage.vf
    public final void B() {
        this.D = true;
        lu luVar = this.U;
        luVar.h = null;
        luVar.i = null;
    }

    @Override // defpackage.vf
    public final void C(Bundle bundle) {
        PreferenceScreen preferenceScreen;
        Bundle bundle2;
        PreferenceScreen preferenceScreen2;
        if (bundle != null && (bundle2 = bundle.getBundle("android:preferences")) != null && (preferenceScreen2 = this.U.g) != null) {
            preferenceScreen2.b(bundle2);
        }
        if (this.W && (preferenceScreen = this.U.g) != null) {
            this.V.setAdapter(new ju(preferenceScreen));
            preferenceScreen.j();
        }
        this.X = true;
    }

    public final Preference M(String str) {
        PreferenceScreen preferenceScreen;
        lu luVar = this.U;
        if (luVar == null || (preferenceScreen = luVar.g) == null) {
            return null;
        }
        return preferenceScreen.B(str);
    }

    public abstract void N(String str);

    public final void O(PreferenceScreen preferenceScreen) {
        lu luVar = this.U;
        PreferenceScreen preferenceScreen2 = luVar.g;
        if (preferenceScreen != preferenceScreen2) {
            if (preferenceScreen2 != null) {
                preferenceScreen2.n();
            }
            luVar.g = preferenceScreen;
            this.W = true;
            if (this.X) {
                db0 db0Var = this.Z;
                if (!db0Var.hasMessages(1)) {
                    db0Var.obtainMessage(1).sendToTarget();
                }
            }
        }
    }

    public final void P(int i, String str) {
        lu luVar = this.U;
        if (luVar != null) {
            Context G = G();
            luVar.e = true;
            ku kuVar = new ku(G, luVar);
            XmlResourceParser xml = G.getResources().getXml(i);
            try {
                PreferenceGroup c = kuVar.c(xml);
                xml.close();
                PreferenceScreen preferenceScreen = (PreferenceScreen) c;
                preferenceScreen.k(luVar);
                SharedPreferences.Editor editor = luVar.d;
                if (editor != null) {
                    editor.apply();
                }
                luVar.e = false;
                PreferenceScreen preferenceScreen2 = preferenceScreen;
                if (str != null) {
                    Preference B = preferenceScreen.B(str);
                    boolean z = B instanceof PreferenceScreen;
                    preferenceScreen2 = B;
                    if (!z) {
                        c2.n(t20.f("Preference object with key ", str, " is not a PreferenceScreen"));
                        return;
                    }
                }
                O((PreferenceScreen) preferenceScreen2);
                return;
            } catch (Throwable th) {
                xml.close();
                throw th;
            }
        }
        throw new RuntimeException("This should be called after super.onCreate.");
    }

    @Override // defpackage.vf
    public void r(Bundle bundle) {
        String str;
        Parcelable parcelable;
        this.D = true;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.u.O(parcelable);
            ig igVar = this.u;
            igVar.z = false;
            igVar.A = false;
            igVar.G.h = false;
            igVar.s(1);
        }
        ig igVar2 = this.u;
        if (igVar2.n < 1) {
            igVar2.z = false;
            igVar2.A = false;
            igVar2.G.h = false;
            igVar2.s(1);
        }
        TypedValue typedValue = new TypedValue();
        G().getTheme().resolveAttribute(R.attr.preferenceTheme, typedValue, true);
        int i = typedValue.resourceId;
        if (i == 0) {
            i = R.style.PreferenceThemeOverlay;
        }
        G().getTheme().applyStyle(i, false);
        lu luVar = new lu(G());
        this.U = luVar;
        luVar.j = this;
        Bundle bundle2 = this.f;
        if (bundle2 != null) {
            str = bundle2.getString("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
        } else {
            str = null;
        }
        N(str);
    }

    @Override // defpackage.vf
    public final View s(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        RecyclerView recyclerView;
        TypedArray obtainStyledAttributes = G().obtainStyledAttributes(null, sv.h, R.attr.preferenceFragmentCompatStyle, 0);
        this.Y = obtainStyledAttributes.getResourceId(0, this.Y);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(2, -1);
        boolean z = obtainStyledAttributes.getBoolean(3, true);
        obtainStyledAttributes.recycle();
        LayoutInflater cloneInContext = layoutInflater.cloneInContext(G());
        View inflate = cloneInContext.inflate(this.Y, viewGroup, false);
        View findViewById = inflate.findViewById(16908351);
        if (findViewById instanceof ViewGroup) {
            ViewGroup viewGroup2 = (ViewGroup) findViewById;
            if (!G().getPackageManager().hasSystemFeature("android.hardware.type.automotive") || (recyclerView = (RecyclerView) viewGroup2.findViewById(R.id.recycler_view)) == null) {
                recyclerView = (RecyclerView) cloneInContext.inflate(R.layout.preference_recyclerview, viewGroup2, false);
                G();
                recyclerView.setLayoutManager(new LinearLayoutManager());
                recyclerView.setAccessibilityDelegateCompat(new mu(recyclerView));
            }
            this.V = recyclerView;
            fu fuVar = this.T;
            recyclerView.f(fuVar);
            if (drawable != null) {
                fuVar.getClass();
                fuVar.b = drawable.getIntrinsicHeight();
            } else {
                fuVar.b = 0;
            }
            fuVar.a = drawable;
            gu guVar = fuVar.d;
            RecyclerView recyclerView2 = guVar.V;
            if (recyclerView2.n.size() != 0) {
                lw lwVar = recyclerView2.m;
                if (lwVar != null) {
                    lwVar.b("Cannot invalidate item decorations during a scroll or layout");
                }
                recyclerView2.K();
                recyclerView2.requestLayout();
            }
            if (dimensionPixelSize != -1) {
                fuVar.b = dimensionPixelSize;
                RecyclerView recyclerView3 = guVar.V;
                if (recyclerView3.n.size() != 0) {
                    lw lwVar2 = recyclerView3.m;
                    if (lwVar2 != null) {
                        lwVar2.b("Cannot invalidate item decorations during a scroll or layout");
                    }
                    recyclerView3.K();
                    recyclerView3.requestLayout();
                }
            }
            fuVar.c = z;
            if (this.V.getParent() == null) {
                viewGroup2.addView(this.V);
            }
            this.Z.post(this.a0);
            return inflate;
        }
        c2.g("Content has view with id attribute 'android.R.id.list_container' that is not a ViewGroup class");
        return null;
    }

    @Override // defpackage.vf
    public final void u() {
        c7 c7Var = this.a0;
        db0 db0Var = this.Z;
        db0Var.removeCallbacks(c7Var);
        db0Var.removeMessages(1);
        if (this.W) {
            this.V.setAdapter(null);
            PreferenceScreen preferenceScreen = this.U.g;
            if (preferenceScreen != null) {
                preferenceScreen.n();
            }
        }
        this.V = null;
        this.D = true;
    }

    @Override // defpackage.vf
    public final void z(Bundle bundle) {
        PreferenceScreen preferenceScreen = this.U.g;
        if (preferenceScreen != null) {
            Bundle bundle2 = new Bundle();
            preferenceScreen.c(bundle2);
            bundle.putBundle("android:preferences", bundle2);
        }
    }
}
