package defpackage;

import android.app.Activity;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Build;
import androidx.lifecycle.a;
import defpackage.lx;
/* renamed from: jx  reason: default package */
/* loaded from: classes.dex */
public abstract class jx {
    public static void a(Activity activity, lk lkVar) {
        a f;
        lkVar.getClass();
        if ((activity instanceof sk) && (f = ((sk) activity).f()) != null) {
            f.e(lkVar);
        }
    }

    public static void b(Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            lx.a.Companion.getClass();
            activity.registerActivityLifecycleCallbacks(new lx.a());
        }
        FragmentManager fragmentManager = activity.getFragmentManager();
        if (fragmentManager.findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag") == null) {
            fragmentManager.beginTransaction().add(new Fragment(), "androidx.lifecycle.LifecycleDispatcher.report_fragment_tag").commit();
            fragmentManager.executePendingTransactions();
        }
    }
}
