package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.a;
import androidx.lifecycle.b;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: qc  reason: default package */
/* loaded from: classes.dex */
public class qc extends vf implements DialogInterface.OnCancelListener, DialogInterface.OnDismissListener {
    public Handler T;
    public boolean c0;
    public Dialog e0;
    public boolean f0;
    public boolean g0;
    public boolean h0;
    public final c7 U = new c7(4, this);
    public final nc V = new Object();
    public final oc W = new oc(this);
    public int X = 0;
    public int Y = 0;
    public boolean Z = true;
    public boolean a0 = true;
    public int b0 = -1;
    public final c9 d0 = new c9(12, this);
    public boolean i0 = false;

    @Override // defpackage.vf
    public void A() {
        this.D = true;
        Dialog dialog = this.e0;
        if (dialog != null) {
            this.f0 = false;
            dialog.show();
            View decorView = this.e0.getWindow().getDecorView();
            decorView.getClass();
            decorView.setTag(R.id.view_tree_lifecycle_owner, this);
            decorView.setTag(R.id.view_tree_view_model_store_owner, this);
            decorView.setTag(R.id.view_tree_saved_state_registry_owner, this);
        }
    }

    @Override // defpackage.vf
    public final void B() {
        this.D = true;
        Dialog dialog = this.e0;
        if (dialog != null) {
            dialog.hide();
        }
    }

    @Override // defpackage.vf
    public final void D(Bundle bundle) {
        Bundle bundle2;
        this.D = true;
        if (this.e0 != null && bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
            this.e0.onRestoreInstanceState(bundle2);
        }
    }

    @Override // defpackage.vf
    public final void E(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Bundle bundle2;
        super.E(layoutInflater, viewGroup, bundle);
        if (this.F == null && this.e0 != null && bundle != null && (bundle2 = bundle.getBundle("android:savedDialogState")) != null) {
            this.e0.onRestoreInstanceState(bundle2);
        }
    }

    public final void M(boolean z, boolean z2) {
        if (this.g0) {
            return;
        }
        this.g0 = true;
        this.h0 = false;
        Dialog dialog = this.e0;
        if (dialog != null) {
            dialog.setOnDismissListener(null);
            this.e0.dismiss();
            if (!z2) {
                if (Looper.myLooper() == this.T.getLooper()) {
                    onDismiss(this.e0);
                } else {
                    this.T.post(this.U);
                }
            }
        }
        this.f0 = true;
        if (this.b0 >= 0) {
            a j = j();
            int i = this.b0;
            if (i >= 0) {
                j.u(new hg(j, i), false);
                this.b0 = -1;
                return;
            }
            c2.n(t20.d(i, "Bad id: "));
            return;
        }
        e7 e7Var = new e7(j());
        a aVar = this.s;
        if (aVar != null && aVar != e7Var.q) {
            throw new IllegalStateException("Cannot remove Fragment attached to a different FragmentManager. Fragment " + toString() + " is already attached to a FragmentManager.");
        }
        e7Var.b(new og(3, this));
        if (z) {
            e7Var.d(true);
        } else {
            e7Var.d(false);
        }
    }

    public Dialog N() {
        if (a.E(3)) {
            Log.d("FragmentManager", "onCreateDialog called for DialogFragment " + this);
        }
        return new Dialog(G(), this.Y);
    }

    public final void O(a aVar, String str) {
        this.g0 = false;
        this.h0 = true;
        e7 e7Var = new e7(aVar);
        e7Var.e(0, this, str, 1);
        e7Var.d(false);
    }

    @Override // defpackage.vf
    public final s8 b() {
        return new pc(this, new sf(this));
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (!this.f0) {
            if (a.E(3)) {
                Log.d("FragmentManager", "onDismiss called for DialogFragment " + this);
            }
            M(true, true);
        }
    }

    @Override // defpackage.vf
    public final void q(Context context) {
        super.q(context);
        this.P.d(this.d0);
        if (!this.h0) {
            this.g0 = false;
        }
    }

