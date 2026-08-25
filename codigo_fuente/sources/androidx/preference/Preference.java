package androidx.preference;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.view.View;
import android.view.ViewGroup;
import androidx.car.app.model.Alert;
import androidx.fragment.app.a;
import com.google.android.apps.auto.sdk.ui.R;
import java.io.Serializable;
import java.util.ArrayList;
/* loaded from: classes.dex */
public class Preference implements Comparable<Preference> {
    public final boolean A;
    public final boolean B;
    public boolean C;
    public final boolean D;
    public final boolean E;
    public int F;
    public int G;
    public ju H;
    public ArrayList I;
    public PreferenceGroup J;
    public boolean K;
    public cu L;
    public hd M;
    public final s0 N;
    public final Context a;
    public lu b;
    public long c;
    public boolean d;
    public au e;
    public bu f;
    public int g;
    public CharSequence h;
    public CharSequence i;
    public int j;
    public Drawable k;
    public final String l;
    public Intent m;
    public final String n;
    public Bundle o;
    public boolean q;
    public final boolean r;
    public boolean s;
    public final String t;
    public final Object u;
    public boolean v;
    public boolean w;
    public boolean x;
    public final boolean y;
    public final boolean z;

    public Preference(Context context, AttributeSet attributeSet, int i) {
        this.g = Alert.DURATION_SHOW_INDEFINITELY;
        this.q = true;
        this.r = true;
        this.s = true;
        this.v = true;
        this.w = true;
        this.x = true;
        this.y = true;
        this.z = true;
        this.B = true;
        this.E = true;
        this.F = R.layout.preference;
        this.N = new s0(2, this);
        this.a = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sv.g, i, 0);
        this.j = obtainStyledAttributes.getResourceId(23, obtainStyledAttributes.getResourceId(0, 0));
        String string = obtainStyledAttributes.getString(26);
        this.l = string == null ? obtainStyledAttributes.getString(6) : string;
        CharSequence text = obtainStyledAttributes.getText(34);
        this.h = text == null ? obtainStyledAttributes.getText(4) : text;
        CharSequence text2 = obtainStyledAttributes.getText(33);
        this.i = text2 == null ? obtainStyledAttributes.getText(7) : text2;
        this.g = obtainStyledAttributes.getInt(28, obtainStyledAttributes.getInt(8, Alert.DURATION_SHOW_INDEFINITELY));
        String string2 = obtainStyledAttributes.getString(22);
        this.n = string2 == null ? obtainStyledAttributes.getString(13) : string2;
        this.F = obtainStyledAttributes.getResourceId(27, obtainStyledAttributes.getResourceId(3, R.layout.preference));
        this.G = obtainStyledAttributes.getResourceId(35, obtainStyledAttributes.getResourceId(9, 0));
        this.q = obtainStyledAttributes.getBoolean(21, obtainStyledAttributes.getBoolean(2, true));
        boolean z = obtainStyledAttributes.getBoolean(30, obtainStyledAttributes.getBoolean(5, true));
        this.r = z;
        this.s = obtainStyledAttributes.getBoolean(29, obtainStyledAttributes.getBoolean(1, true));
        String string3 = obtainStyledAttributes.getString(19);
        this.t = string3 == null ? obtainStyledAttributes.getString(10) : string3;
        this.y = obtainStyledAttributes.getBoolean(16, obtainStyledAttributes.getBoolean(16, z));
        this.z = obtainStyledAttributes.getBoolean(17, obtainStyledAttributes.getBoolean(17, z));
        if (obtainStyledAttributes.hasValue(18)) {
            this.u = o(obtainStyledAttributes, 18);
        } else if (obtainStyledAttributes.hasValue(11)) {
            this.u = o(obtainStyledAttributes, 11);
        }
        this.E = obtainStyledAttributes.getBoolean(31, obtainStyledAttributes.getBoolean(12, true));
        boolean hasValue = obtainStyledAttributes.hasValue(32);
        this.A = hasValue;
        if (hasValue) {
            this.B = obtainStyledAttributes.getBoolean(32, obtainStyledAttributes.getBoolean(14, true));
        }
        this.C = obtainStyledAttributes.getBoolean(24, obtainStyledAttributes.getBoolean(15, false));
        this.x = obtainStyledAttributes.getBoolean(25, obtainStyledAttributes.getBoolean(25, true));
        this.D = obtainStyledAttributes.getBoolean(20, obtainStyledAttributes.getBoolean(20, false));
        obtainStyledAttributes.recycle();
    }

    public static void v(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                v(viewGroup.getChildAt(childCount), z);
            }
        }
    }

    public final boolean a(Serializable serializable) {
        au auVar = this.e;
        if (auVar != null && !auVar.a(this, serializable)) {
            return false;
        }
        return true;
    }

    public void b(Bundle bundle) {
        Parcelable parcelable;
        String str = this.l;
        if (!TextUtils.isEmpty(str) && (parcelable = bundle.getParcelable(str)) != null) {
            this.K = false;
            p(parcelable);
            if (!this.K) {
                c2.g("Derived class did not call super.onRestoreInstanceState()");
            }
        }
    }

    public void c(Bundle bundle) {
        String str = this.l;
        if (!TextUtils.isEmpty(str)) {
            this.K = false;
            Parcelable q = q();
            if (this.K) {
                if (q != null) {
                    bundle.putParcelable(str, q);
                    return;
                }
                return;
            }
            c2.g("Derived class did not call super.onSaveInstanceState()");
        }
    }

    @Override // java.lang.Comparable
    public final int compareTo(Preference preference) {
        Preference preference2 = preference;
        int i = this.g;
        int i2 = preference2.g;
        if (i != i2) {
            return i - i2;
        }
        CharSequence charSequence = this.h;
        CharSequence charSequence2 = preference2.h;
        if (charSequence == charSequence2) {
            return 0;
        }
        if (charSequence == null) {
            return 1;
        }
        if (charSequence2 == null) {
            return -1;
        }
        return charSequence.toString().compareToIgnoreCase(preference2.h.toString());
    }

    public long d() {
        return this.c;
    }

    public final String e(String str) {
        if (!z()) {
            return str;
        }
        return this.b.d().getString(this.l, str);
    }

    public CharSequence f() {
        hd hdVar = this.M;
        if (hdVar != null) {
            return hdVar.g(this);
        }
        return this.i;
    }

    public boolean g() {
        if (this.q && this.v && this.w) {
            return true;
        }
        return false;
    }

    public void h() {
        int indexOf;
        ju juVar = this.H;
        if (juVar != null && (indexOf = juVar.e.indexOf(this)) != -1) {
            juVar.a.c(indexOf, 1, this);
        }
    }

    public void i(boolean z) {
        ArrayList arrayList = this.I;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                Preference preference = (Preference) arrayList.get(i);
                if (preference.v == z) {
                    preference.v = !z;
                    preference.i(preference.y());
                    preference.h();
                }
            }
        }
    }

    public void j() {
        PreferenceScreen preferenceScreen;
        String str = this.t;
        if (!TextUtils.isEmpty(str)) {
            lu luVar = this.b;
            Preference preference = null;
            if (luVar != null && (preferenceScreen = luVar.g) != null) {
                preference = preferenceScreen.B(str);
            }
            if (preference != null) {
                if (preference.I == null) {
                    preference.I = new ArrayList();
                }
                preference.I.add(this);
                boolean y = preference.y();
                if (this.v == y) {
                    this.v = !y;
                    i(y());
                    h();
                    return;
                }
                return;
            }
            CharSequence charSequence = this.h;
            throw new IllegalStateException("Dependency \"" + str + "\" not found for preference \"" + this.l + "\" (title: \"" + ((Object) charSequence) + "\"");
        }
    }

    public final void k(lu luVar) {
        SharedPreferences sharedPreferences;
        long j;
        this.b = luVar;
        if (!this.d) {
            synchronized (luVar) {
                j = luVar.b;
                luVar.b = 1 + j;
            }
            this.c = j;
        }
        if (z()) {
            lu luVar2 = this.b;
            if (luVar2 != null) {
                sharedPreferences = luVar2.d();
            } else {
                sharedPreferences = null;
            }
            if (sharedPreferences.contains(this.l)) {
                r(null);
                return;
            }
        }
        Object obj = this.u;
        if (obj != null) {
            r(obj);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x00fc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(defpackage.nu r10) {
        /*
            Method dump skipped, instructions count: 269
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.Preference.l(nu):void");
    }

    public void m() {
    }

    public void n() {
        ArrayList arrayList;
        PreferenceScreen preferenceScreen;
        String str = this.t;
        if (str != null) {
            lu luVar = this.b;
            Preference preference = null;
            if (luVar != null && (preferenceScreen = luVar.g) != null) {
                preference = preferenceScreen.B(str);
            }
            if (preference != null && (arrayList = preference.I) != null) {
                arrayList.remove(this);
            }
        }
    }

    public Object o(TypedArray typedArray, int i) {
        return null;
    }

    public void p(Parcelable parcelable) {
        this.K = true;
        if (parcelable != AbsSavedState.EMPTY_STATE && parcelable != null) {
            c2.n("Wrong state class -- expecting Preference State");
        }
    }

    public Parcelable q() {
        this.K = true;
        return AbsSavedState.EMPTY_STATE;
    }

    public void r(Object obj) {
    }

    public void s(View view) {
        vf vfVar;
        String str;
        if (g() && this.r) {
            m();
            bu buVar = this.f;
            if (buVar != null) {
                buVar.b(this);
                return;
            }
            lu luVar = this.b;
            if (luVar != null && (vfVar = luVar.h) != null && (str = this.n) != null) {
                for (vf vfVar2 = vfVar; vfVar2 != null; vfVar2 = vfVar2.v) {
                }
                Log.w("PreferenceFragment", "onPreferenceStartFragment is not implemented in the parent activity - attempting to use a fallback implementation. You should implement this method so that you can configure the new fragment that will be displayed, and set a transition between the fragments.");
                a j = vfVar.j();
                if (this.o == null) {
                    this.o = new Bundle();
                }
                Bundle bundle = this.o;
                cg B = j.B();
                vfVar.F().getClassLoader();
                vf a = B.a(str);
                a.J(bundle);
                a.K(vfVar);
                e7 e7Var = new e7(j);
                e7Var.g(((View) vfVar.H().getParent()).getId(), a);
                if (e7Var.h) {
                    e7Var.g = true;
                    e7Var.i = null;
                    e7Var.d(false);
                    return;
                }
                c2.g("This FragmentTransaction is not allowed to be added to the back stack.");
                return;
            }
            Intent intent = this.m;
            if (intent != null) {
                this.a.startActivity(intent);
            }
        }
    }

    public final void t(String str) {
        if (z() && !TextUtils.equals(str, e(null))) {
            SharedPreferences.Editor c = this.b.c();
            c.putString(this.l, str);
            if (!this.b.e) {
                c.apply();
            }
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        CharSequence charSequence = this.h;
        if (!TextUtils.isEmpty(charSequence)) {
            sb.append(charSequence);
            sb.append(' ');
        }
        CharSequence f = f();
        if (!TextUtils.isEmpty(f)) {
            sb.append(f);
            sb.append(' ');
        }
        if (sb.length() > 0) {
            sb.setLength(sb.length() - 1);
        }
        return sb.toString();
    }

    public final void u(boolean z) {
        if (this.q != z) {
            this.q = z;
            i(y());
            h();
        }
    }

    public final void w(Drawable drawable) {
        if (this.k != drawable) {
            this.k = drawable;
            this.j = 0;
            h();
        }
    }

    public void x(CharSequence charSequence) {
        if (this.M == null) {
            if (!TextUtils.equals(this.i, charSequence)) {
                this.i = charSequence;
                h();
                return;
            }
            return;
        }
        c2.g("Preference already has a SummaryProvider set.");
    }

    public boolean y() {
        return !g();
    }

    public final boolean z() {
        if (this.b != null && this.s && !TextUtils.isEmpty(this.l)) {
            return true;
        }
        return false;
    }

    public Preference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, gt.g(context, R.attr.preferenceStyle, 16842894));
    }
}
