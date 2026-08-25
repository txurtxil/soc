package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import androidx.car.app.model.Alert;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes.dex */
public abstract class PreferenceGroup extends Preference {
    public final j20 O;
    public final ArrayList P;
    public boolean Q;
    public int R;
    public boolean S;
    public int T;

    public PreferenceGroup(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.O = new j20();
        new Handler(Looper.getMainLooper());
        this.Q = true;
        this.R = 0;
        this.S = false;
        this.T = Alert.DURATION_SHOW_INDEFINITELY;
        this.P = new ArrayList();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sv.i, i, 0);
        this.Q = obtainStyledAttributes.getBoolean(2, obtainStyledAttributes.getBoolean(2, true));
        if (obtainStyledAttributes.hasValue(1)) {
            int i3 = obtainStyledAttributes.getInt(1, obtainStyledAttributes.getInt(1, Alert.DURATION_SHOW_INDEFINITELY));
            if (i3 != Integer.MAX_VALUE && TextUtils.isEmpty(this.l)) {
                Log.e("PreferenceGroup", getClass().getSimpleName().concat(" should have a key defined if it contains an expandable preference"));
            }
            this.T = i3;
        }
        obtainStyledAttributes.recycle();
    }

    public final void A(Preference preference) {
        long j;
        if (!this.P.contains(preference)) {
            if (preference.l != null) {
                PreferenceGroup preferenceGroup = this;
                while (true) {
                    PreferenceGroup preferenceGroup2 = preferenceGroup.J;
                    if (preferenceGroup2 == null) {
                        break;
                    }
                    preferenceGroup = preferenceGroup2;
                }
                String str = preference.l;
                if (preferenceGroup.B(str) != null) {
                    Log.e("PreferenceGroup", "Found duplicated key: \"" + str + "\". This can cause unintended behaviour, please use unique keys for every preference.");
                }
            }
            int i = preference.g;
            if (i == Integer.MAX_VALUE) {
                if (this.Q) {
                    int i2 = this.R;
                    this.R = i2 + 1;
                    if (i2 != i) {
                        preference.g = i2;
                        ju juVar = preference.H;
                        if (juVar != null) {
                            Handler handler = juVar.g;
                            c7 c7Var = juVar.h;
                            handler.removeCallbacks(c7Var);
                            handler.post(c7Var);
                        }
                    }
                }
                if (preference instanceof PreferenceGroup) {
                    ((PreferenceGroup) preference).Q = this.Q;
                }
            }
            int binarySearch = Collections.binarySearch(this.P, preference);
            if (binarySearch < 0) {
                binarySearch = (binarySearch * (-1)) - 1;
            }
            boolean y = y();
            if (preference.w == y) {
                preference.w = !y;
                preference.i(preference.y());
                preference.h();
            }
            synchronized (this) {
                this.P.add(binarySearch, preference);
            }
            lu luVar = this.b;
            String str2 = preference.l;
            if (str2 != null && this.O.containsKey(str2)) {
                j = ((Long) this.O.getOrDefault(str2, null)).longValue();
                this.O.remove(str2);
            } else {
                synchronized (luVar) {
                    j = luVar.b;
                    luVar.b = 1 + j;
                }
            }
            preference.c = j;
            preference.d = true;
            try {
                preference.k(luVar);
                preference.d = false;
                if (preference.J == null) {
                    preference.J = this;
                    if (this.S) {
                        preference.j();
                    }
                    ju juVar2 = this.H;
                    if (juVar2 != null) {
                        Handler handler2 = juVar2.g;
                        c7 c7Var2 = juVar2.h;
                        handler2.removeCallbacks(c7Var2);
                        handler2.post(c7Var2);
                        return;
                    }
                    return;
                }
                c2.g("This preference already has a parent. You must remove the existing parent before assigning a new one.");
            } catch (Throwable th) {
                preference.d = false;
                throw th;
            }
        }
    }

    public final Preference B(CharSequence charSequence) {
        Preference B;
        if (charSequence != null) {
            if (TextUtils.equals(this.l, charSequence)) {
                return this;
            }
            int size = this.P.size();
            for (int i = 0; i < size; i++) {
                Preference C = C(i);
                if (TextUtils.equals(C.l, charSequence)) {
                    return C;
                }
                if ((C instanceof PreferenceGroup) && (B = ((PreferenceGroup) C).B(charSequence)) != null) {
                    return B;
                }
            }
            return null;
        }
        c2.n("Key cannot be null");
        return null;
    }

    public final Preference C(int i) {
        return (Preference) this.P.get(i);
    }

    @Override // androidx.preference.Preference
    public final void b(Bundle bundle) {
        super.b(bundle);
        int size = this.P.size();
        for (int i = 0; i < size; i++) {
            C(i).b(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public final void c(Bundle bundle) {
        super.c(bundle);
        int size = this.P.size();
        for (int i = 0; i < size; i++) {
            C(i).c(bundle);
        }
    }

    @Override // androidx.preference.Preference
    public final void i(boolean z) {
        super.i(z);
        int size = this.P.size();
        for (int i = 0; i < size; i++) {
            Preference C = C(i);
            if (C.w == z) {
                C.w = !z;
                C.i(C.y());
                C.h();
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void j() {
        super.j();
        this.S = true;
        int size = this.P.size();
        for (int i = 0; i < size; i++) {
            C(i).j();
        }
    }

    @Override // androidx.preference.Preference
    public final void n() {
        super.n();
        this.S = false;
        int size = this.P.size();
        for (int i = 0; i < size; i++) {
            C(i).n();
        }
    }

    @Override // androidx.preference.Preference
    public final void p(Parcelable parcelable) {
        if (!parcelable.getClass().equals(hu.class)) {
            super.p(parcelable);
            return;
        }
        hu huVar = (hu) parcelable;
        this.T = huVar.a;
        super.p(huVar.getSuperState());
    }

    @Override // androidx.preference.Preference
    public final Parcelable q() {
        super.q();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        return new hu(this.T);
    }

    public PreferenceGroup(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 0);
    }
}