    @Override // defpackage.vf
    public void r(Bundle bundle) {
        boolean z;
        Parcelable parcelable;
        this.D = true;
        if (bundle != null && (parcelable = bundle.getParcelable("android:support:fragments")) != null) {
            this.u.O(parcelable);
            ig igVar = this.u;
            igVar.z = false;
            igVar.A = false;
            igVar.G.h = false;
            igVar.s(1);
        }
        ig igVar2 = this.u;
        if (igVar2.n < 1) {
            igVar2.z = false;
            igVar2.A = false;
            igVar2.G.h = false;
            igVar2.s(1);
        }
        this.T = new Handler();
        if (this.x == 0) {
            z = true;
        } else {
            z = false;
        }
        this.a0 = z;
        if (bundle != null) {
            this.X = bundle.getInt("android:style", 0);
            this.Y = bundle.getInt("android:theme", 0);
            this.Z = bundle.getBoolean("android:cancelable", true);
            this.a0 = bundle.getBoolean("android:showsDialog", this.a0);
            this.b0 = bundle.getInt("android:backStackId", -1);
        }
    }

    @Override // defpackage.vf
    public void u() {
        this.D = true;
        Dialog dialog = this.e0;
        if (dialog != null) {
            this.f0 = true;
            dialog.setOnDismissListener(null);
            this.e0.dismiss();
            if (!this.g0) {
                onDismiss(this.e0);
            }
            this.e0 = null;
            this.i0 = false;
        }
    }

