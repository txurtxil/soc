package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
/* renamed from: b80  reason: default package */
/* loaded from: classes.dex */
public final class b80 {
    public final LinkedHashMap a = new LinkedHashMap();

    public final void a() {
        for (z70 z70Var : this.a.values()) {
            HashMap hashMap = z70Var.a;
            if (hashMap != null) {
                synchronized (hashMap) {
                    try {
                        for (Object obj : z70Var.a.values()) {
                            if (obj instanceof Closeable) {
                                try {
                                    ((Closeable) obj).close();
                                } catch (IOException e) {
                                    throw new RuntimeException(e);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
            LinkedHashSet linkedHashSet = z70Var.b;
            if (linkedHashSet != null) {
                synchronized (linkedHashSet) {
                    try {
                        for (Closeable closeable : z70Var.b) {
                            if (closeable != null) {
                                try {
                                    closeable.close();
                                } catch (IOException e2) {
                                    throw new RuntimeException(e2);
                                }
                            }
                        }
                    } finally {
                    }
                }
            }
            z70Var.a();
        }
        this.a.clear();
    }
}
