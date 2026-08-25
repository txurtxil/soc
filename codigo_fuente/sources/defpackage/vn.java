package defpackage;

import android.app.Service;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.util.Log;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: vn  reason: default package */
/* loaded from: classes.dex */
public abstract class vn extends Service {
    public static final boolean g = Log.isLoggable("MBServiceCompat", 3);
    public cf a;
    public final c9 b = new c9(20, this);
    public final ArrayList c;
    public final u6 d;
    public final db0 e;
    public MediaSessionCompat$Token f;

    /* JADX WARN: Type inference failed for: r8v2, types: [u6, j20] */
    public vn() {
        new kn(this, "android.media.session.MediaController", -1, -1, null);
        this.c = new ArrayList();
        this.d = new j20();
        db0 db0Var = new db0(2);
        db0Var.b = this;
        this.e = db0Var;
    }

    public static List a(List list, Bundle bundle) {
        if (list == null) {
            return null;
        }
        int i = bundle.getInt("android.media.browse.extra.PAGE", -1);
        int i2 = bundle.getInt("android.media.browse.extra.PAGE_SIZE", -1);
        if (i == -1 && i2 == -1) {
            return list;
        }
        int i3 = i2 * i;
        int i4 = i3 + i2;
        if (i >= 0 && i2 >= 1 && i3 < list.size()) {
            if (i4 > list.size()) {
                i4 = list.size();
            }
            return list.subList(i3, i4);
        }
        return Collections.EMPTY_LIST;
    }

    public final void b() {
        cf cfVar = this.a;
        ((ln) cfVar.c).notifyChildrenChanged("root");
        ((vn) cfVar.e).e.post(new c7(10, cfVar));
    }

    public abstract void c(String str, qn qnVar);

    public final void d(String str, kn knVar, Bundle bundle) {
        hn hnVar = new hn(this, str, knVar, str, bundle);
        if (bundle == null) {
            c(str, hnVar);
        } else {
            hnVar.c = 1;
            c(str, hnVar);
        }
        if (hnVar.b) {
            return;
        }
        String str2 = knVar.a;
        throw new IllegalStateException("onLoadChildren must call detach() or sendResult() before returning for package=" + str2 + " id=" + str);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return ((ln) this.a.c).onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.a = new on(this);
        } else if (i >= 26) {
            this.a = new on(this);
        } else {
            this.a = new cf(this);
        }
        this.a.b();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.e.b = null;
    }

    @Override // android.app.Service
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }
}
