package defpackage;

import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import androidx.preference.DialogPreference;
/* renamed from: eu  reason: default package */
/* loaded from: classes.dex */
public abstract class eu extends qc implements DialogInterface.OnClickListener {
    public DialogPreference j0;
    public CharSequence k0;
    public CharSequence l0;
    public CharSequence m0;
    public CharSequence n0;
    public int o0;
    public BitmapDrawable p0;
    public int q0;

    @Override // defpackage.qc
    public final Dialog N() {
        this.q0 = -2;
        n2 n2Var = new n2(G());
        CharSequence charSequence = this.k0;
        k2 k2Var = (k2) n2Var.c;
        k2Var.d = charSequence;
        k2Var.c = this.p0;
        n2Var.d(this.l0, this);
        k2Var.i = this.m0;
        k2Var.j = this;
        G();
        int i = this.o0;
        View view = null;
        if (i != 0) {
            LayoutInflater layoutInflater = this.K;
            if (layoutInflater == null) {
                layoutInflater = w(null);
                this.K = layoutInflater;
            }
            view = layoutInflater.inflate(i, (ViewGroup) null);
        }
        if (view != null) {
            Q(view);
            k2Var.o = view;
        } else {
            k2Var.f = this.n0;
        }
        S(n2Var);
        o2 b = n2Var.b();
        if (this instanceof jd) {
            Window window = b.getWindow();
            if (Build.VERSION.SDK_INT >= 30) {
                du.a(window);
                return b;
            }
            jd jdVar = (jd) this;
            jdVar.u0 = SystemClock.currentThreadTimeMillis();
            jdVar.T();
        }
        return b;
    }

    public final DialogPreference P() {
        if (this.j0 == null) {
            Bundle bundle = this.f;
            if (bundle != null) {
                this.j0 = (DialogPreference) ((gu) n()).M(bundle.getString("key"));
            } else {
                c2.d(this, " does not have any arguments.", "Fragment ");
                return null;
            }
        }
        return this.j0;
    }

    public void Q(View view) {
        int i;
        View findViewById = view.findViewById(16908299);
        if (findViewById != null) {
            CharSequence charSequence = this.n0;
            if (!TextUtils.isEmpty(charSequence)) {
                if (findViewById instanceof TextView) {
                    ((TextView) findViewById).setText(charSequence);
                }
                i = 0;
            } else {
                i = 8;
            }
            if (findViewById.getVisibility() != i) {
                findViewById.setVisibility(i);
            }
        }
    }

    public abstract void R(boolean z);

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.q0 = i;
    }

    @Override // defpackage.qc, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        boolean z;
        super.onDismiss(dialogInterface);
        if (this.q0 == -1) {
            z = true;
        } else {
            z = false;
        }
        R(z);
    }

    @Override // defpackage.qc, defpackage.vf
    public void r(Bundle bundle) {
        super.r(bundle);
        vf n = n();
        if (n instanceof gu) {
            gu guVar = (gu) n;
            Bundle bundle2 = this.f;
            if (bundle2 != null) {
                String string = bundle2.getString("key");
                if (bundle == null) {
                    DialogPreference dialogPreference = (DialogPreference) guVar.M(string);
                    this.j0 = dialogPreference;
                    this.k0 = dialogPreference.O;
                    this.l0 = dialogPreference.R;
                    this.m0 = dialogPreference.S;
                    this.n0 = dialogPreference.P;
                    this.o0 = dialogPreference.T;
                    Drawable drawable = dialogPreference.Q;
                    if (drawable != null && !(drawable instanceof BitmapDrawable)) {
                        Bitmap createBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(createBitmap);
                        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                        drawable.draw(canvas);
                        this.p0 = new BitmapDrawable(k(), createBitmap);
                        return;
                    }
                    this.p0 = (BitmapDrawable) drawable;
                    return;
                }
                this.k0 = bundle.getCharSequence("PreferenceDialogFragment.title");
                this.l0 = bundle.getCharSequence("PreferenceDialogFragment.positiveText");
                this.m0 = bundle.getCharSequence("PreferenceDialogFragment.negativeText");
                this.n0 = bundle.getCharSequence("PreferenceDialogFragment.message");
                this.o0 = bundle.getInt("PreferenceDialogFragment.layout", 0);
                Bitmap bitmap = (Bitmap) bundle.getParcelable("PreferenceDialogFragment.icon");
                if (bitmap != null) {
                    this.p0 = new BitmapDrawable(k(), bitmap);
                    return;
                }
                return;
            }
            c2.d(this, " does not have any arguments.", "Fragment ");
            return;
        }
        c2.g("Target fragment must implement TargetFragment interface");
    }

    @Override // defpackage.qc, defpackage.vf
    public void z(Bundle bundle) {
        super.z(bundle);
        bundle.putCharSequence("PreferenceDialogFragment.title", this.k0);
        bundle.putCharSequence("PreferenceDialogFragment.positiveText", this.l0);
        bundle.putCharSequence("PreferenceDialogFragment.negativeText", this.m0);
        bundle.putCharSequence("PreferenceDialogFragment.message", this.n0);
        bundle.putInt("PreferenceDialogFragment.layout", this.o0);
        BitmapDrawable bitmapDrawable = this.p0;
        if (bitmapDrawable != null) {
            bundle.putParcelable("PreferenceDialogFragment.icon", bitmapDrawable.getBitmap());
        }
    }

    public void S(n2 n2Var) {
    }
}
