package defpackage;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: r9  reason: default package */
/* loaded from: classes.dex */
public final class r9 {
    public final HashMap a = new HashMap();
    public final HashMap b;

    public r9(HashMap hashMap) {
        this.b = hashMap;
        for (Map.Entry entry : hashMap.entrySet()) {
            lk lkVar = (lk) entry.getValue();
            List list = (List) this.a.get(lkVar);
            if (list == null) {
                list = new ArrayList();
                this.a.put(lkVar, list);
            }
            list.add((s9) entry.getKey());
        }
    }

    public static void a(List list, sk skVar, lk lkVar, rk rkVar) {
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                s9 s9Var = (s9) list.get(size);
                Method method = s9Var.b;
                try {
                    int i = s9Var.a;
                    if (i != 0) {
                        if (i != 1) {
                            if (i == 2) {
                                method.invoke(rkVar, skVar, lkVar);
                            }
                        } else {
                            method.invoke(rkVar, skVar);
                        }
                    } else {
                        method.invoke(rkVar, null);
                    }
                } catch (IllegalAccessException e) {
                    c2.k(e);
                    return;
                } catch (InvocationTargetException e2) {
                    throw new RuntimeException("Failed to call observer method", e2.getCause());
                }
            }
        }
    }
}
