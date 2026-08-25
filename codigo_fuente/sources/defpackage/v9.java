package defpackage;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: v9  reason: default package */
/* loaded from: classes.dex */
public abstract class v9 extends ba {
    public static Object A(List list) {
        list.getClass();
        if (list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    public static ArrayList B(List list, List list2) {
        ArrayList arrayList = new ArrayList(list2.size() + list.size());
        arrayList.addAll(list);
        arrayList.addAll(list2);
        return arrayList;
    }

    public static List C(Iterable iterable) {
        iterable.getClass();
        if ((iterable instanceof Collection) && 4 >= ((Collection) iterable).size()) {
            return D(iterable);
        }
        ArrayList arrayList = new ArrayList(4);
        int i = 0;
        for (Object obj : iterable) {
            arrayList.add(obj);
            i++;
            if (i == 4) {
                break;
            }
        }
        int size = arrayList.size();
        if (size != 0) {
            if (size != 1) {
                return arrayList;
            }
            return qj.o(arrayList.get(0));
        }
        return je.a;
    }

    public static final List D(Iterable iterable) {
        ArrayList arrayList;
        Object next;
        iterable.getClass();
        boolean z = iterable instanceof Collection;
        je jeVar = je.a;
        if (z) {
            Collection collection = (Collection) iterable;
            int size = collection.size();
            if (size != 0) {
                if (size != 1) {
                    return new ArrayList(collection);
                }
                if (iterable instanceof List) {
                    next = ((List) iterable).get(0);
                } else {
                    next = collection.iterator().next();
                }
                return qj.o(next);
            }
            return jeVar;
        }
        if (z) {
            arrayList = new ArrayList((Collection) iterable);
        } else {
            arrayList = new ArrayList();
            for (Object obj : iterable) {
                arrayList.add(obj);
            }
        }
        int size2 = arrayList.size();
        if (size2 != 0) {
            if (size2 != 1) {
                return arrayList;
            }
            return qj.o(arrayList.get(0));
        }
        return jeVar;
    }
}
