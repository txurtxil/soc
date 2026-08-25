package androidx.emoji2.text;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import androidx.lifecycle.ProcessLifecycleInitializer;
import androidx.lifecycle.a;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes.dex */
public class EmojiCompatInitializer implements bj {
    @Override // defpackage.bj
    public final List a() {
        return Collections.singletonList(ProcessLifecycleInitializer.class);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ef, pd] */
    @Override // defpackage.bj
    public final Object b(Context context) {
        Object obj;
        ?? pdVar = new pd(new c9(context));
        pdVar.a = 1;
        if (td.j == null) {
            synchronized (td.i) {
                try {
                    if (td.j == null) {
                        td.j = new td(pdVar);
                    }
                } finally {
                }
            }
        }
        v5 v = v5.v(context);
        v.getClass();
        synchronized (v5.f) {
            try {
                obj = ((HashMap) v.b).get(ProcessLifecycleInitializer.class);
                if (obj == null) {
                    obj = v.k(ProcessLifecycleInitializer.class, new HashSet());
                }
            } finally {
            }
        }
        final a f = ((sk) obj).f();
        f.a(new ac(this) { // from class: androidx.emoji2.text.EmojiCompatInitializer.1
            @Override // defpackage.ac
            public final void e(sk skVar) {
                Handler handler;
                if (Build.VERSION.SDK_INT >= 28) {
                    handler = oa.a(Looper.getMainLooper());
                } else {
                    handler = new Handler(Looper.getMainLooper());
                }
                handler.postDelayed(new d8(), 500L);
                f.b(this);
            }
        });
        return Boolean.TRUE;
    }
}
