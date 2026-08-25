package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.WeakHashMap;
/* renamed from: ju  reason: default package */
/* loaded from: classes.dex */
public final class ju extends dw {
    public final PreferenceGroup c;
    public ArrayList d;
    public ArrayList e;
    public final ArrayList f;
    public final c7 h = new c7(12, this);
    public final Handler g = new Handler(Looper.getMainLooper());

    public ju(PreferenceGroup preferenceGroup) {
        this.c = preferenceGroup;
        preferenceGroup.H = this;
        this.d = new ArrayList();
        this.e = new ArrayList();
        this.f = new ArrayList();
        if (preferenceGroup instanceof PreferenceScreen) {
            boolean z = ((PreferenceScreen) preferenceGroup).U;
            if (!this.a.a()) {
                this.b = z;
            } else {
                c2.g("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
                throw null;
            }
        } else if (!this.a.a()) {
            this.b = true;
        } else {
            c2.g("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            throw null;
        }
        f();
    }

    @Override // defpackage.dw
    public final long a(int i) {
        if (!this.b) {
            return -1L;
        }
        return e(i).d();
    }

    @Override // defpackage.dw
    public final nu b(ViewGroup viewGroup, int i) {
        iu iuVar = (iu) this.f.get(i);
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        TypedArray obtainStyledAttributes = viewGroup.getContext().obtainStyledAttributes((AttributeSet) null, sv.a);
        Drawable drawable = obtainStyledAttributes.getDrawable(0);
        if (drawable == null) {
            drawable = gn.p(viewGroup.getContext(), 17301602);
        }
        obtainStyledAttributes.recycle();
        View inflate = from.inflate(iuVar.a, viewGroup, false);
        if (inflate.getBackground() == null) {
            WeakHashMap weakHashMap = u70.a;
            e70.q(inflate, drawable);
        }
        ViewGroup viewGroup2 = (ViewGroup) inflate.findViewById(16908312);
        if (viewGroup2 != null) {
            int i2 = iuVar.b;
            if (i2 != 0) {
                from.inflate(i2, viewGroup2);
            } else {
                viewGroup2.setVisibility(8);
            }
        }
        return new nu(inflate);
    }

    /* JADX WARN: Type inference failed for: r2v3, types: [re, java.lang.Object, androidx.preference.Preference] */
    public final ArrayList c(PreferenceGroup preferenceGroup) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int size = preferenceGroup.P.size();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            String str = null;
            if (i2 < size) {
                Preference C = preferenceGroup.C(i2);
                if (C.x) {
                    int i4 = preferenceGroup.T;
                    if (i4 != Integer.MAX_VALUE && i3 >= i4) {
                        arrayList2.add(C);
                    } else {
                        arrayList.add(C);
                    }
                    if (!(C instanceof PreferenceGroup)) {
                        i3++;
                    } else {
                        PreferenceGroup preferenceGroup2 = (PreferenceGroup) C;
                        if (preferenceGroup2 instanceof PreferenceScreen) {
                            continue;
                        } else if (preferenceGroup.T != Integer.MAX_VALUE && preferenceGroup2.T != Integer.MAX_VALUE) {
                            c2.g("Nesting an expandable group inside of another expandable group is not supported!");
                            return null;
                        } else {
                            ArrayList c = c(preferenceGroup2);
                            int size2 = c.size();
                            int i5 = 0;
                            while (i5 < size2) {
                                Object obj = c.get(i5);
                                i5++;
                                Preference preference = (Preference) obj;
                                int i6 = preferenceGroup.T;
                                if (i6 != Integer.MAX_VALUE && i3 >= i6) {
                                    arrayList2.add(preference);
                                } else {
                                    arrayList.add(preference);
                                }
                                i3++;
                            }
                        }
                    }
                }
                i2++;
            } else {
                int i7 = preferenceGroup.T;
                if (i7 != Integer.MAX_VALUE && i3 > i7) {
                    Context context = preferenceGroup.a;
                    long j = preferenceGroup.c;
                    ?? preference2 = new Preference(context, null);
                    preference2.F = R.layout.expand_button;
                    Context context2 = preference2.a;
                    preference2.w(gn.p(context2, R.drawable.car_filter_number_margin_start));
                    preference2.j = R.drawable.car_filter_number_margin_start;
                    String string = context2.getString(R.string.expand_button_title);
                    if (!TextUtils.equals(string, preference2.h)) {
                        preference2.h = string;
                        preference2.h();
                    }
                    if (999 != preference2.g) {
                        preference2.g = 999;
                        ju juVar = preference2.H;
                        if (juVar != null) {
                            Handler handler = juVar.g;
                            c7 c7Var = juVar.h;
                            handler.removeCallbacks(c7Var);
                            handler.post(c7Var);
                        }
                    }
                    ArrayList arrayList3 = new ArrayList();
                    int size3 = arrayList2.size();
                    while (i < size3) {
                        Object obj2 = arrayList2.get(i);
                        i++;
                        Preference preference3 = (Preference) obj2;
                        CharSequence charSequence = preference3.h;
                        boolean z = preference3 instanceof PreferenceGroup;
                        if (z && !TextUtils.isEmpty(charSequence)) {
                            arrayList3.add((PreferenceGroup) preference3);
                        }
                        if (arrayList3.contains(preference3.J)) {
                            if (z) {
                                arrayList3.add((PreferenceGroup) preference3);
                            }
                        } else if (!TextUtils.isEmpty(charSequence)) {
                            if (str == null) {
                                str = charSequence;
                            } else {
                                str = context2.getString(R.string.summary_collapsed_preference_list, str, charSequence);
                            }
                        }
                    }
                    preference2.x(str);
                    preference2.O = j + 1000000;
                    preference2.f = new ko(this, 16, preferenceGroup);
                    arrayList.add(preference2);
                }
                return arrayList;
            }
        }
    }

    public final void d(ArrayList arrayList, PreferenceGroup preferenceGroup) {
        synchronized (preferenceGroup) {
            Collections.sort(preferenceGroup.P);
        }
        int size = preferenceGroup.P.size();
        for (int i = 0; i < size; i++) {
            Preference C = preferenceGroup.C(i);
            arrayList.add(C);
            iu iuVar = new iu(C);
            if (!this.f.contains(iuVar)) {
                this.f.add(iuVar);
            }
            if (C instanceof PreferenceGroup) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) C;
                if (!(preferenceGroup2 instanceof PreferenceScreen)) {
                    d(arrayList, preferenceGroup2);
                }
            }
            C.H = this;
        }
    }

    public final Preference e(int i) {
        if (i >= 0 && i < this.e.size()) {
            return (Preference) this.e.get(i);
        }
        return null;
    }

    public final void f() {
        ArrayList arrayList = this.d;
        int size = arrayList.size();
        int i = 0;
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((Preference) obj).H = null;
        }
        ArrayList arrayList2 = new ArrayList(this.d.size());
        this.d = arrayList2;
        PreferenceGroup preferenceGroup = this.c;
        d(arrayList2, preferenceGroup);
        this.e = c(preferenceGroup);
        this.a.b();
        ArrayList arrayList3 = this.d;
        int size2 = arrayList3.size();
        while (i < size2) {
            Object obj2 = arrayList3.get(i);
            i++;
            ((Preference) obj2).getClass();
        }
    }
}
