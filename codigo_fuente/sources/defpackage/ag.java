package defpackage;

import android.util.Log;
import androidx.fragment.app.a;
import java.util.ArrayList;
import java.util.Map;
/* renamed from: ag  reason: default package */
/* loaded from: classes.dex */
public final class ag implements s1 {
    public final /* synthetic */ int a;
    public final /* synthetic */ a b;

    public /* synthetic */ ag(a aVar, int i) {
        this.a = i;
        this.b = aVar;
    }

    @Override // defpackage.s1
    public final void a(Object obj) {
        int i;
        int i2 = this.a;
        a aVar = this.b;
        switch (i2) {
            case 0:
                r1 r1Var = (r1) obj;
                eg egVar = (eg) aVar.x.pollFirst();
                if (egVar == null) {
                    Log.w("FragmentManager", "No IntentSenders were started for " + this);
                    return;
                }
                String str = egVar.a;
                int i3 = egVar.b;
                vf m = aVar.c.m(str);
                if (m == null) {
                    Log.w("FragmentManager", "Intent Sender result delivered for unknown Fragment " + str);
                    return;
                }
                m.p(i3, r1Var.a, r1Var.b);
                return;
            case 1:
                Map map = (Map) obj;
                String[] strArr = (String[]) map.keySet().toArray(new String[0]);
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i4 = 0; i4 < arrayList.size(); i4++) {
                    if (((Boolean) arrayList.get(i4)).booleanValue()) {
                        i = 0;
                    } else {
                        i = -1;
                    }
                    iArr[i4] = i;
                }
                eg egVar2 = (eg) aVar.x.pollFirst();
                if (egVar2 == null) {
                    Log.w("FragmentManager", "No permissions were requested for " + this);
                    return;
                }
                String str2 = egVar2.a;
                if (aVar.c.m(str2) == null) {
                    Log.w("FragmentManager", "Permission request result delivered for unknown Fragment " + str2);
                    return;
                }
                return;
            default:
                r1 r1Var2 = (r1) obj;
                eg egVar3 = (eg) aVar.x.pollFirst();
                if (egVar3 == null) {
                    Log.w("FragmentManager", "No Activities were started for result for " + this);
                    return;
                }
                String str3 = egVar3.a;
                int i5 = egVar3.b;
                vf m2 = aVar.c.m(str3);
                if (m2 == null) {
                    Log.w("FragmentManager", "Activity result delivered for unknown Fragment " + str3);
                    return;
                }
                m2.p(i5, r1Var2.a, r1Var2.b);
                return;
        }
    }
}
