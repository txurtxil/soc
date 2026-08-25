package defpackage;

import android.content.Context;
import java.util.concurrent.Callable;
/* renamed from: ff  reason: default package */
/* loaded from: classes.dex */
public final class ff implements Callable {
    public final /* synthetic */ int a;
    public final /* synthetic */ String b;
    public final /* synthetic */ Context c;
    public final /* synthetic */ cf d;
    public final /* synthetic */ int e;

    public /* synthetic */ ff(String str, Context context, cf cfVar, int i, int i2) {
        this.a = i2;
        this.b = str;
        this.c = context;
        this.d = cfVar;
        this.e = i;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        int i = this.a;
        int i2 = this.e;
        cf cfVar = this.d;
        Context context = this.c;
        String str = this.b;
        switch (i) {
            case 0:
                return jf.a(str, context, cfVar, i2);
            default:
                try {
                    return jf.a(str, context, cfVar, i2);
                } catch (Throwable unused) {
                    return new hf(-3);
                }
        }
    }
}
