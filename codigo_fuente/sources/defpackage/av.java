package defpackage;

import android.app.Activity;
import android.app.Fragment;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
/* renamed from: av  reason: default package */
/* loaded from: classes.dex */
public final class av extends he {
    final /* synthetic */ bv this$0;

    /* renamed from: av$a */
    /* loaded from: classes.dex */
    public static final class a extends he {
        final /* synthetic */ bv this$0;

        public a(bv bvVar) {
            this.this$0 = bvVar;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostResumed(Activity activity) {
            activity.getClass();
            this.this$0.b();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPostStarted(Activity activity) {
            activity.getClass();
            bv bvVar = this.this$0;
            int i = bvVar.a + 1;
            bvVar.a = i;
            if (i == 1 && bvVar.d) {
                bvVar.f.e(lk.ON_START);
                bvVar.d = false;
            }
        }
    }

    public av(bv bvVar) {
        this.this$0 = bvVar;
    }

    @Override // defpackage.he, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        if (Build.VERSION.SDK_INT < 29) {
            int i = lx.b;
            Fragment findFragmentByTag = activity.getFragmentManager().findFragmentByTag("androidx.lifecycle.LifecycleDispatcher.report_fragment_tag");
            findFragmentByTag.getClass();
            ((lx) findFragmentByTag).a = this.this$0.h;
        }
    }

    @Override // defpackage.he, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        activity.getClass();
        bv bvVar = this.this$0;
        int i = bvVar.b - 1;
        bvVar.b = i;
        if (i == 0) {
            Handler handler = bvVar.e;
            handler.getClass();
            handler.postDelayed(bvVar.g, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreCreated(Activity activity, Bundle bundle) {
        activity.getClass();
        zu.a(activity, new a(this.this$0));
    }

    @Override // defpackage.he, android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        activity.getClass();
        bv bvVar = this.this$0;
        int i = bvVar.a - 1;
        bvVar.a = i;
        if (i == 0 && bvVar.c) {
            bvVar.f.e(lk.ON_STOP);
            bvVar.d = true;
        }
    }
}
