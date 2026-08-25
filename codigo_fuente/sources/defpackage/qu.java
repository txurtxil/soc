package defpackage;

import android.content.Intent;
import android.os.IBinder;
import idv.lzn.screenonauto.privileged.PrivilegedManager;
import java.io.Serializable;
/* renamed from: qu  reason: default package */
/* loaded from: classes.dex */
public final /* synthetic */ class qu implements Runnable {
    public final /* synthetic */ int a = 0;
    public final /* synthetic */ int b;
    public final /* synthetic */ Object c;
    public final /* synthetic */ Serializable d;
    public final /* synthetic */ Object e;

    public /* synthetic */ qu(ax axVar, int i, PrivilegedManager.Kind kind, ch chVar) {
        this.c = axVar;
        this.b = i;
        this.d = kind;
        this.e = chVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        Object obj = this.e;
        int i2 = this.b;
        Serializable serializable = this.d;
        Object obj2 = this.c;
        switch (i) {
            case 0:
                PrivilegedManager.connect$lambda$9((ax) obj2, i2, (PrivilegedManager.Kind) serializable, (ch) obj);
                return;
            default:
                try {
                    ((IBinder[]) serializable)[0] = ((yy) obj2).g((Intent) obj, i2);
                    return;
                } catch (Exception e) {
                    k60.o("IPC", e);
                    return;
                }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ qu(yy yyVar, IBinder[] iBinderArr, int i, Intent intent) {
        this.c = yyVar;
        this.d = iBinderArr;
        this.b = i;
        this.e = intent;
    }
}
