package androidx.lifecycle;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes.dex */
public final class ProcessLifecycleInitializer implements bj {
    @Override // defpackage.bj
    public final List a() {
        return je.a;
    }

    @Override // defpackage.bj
    public final Object b(Context context) {
        context.getClass();
        v5 v = v5.v(context);
        v.getClass();
        if (((HashSet) v.c).contains(ProcessLifecycleInitializer.class)) {
            if (!pk.a.getAndSet(true)) {
                Context applicationContext = context.getApplicationContext();
                applicationContext.getClass();
                ((Application) applicationContext).registerActivityLifecycleCallbacks(new ok());
            }
            bv bvVar = bv.i;
            bvVar.getClass();
            bvVar.e = new Handler();
            bvVar.f.e(lk.ON_CREATE);
            Context applicationContext2 = context.getApplicationContext();
            applicationContext2.getClass();
            ((Application) applicationContext2).registerActivityLifecycleCallbacks(new av(bvVar));
            return bvVar;
        }
        c2.g("ProcessLifecycleInitializer cannot be initialized lazily.\n               Please ensure that you have:\n               <meta-data\n                   android:name='androidx.lifecycle.ProcessLifecycleInitializer'\n                   android:value='androidx.startup' />\n               under InitializationProvider in your AndroidManifest.xml");
        return null;
    }
}
