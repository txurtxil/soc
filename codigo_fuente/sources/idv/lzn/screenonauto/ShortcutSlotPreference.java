package idv.lzn.screenonauto;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.CompoundButton;
import androidx.appcompat.widget.SwitchCompat;
import androidx.preference.Preference;
import com.google.android.apps.auto.sdk.ui.R;
import idv.lzn.screenonauto.ShortcutSlotPreference;
/* loaded from: classes.dex */
public final class ShortcutSlotPreference extends Preference {
    public boolean O;
    public boolean P;
    public dk Q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ShortcutSlotPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
        this.P = true;
        this.G = R.layout.pref_widget_switch;
    }

    @Override // androidx.preference.Preference
    public final void l(nu nuVar) {
        SwitchCompat switchCompat;
        super.l(nuVar);
        View b = nuVar.b(R.id.slot_switch);
        if (b instanceof SwitchCompat) {
            switchCompat = (SwitchCompat) b;
        } else {
            switchCompat = null;
        }
        if (switchCompat == null) {
            return;
        }
        switchCompat.setOnCheckedChangeListener(null);
        switchCompat.setChecked(this.O);
        switchCompat.setEnabled(this.P);
        switchCompat.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: f20
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                compoundButton.getClass();
                dk dkVar = ShortcutSlotPreference.this.Q;
                if (dkVar != null) {
                    dkVar.b(Boolean.valueOf(z));
                }
            }
        });
    }
}
