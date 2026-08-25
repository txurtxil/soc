package defpackage;

import android.widget.SeekBar;
import android.widget.TextView;
import androidx.preference.SeekBarPreference;
/* renamed from: s00  reason: default package */
/* loaded from: classes.dex */
public final class s00 implements SeekBar.OnSeekBarChangeListener {
    public final /* synthetic */ SeekBarPreference a;

    public s00(SeekBarPreference seekBarPreference) {
        this.a = seekBarPreference;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        SeekBarPreference seekBarPreference = this.a;
        if (z && (seekBarPreference.X || !seekBarPreference.S)) {
            seekBarPreference.B(seekBar);
            return;
        }
        int i2 = i + seekBarPreference.P;
        TextView textView = seekBarPreference.U;
        if (textView != null) {
            textView.setText(String.valueOf(i2));
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        this.a.S = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        SeekBarPreference seekBarPreference = this.a;
        seekBarPreference.S = false;
        if (seekBar.getProgress() + seekBarPreference.P != seekBarPreference.O) {
            seekBarPreference.B(seekBar);
        }
    }
}
