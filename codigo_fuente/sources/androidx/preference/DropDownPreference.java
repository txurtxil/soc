package androidx.preference;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import com.google.android.apps.auto.sdk.ui.R;
/* loaded from: classes.dex */
public class DropDownPreference extends ListPreference {
    public final ArrayAdapter Z;
    public Spinner a0;
    public final ed b0;

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.dropdownPreferenceStyle);
        this.b0 = new ed(0, this);
        ArrayAdapter arrayAdapter = new ArrayAdapter(context, 17367049);
        this.Z = arrayAdapter;
        arrayAdapter.clear();
        CharSequence[] charSequenceArr = this.U;
        if (charSequenceArr != null) {
            for (CharSequence charSequence : charSequenceArr) {
                arrayAdapter.add(charSequence.toString());
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void h() {
        super.h();
        ArrayAdapter arrayAdapter = this.Z;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }

    @Override // androidx.preference.Preference
    public final void l(nu nuVar) {
        int i;
        CharSequence[] charSequenceArr;
        Spinner spinner = (Spinner) nuVar.a.findViewById(R.id.spinner);
        this.a0 = spinner;
        spinner.setAdapter((SpinnerAdapter) this.Z);
        this.a0.setOnItemSelectedListener(this.b0);
        Spinner spinner2 = this.a0;
        String str = this.W;
        if (str != null && (charSequenceArr = this.V) != null) {
            i = charSequenceArr.length - 1;
            while (i >= 0) {
                if (TextUtils.equals(charSequenceArr[i].toString(), str)) {
                    break;
                }
                i--;
            }
        }
        i = -1;
        spinner2.setSelection(i);
        super.l(nuVar);
    }

    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    public final void m() {
        this.a0.performClick();
    }
}
