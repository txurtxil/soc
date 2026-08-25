package defpackage;

import android.view.View;
import android.widget.AdapterView;
import androidx.appcompat.widget.SearchView;
import androidx.preference.DropDownPreference;
/* renamed from: ed  reason: default package */
/* loaded from: classes.dex */
public final class ed implements AdapterView.OnItemSelectedListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ ed(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView adapterView, View view, int i, long j) {
        dd ddVar;
        int i2 = this.a;
        Object obj = this.b;
        switch (i2) {
            case 0:
                DropDownPreference dropDownPreference = (DropDownPreference) obj;
                if (i >= 0) {
                    String charSequence = dropDownPreference.V[i].toString();
                    if (!charSequence.equals(dropDownPreference.W) && dropDownPreference.a(charSequence)) {
                        dropDownPreference.B(charSequence);
                        return;
                    }
                    return;
                }
                return;
            case 1:
                if (i != -1 && (ddVar = ((jl) obj).c) != null) {
                    ddVar.setListSelectionHidden(false);
                    return;
                }
                return;
            default:
                ((SearchView) obj).n(i);
                return;
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView adapterView) {
        int i = this.a;
    }

    private final void a(AdapterView adapterView) {
    }

    private final void b(AdapterView adapterView) {
    }

    private final void c(AdapterView adapterView) {
    }
}
