package defpackage;

import android.widget.EditText;
import androidx.appcompat.widget.SwitchCompat;
import java.lang.ref.WeakReference;
/* renamed from: ee  reason: default package */
/* loaded from: classes.dex */
public final class ee extends qd {
    public final /* synthetic */ int a = 0;
    public final WeakReference b;

    public ee(EditText editText) {
        this.b = new WeakReference(editText);
    }

    @Override // defpackage.qd
    public void a() {
        switch (this.a) {
            case 1:
                SwitchCompat switchCompat = (SwitchCompat) this.b.get();
                if (switchCompat != null) {
                    switchCompat.c();
                    return;
                }
                return;
            default:
                return;
        }
    }

    @Override // defpackage.qd
    public final void b() {
        int i = this.a;
        WeakReference weakReference = this.b;
        switch (i) {
            case 0:
                fe.a((EditText) weakReference.get(), 1);
                return;
            default:
                SwitchCompat switchCompat = (SwitchCompat) weakReference.get();
                if (switchCompat != null) {
                    switchCompat.c();
                    return;
                }
                return;
        }
    }

    public ee(SwitchCompat switchCompat) {
        this.b = new WeakReference(switchCompat);
    }
}
