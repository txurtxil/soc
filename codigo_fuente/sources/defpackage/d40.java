package defpackage;

import android.os.Build;
import android.view.View;
import java.nio.ByteBuffer;
/* renamed from: d40  reason: default package */
/* loaded from: classes.dex */
public abstract class d40 {
    public int a;
    public int b;
    public int c;
    public Object d;

    /* JADX WARN: Type inference failed for: r0v2, types: [j60, java.lang.Object] */
    public d40() {
        if (j60.a == null) {
            j60.a = new Object();
        }
    }

    public int a(int i) {
        if (i < this.c) {
            return ((ByteBuffer) this.d).getShort(this.b + i);
        }
        return 0;
    }

    public abstract Object b(View view);

    public abstract void c(View view, Object obj);

    public void d(View view, Object obj) {
        Object tag;
        if (Build.VERSION.SDK_INT >= this.b) {
            c(view, obj);
            return;
        }
        w wVar = null;
        if (Build.VERSION.SDK_INT >= this.b) {
            tag = b(view);
        } else {
            tag = view.getTag(this.a);
            if (!((Class) this.d).isInstance(tag)) {
                tag = null;
            }
        }
        if (e(tag, obj)) {
            View.AccessibilityDelegate c = u70.c(view);
            if (c != null) {
                if (c instanceof u) {
                    wVar = ((u) c).a;
                } else {
                    wVar = new w(c);
                }
            }
            if (wVar == null) {
                wVar = new w();
            }
            u70.h(view, wVar);
            view.setTag(this.a, obj);
            u70.e(view, this.c);
        }
    }

    public abstract boolean e(Object obj, Object obj2);
}
