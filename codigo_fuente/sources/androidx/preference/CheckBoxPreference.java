package androidx.preference;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.CompoundButton;
/* loaded from: classes.dex */
public class CheckBoxPreference extends TwoStatePreference {
    public final n9 T;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CheckBoxPreference(android.content.Context r4, android.util.AttributeSet r5) {
        /*
            r3 = this;
            r0 = 2130968745(0x7f0400a9, float:1.7546152E38)
            r1 = 16842895(0x101008f, float:2.369396E-38)
            int r0 = defpackage.gt.g(r4, r0, r1)
            r3.<init>(r4, r5, r0)
            n9 r1 = new n9
            r2 = 0
            r1.<init>(r3, r2)
            r3.T = r1
            int[] r1 = defpackage.sv.b
            android.content.res.TypedArray r4 = r4.obtainStyledAttributes(r5, r1, r0, r2)
            r5 = 5
            java.lang.String r5 = r4.getString(r5)
            if (r5 != 0) goto L26
            java.lang.String r5 = r4.getString(r2)
        L26:
            r3.P = r5
            boolean r5 = r3.O
            if (r5 == 0) goto L2f
            r3.h()
        L2f:
            r5 = 4
            java.lang.String r5 = r4.getString(r5)
            if (r5 != 0) goto L3b
            r5 = 1
            java.lang.String r5 = r4.getString(r5)
        L3b:
            r3.Q = r5
            boolean r5 = r3.O
            if (r5 != 0) goto L44
            r3.h()
        L44:
            r5 = 2
            boolean r5 = r4.getBoolean(r5, r2)
            r0 = 3
            boolean r5 = r4.getBoolean(r0, r5)
            r3.S = r5
            r4.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.CheckBoxPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final void C(View view) {
        boolean z = view instanceof CompoundButton;
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.O);
        }
        if (z) {
            ((CompoundButton) view).setOnCheckedChangeListener(this.T);
        }
    }

    @Override // androidx.preference.Preference
    public final void l(nu nuVar) {
        super.l(nuVar);
        C(nuVar.b(16908289));
        B(nuVar.b(16908304));
    }

    @Override // androidx.preference.Preference
    public final void s(View view) {
        super.s(view);
        if (!((AccessibilityManager) this.a.getSystemService("accessibility")).isEnabled()) {
            return;
        }
        C(view.findViewById(16908289));
        B(view.findViewById(16908304));
    }
}
