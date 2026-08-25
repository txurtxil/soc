package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import com.google.android.apps.auto.sdk.ui.R;
/* loaded from: classes.dex */
public class ListPreference extends DialogPreference {
    public final CharSequence[] U;
    public final CharSequence[] V;
    public String W;
    public String X;
    public boolean Y;

    public ListPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sv.e, i, 0);
        CharSequence[] textArray = obtainStyledAttributes.getTextArray(2);
        this.U = textArray == null ? obtainStyledAttributes.getTextArray(0) : textArray;
        CharSequence[] textArray2 = obtainStyledAttributes.getTextArray(3);
        this.V = textArray2 == null ? obtainStyledAttributes.getTextArray(1) : textArray2;
        if (obtainStyledAttributes.getBoolean(4, obtainStyledAttributes.getBoolean(4, false))) {
            if (hd.f == null) {
                hd.f = new hd(16);
            }
            this.M = hd.f;
            h();
        }
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, sv.g, i, 0);
        String string = obtainStyledAttributes2.getString(33);
        this.X = string == null ? obtainStyledAttributes2.getString(7) : string;
        obtainStyledAttributes2.recycle();
    }

    public final int A(String str) {
        CharSequence[] charSequenceArr;
        if (str != null && (charSequenceArr = this.V) != null) {
            for (int length = charSequenceArr.length - 1; length >= 0; length--) {
                if (TextUtils.equals(charSequenceArr[length].toString(), str)) {
                    return length;
                }
            }
            return -1;
        }
        return -1;
    }

    public final void B(String str) {
        boolean equals = TextUtils.equals(this.W, str);
        if (!equals || !this.Y) {
            this.W = str;
            this.Y = true;
            t(str);
            if (!equals) {
                h();
            }
        }
    }

    @Override // androidx.preference.Preference
    public final CharSequence f() {
        CharSequence charSequence;
        CharSequence[] charSequenceArr;
        hd hdVar = this.M;
        if (hdVar != null) {
            return hdVar.g(this);
        }
        int A = A(this.W);
        if (A >= 0 && (charSequenceArr = this.U) != null) {
            charSequence = charSequenceArr[A];
        } else {
            charSequence = null;
        }
        CharSequence f = super.f();
        String str = this.X;
        if (str != null) {
            if (charSequence == null) {
                charSequence = "";
            }
            String format = String.format(str, charSequence);
            if (!TextUtils.equals(format, f)) {
                Log.w("ListPreference", "Setting a summary with a String formatting marker is no longer supported. You should use a SummaryProvider instead.");
                return format;
            }
        }
        return f;
    }

    @Override // androidx.preference.Preference
    public final Object o(TypedArray typedArray, int i) {
        return typedArray.getString(i);
    }

    @Override // androidx.preference.Preference
    public final void p(Parcelable parcelable) {
        if (!parcelable.getClass().equals(kl.class)) {
            super.p(parcelable);
            return;
        }
        kl klVar = (kl) parcelable;
        super.p(klVar.getSuperState());
        B(klVar.a);
    }

    @Override // androidx.preference.Preference
    public final Parcelable q() {
        super.q();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.s) {
            return absSavedState;
        }
        kl klVar = new kl();
        klVar.a = this.W;
        return klVar;
    }

    @Override // androidx.preference.Preference
    public final void r(Object obj) {
        B(e((String) obj));
    }

    @Override // androidx.preference.Preference
    public final void x(CharSequence charSequence) {
        super.x(charSequence);
        if (charSequence == null) {
            this.X = null;
        } else {
            this.X = ((String) charSequence).toString();
        }
    }

    public ListPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, gt.g(context, R.attr.dialogPreferenceStyle, 16842897));
    }
}
