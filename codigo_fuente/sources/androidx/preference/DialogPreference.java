package androidx.preference;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.AttributeSet;
import com.google.android.apps.auto.sdk.ui.R;
/* loaded from: classes.dex */
public abstract class DialogPreference extends Preference {
    public final CharSequence O;
    public final String P;
    public final Drawable Q;
    public final String R;
    public final String S;
    public final int T;

    public DialogPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sv.c, i, 0);
        String string = obtainStyledAttributes.getString(9);
        string = string == null ? obtainStyledAttributes.getString(0) : string;
        this.O = string;
        if (string == null) {
            this.O = this.h;
        }
        String string2 = obtainStyledAttributes.getString(8);
        this.P = string2 == null ? obtainStyledAttributes.getString(1) : string2;
        Drawable drawable = obtainStyledAttributes.getDrawable(6);
        this.Q = drawable == null ? obtainStyledAttributes.getDrawable(2) : drawable;
        String string3 = obtainStyledAttributes.getString(11);
        this.R = string3 == null ? obtainStyledAttributes.getString(3) : string3;
        String string4 = obtainStyledAttributes.getString(10);
        this.S = string4 == null ? obtainStyledAttributes.getString(4) : string4;
        this.T = obtainStyledAttributes.getResourceId(7, obtainStyledAttributes.getResourceId(5, 0));
        obtainStyledAttributes.recycle();
    }

    @Override // androidx.preference.Preference
    public void m() {
        qc rqVar;
        gu guVar = this.b.i;
        if (guVar != null) {
            for (vf vfVar = guVar; vfVar != null; vfVar = vfVar.v) {
            }
            if (guVar.j().z("androidx.preference.PreferenceFragment.DIALOG") == null) {
                boolean z = this instanceof EditTextPreference;
                String str = this.l;
                if (z) {
                    rqVar = new jd();
                    Bundle bundle = new Bundle(1);
                    bundle.putString("key", str);
                    rqVar.J(bundle);
                } else if (this instanceof ListPreference) {
                    rqVar = new ml();
                    Bundle bundle2 = new Bundle(1);
                    bundle2.putString("key", str);
                    rqVar.J(bundle2);
                } else if (this instanceof MultiSelectListPreference) {
                    rqVar = new rq();
                    Bundle bundle3 = new Bundle(1);
                    bundle3.putString("key", str);
                    rqVar.J(bundle3);
                } else {
                    String simpleName = getClass().getSimpleName();
                    throw new IllegalArgumentException("Cannot display dialog for an unknown Preference type: " + simpleName + ". Make sure to implement onPreferenceDisplayDialog() to handle displaying a custom dialog for this Preference.");
                }
                rqVar.K(guVar);
                rqVar.O(guVar.j(), "androidx.preference.PreferenceFragment.DIALOG");
            }
        }
    }

    public DialogPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, gt.g(context, R.attr.dialogPreferenceStyle, 16842897));
    }
}
