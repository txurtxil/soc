package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import androidx.appcompat.widget.SwitchCompat;
import com.google.android.apps.auto.sdk.ui.R;
/* loaded from: classes.dex */
public class SwitchPreferenceCompat extends TwoStatePreference {
    public final n9 T;
    public final String U;
    public final String V;

    public SwitchPreferenceCompat(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.switchPreferenceCompatStyle);
        this.T = new n9(this, 2);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sv.m, R.attr.switchPreferenceCompatStyle, 0);
        String string = obtainStyledAttributes.getString(7);
        this.P = string == null ? obtainStyledAttributes.getString(0) : string;
        if (this.O) {
            h();
        }
        String string2 = obtainStyledAttributes.getString(6);
        this.Q = string2 == null ? obtainStyledAttributes.getString(1) : string2;
        if (!this.O) {
            h();
        }
        String string3 = obtainStyledAttributes.getString(9);
        this.U = string3 == null ? obtainStyledAttributes.getString(3) : string3;
        h();
        String string4 = obtainStyledAttributes.getString(8);
        this.V = string4 == null ? obtainStyledAttributes.getString(4) : string4;
        h();
        this.S = obtainStyledAttributes.getBoolean(5, obtainStyledAttributes.getBoolean(2, false));
        obtainStyledAttributes.recycle();
    }

    public final void C(View view) {
        boolean z = view instanceof SwitchCompat;
        if (z) {
            ((SwitchCompat) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.O);
        }
        if (z) {
            SwitchCompat switchCompat = (SwitchCompat) view;
            switchCompat.setTextOn(this.U);
            switchCompat.setTextOff(this.V);
            switchCompat.setOnCheckedChangeListener(this.T);
        }
    }

    @Override // androidx.preference.Preference
    public final void l(nu nuVar) {
        super.l(nuVar);
        C(nuVar.b(R.id.switchWidget));
        B(nuVar.b(16908304));
    }

    @Override // androidx.preference.Preference
    public final void s(View view) {
        super.s(view);
        if (!((AccessibilityManager) this.a.getSystemService("accessibility")).isEnabled()) {
            return;
        }
        C(view.findViewById(R.id.switchWidget));
        B(view.findViewById(16908304));
    }
}
