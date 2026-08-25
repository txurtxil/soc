package androidx.preference;

import android.view.View;
import android.view.accessibility.AccessibilityManager;
import android.widget.Checkable;
import android.widget.Switch;
/* loaded from: classes.dex */
public class SwitchPreference extends TwoStatePreference {
    public final n9 T;
    public final String U;
    public final String V;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public SwitchPreference(android.content.Context r5, android.util.AttributeSet r6) {
        /*
            r4 = this;
            r0 = 2130969609(0x7f040409, float:1.7547905E38)
            r1 = 16843629(0x101036d, float:2.3696016E-38)
            int r0 = defpackage.gt.g(r5, r0, r1)
            r4.<init>(r5, r6, r0)
            n9 r1 = new n9
            r2 = 1
            r1.<init>(r4, r2)
            r4.T = r1
            int[] r1 = defpackage.sv.l
            r3 = 0
            android.content.res.TypedArray r5 = r5.obtainStyledAttributes(r6, r1, r0, r3)
            r6 = 7
            java.lang.String r6 = r5.getString(r6)
            if (r6 != 0) goto L27
            java.lang.String r6 = r5.getString(r3)
        L27:
            r4.P = r6
            boolean r6 = r4.O
            if (r6 == 0) goto L30
            r4.h()
        L30:
            r6 = 6
            java.lang.String r6 = r5.getString(r6)
            if (r6 != 0) goto L3b
            java.lang.String r6 = r5.getString(r2)
        L3b:
            r4.Q = r6
            boolean r6 = r4.O
            if (r6 != 0) goto L44
            r4.h()
        L44:
            r6 = 9
            java.lang.String r6 = r5.getString(r6)
            if (r6 != 0) goto L51
            r6 = 3
            java.lang.String r6 = r5.getString(r6)
        L51:
            r4.U = r6
            r4.h()
            r6 = 8
            java.lang.String r6 = r5.getString(r6)
            if (r6 != 0) goto L63
            r6 = 4
            java.lang.String r6 = r5.getString(r6)
        L63:
            r4.V = r6
            r4.h()
            r6 = 2
            boolean r6 = r5.getBoolean(r6, r3)
            r0 = 5
            boolean r6 = r5.getBoolean(r0, r6)
            r4.S = r6
            r5.recycle()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.preference.SwitchPreference.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public final void C(View view) {
        boolean z = view instanceof Switch;
        if (z) {
            ((Switch) view).setOnCheckedChangeListener(null);
        }
        if (view instanceof Checkable) {
            ((Checkable) view).setChecked(this.O);
        }
        if (z) {
            Switch r4 = (Switch) view;
            r4.setTextOn(this.U);
            r4.setTextOff(this.V);
            r4.setOnCheckedChangeListener(this.T);
        }
    }

    @Override // androidx.preference.Preference
    public final void l(nu nuVar) {
        super.l(nuVar);
        C(nuVar.b(16908352));
        B(nuVar.b(16908304));
    }

    @Override // androidx.preference.Preference
    public final void s(View view) {
        super.s(view);
        if (!((AccessibilityManager) this.a.getSystemService("accessibility")).isEnabled()) {
            return;
        }
        C(view.findViewById(16908352));
        B(view.findViewById(16908304));
    }
}
