package defpackage;

import android.os.Bundle;
import android.os.SystemClock;
import android.text.Editable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import androidx.preference.EditTextPreference;
import java.util.List;
/* renamed from: jd  reason: default package */
/* loaded from: classes.dex */
public class jd extends eu {
    public EditText r0;
    public CharSequence s0;
    public final c7 t0 = new c7(6, this);
    public long u0 = -1;

    @Override // defpackage.eu
    public final void Q(View view) {
        int i;
        super.Q(view);
        EditText editText = (EditText) view.findViewById(16908291);
        this.r0 = editText;
        if (editText != null) {
            editText.requestFocus();
            this.r0.setText(this.s0);
            EditText editText2 = this.r0;
            editText2.setSelection(editText2.getText().length());
            if (((EditTextPreference) P()).V != null) {
                c2 c2Var = ((EditTextPreference) P()).V;
                EditText editText3 = this.r0;
                c2Var.getClass();
                List list = d2.c0;
                editText3.getClass();
                editText3.setInputType(4098);
                Editable text = editText3.getText();
                if (text != null) {
                    i = text.length();
                } else {
                    i = 0;
                }
                editText3.setSelection(i);
                return;
            }
            return;
        }
        c2.g("Dialog view must contain an EditText with id @android:id/edit");
    }

    @Override // defpackage.eu
    public final void R(boolean z) {
        if (z) {
            String obj = this.r0.getText().toString();
            EditTextPreference editTextPreference = (EditTextPreference) P();
            if (editTextPreference.a(obj)) {
                editTextPreference.A(obj);
            }
        }
    }

    public final void T() {
        long j = this.u0;
        if (j != -1 && j + 1000 > SystemClock.currentThreadTimeMillis()) {
            EditText editText = this.r0;
            if (editText != null && editText.isFocused()) {
                if (((InputMethodManager) this.r0.getContext().getSystemService("input_method")).showSoftInput(this.r0, 0)) {
                    this.u0 = -1L;
                    return;
                }
                EditText editText2 = this.r0;
                c7 c7Var = this.t0;
                editText2.removeCallbacks(c7Var);
                this.r0.postDelayed(c7Var, 50L);
                return;
            }
            this.u0 = -1L;
        }
    }

    @Override // defpackage.eu, defpackage.qc, defpackage.vf
    public final void r(Bundle bundle) {
        super.r(bundle);
        if (bundle == null) {
            this.s0 = ((EditTextPreference) P()).U;
        } else {
            this.s0 = bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
        }
    }

    @Override // defpackage.eu, defpackage.qc, defpackage.vf
    public final void z(Bundle bundle) {
        super.z(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.s0);
    }
}