    @Override // defpackage.vf
    public final void v() {
        this.D = true;
        if (!this.h0 && !this.g0) {
            this.g0 = true;
        }
        b bVar = this.P;
        bVar.getClass();
        b.a("removeObserver");
        sl slVar = (sl) bVar.b.b(this.d0);
        if (slVar == null) {
            return;
        }
        slVar.i();
        slVar.h(false);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0044 A[Catch: all -> 0x004c, TryCatch #0 {all -> 0x004c, blocks: (B:12:0x001a, B:14:0x0026, B:24:0x003e, B:26:0x0044, B:29:0x004e, B:20:0x0030, B:22:0x0036, B:23:0x003b, B:30:0x0066), top: B:49:0x001a }] */
    @Override // defpackage.vf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.LayoutInflater w(android.os.Bundle r8) {
        /*
            r7 = this;
            android.view.LayoutInflater r8 = super.w(r8)
            boolean r0 = r7.a0
            java.lang.String r1 = "FragmentManager"
            r2 = 2
            if (r0 == 0) goto L98
            boolean r3 = r7.c0
            if (r3 == 0) goto L11
            goto L98
        L11:
            if (r0 != 0) goto L14
            goto L6f
        L14:
            boolean r0 = r7.i0
            if (r0 != 0) goto L6f
            r0 = 0
            r3 = 1
            r7.c0 = r3     // Catch: java.lang.Throwable -> L4c
            android.app.Dialog r4 = r7.N()     // Catch: java.lang.Throwable -> L4c
            r7.e0 = r4     // Catch: java.lang.Throwable -> L4c
            boolean r5 = r7.a0     // Catch: java.lang.Throwable -> L4c
            if (r5 == 0) goto L66
            int r5 = r7.X     // Catch: java.lang.Throwable -> L4c
            if (r5 == r3) goto L3b
            if (r5 == r2) goto L3b
            r6 = 3
            if (r5 == r6) goto L30
            goto L3e
        L30:
            android.view.Window r5 = r4.getWindow()     // Catch: java.lang.Throwable -> L4c
            if (r5 == 0) goto L3b
            r6 = 24
            r5.addFlags(r6)     // Catch: java.lang.Throwable -> L4c
        L3b:
            r4.requestWindowFeature(r3)     // Catch: java.lang.Throwable -> L4c
        L3e:
            android.content.Context r4 = r7.h()     // Catch: java.lang.Throwable -> L4c
            if (r4 == 0) goto L4e
            android.app.Dialog r5 = r7.e0     // Catch: java.lang.Throwable -> L4c
            android.app.Activity r4 = (android.app.Activity) r4     // Catch: java.lang.Throwable -> L4c
            r5.setOwnerActivity(r4)     // Catch: java.lang.Throwable -> L4c
            goto L4e
        L4c:
            r8 = move-exception
            goto L6c
        L4e:
            android.app.Dialog r4 = r7.e0     // Catch: java.lang.Throwable -> L4c
            boolean r5 = r7.Z     // Catch: java.lang.Throwable -> L4c
            r4.setCancelable(r5)     // Catch: java.lang.Throwable -> L4c
            android.app.Dialog r4 = r7.e0     // Catch: java.lang.Throwable -> L4c
            nc r5 = r7.V     // Catch: java.lang.Throwable -> L4c
            r4.setOnCancelListener(r5)     // Catch: java.lang.Throwable -> L4c
            android.app.Dialog r4 = r7.e0     // Catch: java.lang.Throwable -> L4c
            oc r5 = r7.W     // Catch: java.lang.Throwable -> L4c
            r4.setOnDismissListener(r5)     // Catch: java.lang.Throwable -> L4c
            r7.i0 = r3     // Catch: java.lang.Throwable -> L4c
            goto L69
        L66:
            r3 = 0
            r7.e0 = r3     // Catch: java.lang.Throwable -> L4c
        L69:
            r7.c0 = r0
            goto L6f
        L6c:
            r7.c0 = r0
            throw r8
        L6f:
            boolean r0 = androidx.fragment.app.a.E(r2)
            if (r0 == 0) goto L8b
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "get layout inflater for DialogFragment "
            r0.<init>(r2)
            r0.append(r7)
            java.lang.String r2 = " from dialog context"
            r0.append(r2)
            java.lang.String r0 = r0.toString()
            android.util.Log.d(r1, r0)
        L8b:
            android.app.Dialog r7 = r7.e0
            if (r7 == 0) goto Lc3
            android.content.Context r7 = r7.getContext()
            android.view.LayoutInflater r7 = r8.cloneInContext(r7)
            return r7
        L98:
            boolean r0 = androidx.fragment.app.a.E(r2)
            if (r0 == 0) goto Lc3
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r2 = "getting layout inflater for DialogFragment "
            r0.<init>(r2)
            r0.append(r7)
            java.lang.String r0 = r0.toString()
            boolean r7 = r7.a0
            if (r7 != 0) goto Lba
            java.lang.String r7 = "mShowsDialog = false: "
            java.lang.String r7 = r7.concat(r0)
            android.util.Log.d(r1, r7)
            return r8
        Lba:
            java.lang.String r7 = "mCreatingDialog = true: "
            java.lang.String r7 = r7.concat(r0)
            android.util.Log.d(r1, r7)
        Lc3:
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.qc.w(android.os.Bundle):android.view.LayoutInflater");
    }

    @Override // defpackage.vf
    public void z(Bundle bundle) {
        Dialog dialog = this.e0;
        if (dialog != null) {
            Bundle onSaveInstanceState = dialog.onSaveInstanceState();
            onSaveInstanceState.putBoolean("android:dialogShowing", false);
            bundle.putBundle("android:savedDialogState", onSaveInstanceState);
        }
        int i = this.X;
        if (i != 0) {
            bundle.putInt("android:style", i);
        }
        int i2 = this.Y;
        if (i2 != 0) {
            bundle.putInt("android:theme", i2);
        }
        boolean z = this.Z;
        if (!z) {
            bundle.putBoolean("android:cancelable", z);
        }
        boolean z2 = this.a0;
        if (!z2) {
            bundle.putBoolean("android:showsDialog", z2);
        }
        int i3 = this.b0;
        if (i3 != -1) {
            bundle.putInt("android:backStackId", i3);
        }
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
    }
}
