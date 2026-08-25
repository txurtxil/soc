package defpackage;

import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.activity.result.a;
import java.util.Arrays;
import java.util.HashSet;
/* renamed from: ga  reason: default package */
/* loaded from: classes.dex */
public final class ga extends a {
    public final /* synthetic */ androidx.activity.a h;

    public ga(androidx.activity.a aVar) {
        this.h = aVar;
    }

    @Override // androidx.activity.result.a
    public final void b(int i, em emVar, Object obj) {
        Bundle bundle;
        int i2;
        String[] strArr;
        androidx.activity.a aVar = this.h;
        c9 m = emVar.m(aVar, obj);
        if (m != null) {
            new Handler(Looper.getMainLooper()).post(new c5(this, i, m, 1));
            return;
        }
        Intent i3 = emVar.i(aVar, obj);
        if (i3.getExtras() != null && i3.getExtras().getClassLoader() == null) {
            i3.setExtrasClassLoader(aVar.getClassLoader());
        }
        if (i3.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
            bundle = i3.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
            i3.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
        } else {
            bundle = null;
        }
        Bundle bundle2 = bundle;
        if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(i3.getAction())) {
            String[] stringArrayExtra = i3.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
            if (stringArrayExtra == null) {
                stringArrayExtra = new String[0];
            }
            HashSet hashSet = new HashSet();
            for (int i4 = 0; i4 < stringArrayExtra.length; i4++) {
                if (!TextUtils.isEmpty(stringArrayExtra[i4])) {
                    if (!t7.a() && TextUtils.equals(stringArrayExtra[i4], "android.permission.POST_NOTIFICATIONS")) {
                        hashSet.add(Integer.valueOf(i4));
                    }
                } else {
                    throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(stringArrayExtra) + " must not contain null or empty values");
                }
            }
            int size = hashSet.size();
            if (size > 0) {
                strArr = new String[stringArrayExtra.length - size];
            } else {
                strArr = stringArrayExtra;
            }
            if (size > 0) {
                if (size == stringArrayExtra.length) {
                    return;
                }
                int i5 = 0;
                for (int i6 = 0; i6 < stringArrayExtra.length; i6++) {
                    if (!hashSet.contains(Integer.valueOf(i6))) {
                        strArr[i5] = stringArrayExtra[i6];
                        i5++;
                    }
                }
            }
            if (aVar instanceof z2) {
                z2 z2Var = (z2) aVar;
            }
            o1.b(aVar, stringArrayExtra, i);
        } else if ("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(i3.getAction())) {
            pj pjVar = (pj) i3.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                i2 = i;
            } catch (IntentSender.SendIntentException e) {
                e = e;
                i2 = i;
            }
            try {
                n1.c(aVar, pjVar.a, i2, pjVar.b, pjVar.c, pjVar.d, 0, bundle2);
            } catch (IntentSender.SendIntentException e2) {
                e = e2;
                new Handler(Looper.getMainLooper()).post(new c5(this, i2, e, 2));
            }
        } else {
            n1.b(aVar, i3, i, bundle2);
        }
    }
}
