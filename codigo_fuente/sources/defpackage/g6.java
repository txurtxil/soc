package defpackage;

import android.os.Bundle;
import android.os.IInterface;
import androidx.car.app.IAppHost;
import androidx.preference.Preference;
import java.util.List;
/* renamed from: g6  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class g6 implements ai, bu {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ g6(int i, fk fkVar) {
        this.a = i;
        this.b = fkVar;
    }

    @Override // defpackage.bu
    public void b(Preference preference) {
        fk fkVar = (fk) this.b;
        List list = fkVar.c0;
        if (list != null) {
            int i = this.a;
            String str = ((ck) list.get(i)).a;
            q6 q6Var = new q6();
            Bundle bundle = new Bundle();
            bundle.putInt("slot", i);
            bundle.putString("current_package", str);
            q6Var.J(bundle);
            q6Var.O(fkVar.j(), "AppPickerDialog");
            return;
        }
        qj.v("model");
        throw null;
    }

    @Override // defpackage.ai
    public void e(IInterface iInterface) {
        ((IAppHost) iInterface).showToast((CharSequence) this.b, this.a);
    }

    public /* synthetic */ g6(String str, int i) {
        this.b = str;
        this.a = i;
    }
}
