package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.TypedArray;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.AbsSavedState;
import android.widget.SeekBar;
import android.widget.TextView;
import com.google.android.apps.auto.sdk.ui.R;
/* loaded from: classes.dex */
public class SeekBarPreference extends Preference {
    public int O;
    public int P;
    public int Q;
    public int R;
    public boolean S;
    public SeekBar T;
    public TextView U;
    public final boolean V;
    public final boolean W;
    public final boolean X;
    public final s00 Y;
    public final t00 Z;

    public SeekBarPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.seekBarPreferenceStyle);
        this.Y = new s00(this);
        this.Z = new t00(this);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, sv.k, R.attr.seekBarPreferenceStyle, 0);
        this.P = obtainStyledAttributes.getInt(3, 0);
        int i = obtainStyledAttributes.getInt(1, 100);
        int i2 = this.P;
        i = i < i2 ? i2 : i;
        if (i != this.Q) {
            this.Q = i;
            h();
        }
        int i3 = obtainStyledAttributes.getInt(4, 0);
        if (i3 != this.R) {
            this.R = Math.min(this.Q - this.P, Math.abs(i3));
            h();
        }
        this.V = obtainStyledAttributes.getBoolean(2, true);
        this.W = obtainStyledAttributes.getBoolean(5, false);
        this.X = obtainStyledAttributes.getBoolean(6, false);
        obtainStyledAttributes.recycle();
    }

    public final void A(int i, boolean z) {
        int i2 = this.P;
        if (i < i2) {
            i = i2;
        }
        int i3 = this.Q;
        if (i > i3) {
            i = i3;
        }
        if (i != this.O) {
            this.O = i;
            TextView textView = this.U;
            if (textView != null) {
                textView.setText(String.valueOf(i));
            }
            if (z()) {
                int i4 = ~i;
                boolean z2 = z();
                String str = this.l;
                if (z2) {
                    i4 = this.b.d().getInt(str, i4);
                }
                if (i != i4) {
                    SharedPreferences.Editor c = this.b.c();
                    c.putInt(str, i);
                    if (!this.b.e) {
                        c.apply();
                    }
                }
            }
            if (z) {
                h();
            }
        }
    }

    public final void B(SeekBar seekBar) {
        int progress = seekBar.getProgress() + this.P;
        if (progress != this.O) {
            if (a(Integer.valueOf(progress))) {
                A(progress, false);
                return;
            }
            seekBar.setProgress(this.O - this.P);
            int i = this.O;
            TextView textView = this.U;
            if (textView != null) {
                textView.setText(String.valueOf(i));
            }
        }
    }

    @Override // androidx.preference.Preference
    public final void l(nu nuVar) {
        super.l(nuVar);
        nuVar.a.setOnKeyListener(this.Z);
        this.T = (SeekBar) nuVar.b(R.id.seekbar);
        TextView textView = (TextView) nuVar.b(R.id.seekbar_value);
        this.U = textView;
        if (this.W) {
            textView.setVisibility(0);
        } else {
            textView.setVisibility(8);
            this.U = null;
        }
        SeekBar seekBar = this.T;
        if (seekBar == null) {
            Log.e("SeekBarPreference", "SeekBar view is null in onBindViewHolder.");
            return;
        }
        seekBar.setOnSeekBarChangeListener(this.Y);
        this.T.setMax(this.Q - this.P);
        int i = this.R;
        SeekBar seekBar2 = this.T;
        if (i != 0) {
            seekBar2.setKeyProgressIncrement(i);
        } else {
            this.R = seekBar2.getKeyProgressIncrement();
        }
        this.T.setProgress(this.O - this.P);
        int i2 = this.O;
        TextView textView2 = this.U;
        if (textView2 != null) {
            textView2.setText(String.valueOf(i2));
        }
        this.T.setEnabled(g());
    }

    @Override // androidx.preference.Preference
    public final Object o(TypedArray typedArray, int i) {
        return Integer.valueOf(typedArray.getInt(i, 0));
    }

    @Override // androidx.preference.Preference
    public final void p(Parcelable parcelable) {
        if (!parcelable.getClass().equals(u00.class)) {
            super.p(parcelable);
            return;
        }
        u00 u00Var = (u00) parcelable;
        super.p(u00Var.getSuperState());
        this.O = u00Var.a;
        this.P = u00Var.b;
        this.Q = u00Var.c;
        h();
    }

    @Override // androidx.preference.Preference
    public final Parcelable q() {
        super.q();
        AbsSavedState absSavedState = AbsSavedState.EMPTY_STATE;
        if (this.s) {
            return absSavedState;
        }
        u00 u00Var = new u00();
        u00Var.a = this.O;
        u00Var.b = this.P;
        u00Var.c = this.Q;
        return u00Var;
    }

    @Override // androidx.preference.Preference
    public final void r(Object obj) {
        if (obj == null) {
            obj = 0;
        }
        int intValue = ((Integer) obj).intValue();
        if (z()) {
            intValue = this.b.d().getInt(this.l, intValue);
        }
        A(intValue, true);
    }
}
