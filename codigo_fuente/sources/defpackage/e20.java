package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: e20  reason: default package */
/* loaded from: classes.dex */
public abstract class e20 {
    public static final Map a = Collections.synchronizedMap(new HashMap());

    public static void a(d20 d20Var) {
        ArrayList arrayList = new ArrayList();
        Map map = a;
        for (Map.Entry entry : map.entrySet()) {
            if (entry.getValue() == d20Var) {
                arrayList.add((String) entry.getKey());
            }
        }
        int size = arrayList.size();
        int i = 0;
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            map.remove((String) obj);
        }
    }
}
