package defpackage;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.fragment.app.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
/* renamed from: t1  reason: default package */
/* loaded from: classes.dex */
public final class t1 extends em {
    public final /* synthetic */ int o;

    public /* synthetic */ t1(int i) {
        this.o = i;
    }

    @Override // defpackage.em
    public final Intent i(Context context, Object obj) {
        Bundle bundleExtra;
        switch (this.o) {
            case 0:
                String[] strArr = (String[]) obj;
                strArr.getClass();
                Intent putExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr);
                putExtra.getClass();
                return putExtra;
            case 1:
                String str = (String) obj;
                str.getClass();
                Intent putExtra2 = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", new String[]{str});
                putExtra2.getClass();
                return putExtra2;
            case 2:
                Intent intent = (Intent) obj;
                intent.getClass();
                return intent;
            default:
                pj pjVar = (pj) obj;
                Intent intent2 = new Intent("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST");
                Intent intent3 = pjVar.b;
                if (intent3 != null && (bundleExtra = intent3.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) != null) {
                    intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundleExtra);
                    intent3.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                    if (intent3.getBooleanExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", false)) {
                        pjVar = new pj(pjVar.a, null, pjVar.c, pjVar.d);
                    }
                }
                intent2.putExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST", pjVar);
                if (a.E(2)) {
                    Log.v("FragmentManager", "CreateIntent created the following intent: " + intent2);
                }
                return intent2;
        }
    }

    @Override // defpackage.em
    public c9 m(Context context, Object obj) {
        switch (this.o) {
            case 0:
                String[] strArr = (String[]) obj;
                strArr.getClass();
                if (strArr.length == 0) {
                    return new c9(4, ke.a);
                }
                for (String str : strArr) {
                    if (gn.g(context, str) != 0) {
                        return null;
                    }
                }
                int L = pm.L(strArr.length);
                if (L < 16) {
                    L = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(L);
                for (String str2 : strArr) {
                    linkedHashMap.put(str2, Boolean.TRUE);
                }
                return new c9(4, linkedHashMap);
            case 1:
                String str3 = (String) obj;
                str3.getClass();
                if (gn.g(context, str3) != 0) {
                    return null;
                }
                return new c9(4, Boolean.TRUE);
            default:
                return super.m(context, obj);
        }
    }

    @Override // defpackage.em
    public final Object r(Intent intent, int i) {
        boolean z;
        r2 = false;
        boolean z2 = false;
        switch (this.o) {
            case 0:
                if (i == -1 && intent != null) {
                    String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                    int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                    if (intArrayExtra != null && stringArrayExtra != null) {
                        ArrayList arrayList = new ArrayList(intArrayExtra.length);
                        for (int i2 : intArrayExtra) {
                            if (i2 == 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            arrayList.add(Boolean.valueOf(z));
                        }
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArrayExtra) {
                            if (str != null) {
                                arrayList2.add(str);
                            }
                        }
                        Iterator it = arrayList2.iterator();
                        Iterator it2 = arrayList.iterator();
                        ArrayList arrayList3 = new ArrayList(Math.min(x9.z(arrayList2), x9.z(arrayList)));
                        while (it.hasNext() && it2.hasNext()) {
                            arrayList3.add(new at(it.next(), it2.next()));
                        }
                        return pm.M(arrayList3);
                    }
                }
                return ke.a;
            case 1:
                if (intent != null && i == -1) {
                    int[] intArrayExtra2 = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
                    if (intArrayExtra2 != null) {
                        int length = intArrayExtra2.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 < length) {
                                if (intArrayExtra2[i3] == 0) {
                                    z2 = true;
                                } else {
                                    i3++;
                                }
                            }
                        }
                    }
                    return Boolean.valueOf(z2);
                }
                return Boolean.FALSE;
            case 2:
                return new r1(intent, i);
            default:
                return new r1(intent, i);
        }
    }
}
