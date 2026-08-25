package defpackage;

import android.os.Bundle;
import android.os.Messenger;
import android.util.Log;
/* renamed from: un  reason: default package */
/* loaded from: classes.dex */
public final class un implements Runnable {
    public final /* synthetic */ int a = 1;
    public final /* synthetic */ c9 b;
    public final /* synthetic */ String c;
    public final /* synthetic */ gy d;
    public final /* synthetic */ c9 e;

    public un(c9 c9Var, c9 c9Var2, String str, gy gyVar) {
        this.e = c9Var;
        this.b = c9Var2;
        this.c = str;
        this.d = gyVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.a;
        gy gyVar = this.d;
        c9 c9Var = this.e;
        c9 c9Var2 = this.b;
        String str = this.c;
        switch (i) {
            case 0:
                if (((kn) ((vn) c9Var.b).d.getOrDefault(((Messenger) c9Var2.b).getBinder(), null)) == null) {
                    Log.w("MBServiceCompat", "getMediaItem for callback that isn't registered id=" + str);
                    return;
                } else if (true & true) {
                    gyVar.b(-1, null);
                    return;
                } else {
                    Bundle bundle = new Bundle();
                    bundle.putParcelable("media_item", null);
                    gyVar.b(0, bundle);
                    return;
                }
            default:
                if (((kn) ((vn) c9Var.b).d.getOrDefault(((Messenger) c9Var2.b).getBinder(), null)) == null) {
                    Log.w("MBServiceCompat", "search for callback that isn't registered query=" + str);
                    return;
                }
                in inVar = new in(str, 0, gyVar);
                inVar.c = 4;
                inVar.b(null);
                if (!inVar.b) {
                    c2.p(str, "onSearch must call detach() or sendResult() before returning for query=");
                    return;
                }
                return;
        }
    }

    public un(c9 c9Var, c9 c9Var2, String str, Bundle bundle, gy gyVar) {
        this.e = c9Var;
        this.b = c9Var2;
        this.c = str;
        this.d = gyVar;
    }
}
