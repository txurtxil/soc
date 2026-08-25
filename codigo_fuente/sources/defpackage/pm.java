package defpackage;

import androidx.car.app.model.Alert;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
/* renamed from: pm  reason: default package */
/* loaded from: classes.dex */
public abstract class pm extends k60 {
    public static int L(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Alert.DURATION_SHOW_INDEFINITELY;
    }

    public static Map M(ArrayList arrayList) {
        int size = arrayList.size();
        if (size != 0) {
            int i = 0;
            if (size != 1) {
                LinkedHashMap linkedHashMap = new LinkedHashMap(L(arrayList.size()));
                int size2 = arrayList.size();
                while (i < size2) {
                    Object obj = arrayList.get(i);
                    i++;
                    at atVar = (at) obj;
                    linkedHashMap.put(atVar.a, atVar.b);
                }
                return linkedHashMap;
            }
            at atVar2 = (at) arrayList.get(0);
            atVar2.getClass();
            Map singletonMap = Collections.singletonMap(atVar2.a, atVar2.b);
            singletonMap.getClass();
            return singletonMap;
        }
        return ke.a;
    }
}
