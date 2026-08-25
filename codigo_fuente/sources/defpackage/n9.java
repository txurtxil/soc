package defpackage;

import android.widget.CompoundButton;
import androidx.preference.CheckBoxPreference;
import androidx.preference.SwitchPreference;
import androidx.preference.SwitchPreferenceCompat;
import androidx.preference.TwoStatePreference;
/* renamed from: n9  reason: default package */
/* loaded from: classes.dex */
public final class n9 implements CompoundButton.OnCheckedChangeListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ TwoStatePreference b;

    public /* synthetic */ n9(TwoStatePreference twoStatePreference, int i) {
        this.a = i;
        this.b = twoStatePreference;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int i = this.a;
        TwoStatePreference twoStatePreference = this.b;
        switch (i) {
            case 0:
                CheckBoxPreference checkBoxPreference = (CheckBoxPreference) twoStatePreference;
                if (!checkBoxPreference.a(Boolean.valueOf(z))) {
                    compoundButton.setChecked(!z);
                    return;
                } else {
                    checkBoxPreference.A(z);
                    return;
                }
            case 1:
                SwitchPreference switchPreference = (SwitchPreference) twoStatePreference;
                if (!switchPreference.a(Boolean.valueOf(z))) {
                    compoundButton.setChecked(!z);
                    return;
                } else {
                    switchPreference.A(z);
                    return;
                }
            default:
                SwitchPreferenceCompat switchPreferenceCompat = (SwitchPreferenceCompat) twoStatePreference;
                if (!switchPreferenceCompat.a(Boolean.valueOf(z))) {
                    compoundButton.setChecked(!z);
                    return;
                } else {
                    switchPreferenceCompat.A(z);
                    return;
                }
        }
    }
}
