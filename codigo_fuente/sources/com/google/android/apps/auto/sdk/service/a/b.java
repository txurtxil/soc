package com.google.android.apps.auto.sdk.service.a;

import android.util.ArrayMap;
import android.util.SparseArray;
import com.google.android.gms.car.CarMessageManager;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public final class b implements CarMessageManager.CarMessageListener {
    private SparseArray<List<n90>> a = new SparseArray<>();
    private Map<Integer, o90> b = new ArrayMap();
    private a c;

    public b(a aVar) {
        this.c = aVar;
    }

    public final Set<Integer> a(o90 o90Var) {
        HashSet hashSet;
        synchronized (this) {
            hashSet = new HashSet();
            Iterator it = new HashSet(this.b.keySet()).iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                if (b(num.intValue(), o90Var)) {
                    hashSet.add(num);
                }
            }
        }
        return hashSet;
    }

    public final void b(int i, n90 n90Var) {
        synchronized (this) {
            try {
                List<n90> list = this.a.get(i);
                if (list == null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(n90Var);
                    this.a.put(i, arrayList);
                } else if (!list.contains(n90Var)) {
                    list.add(n90Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.car.CarMessageManager.CarMessageListener
    public final void onIntegerMessage(int i, int i2, int i3) {
        synchronized (this) {
            try {
                List<n90> list = this.a.get(i);
                if (list != null && !list.isEmpty()) {
                    a.a(i);
                    Iterator<n90> it = list.iterator();
                    if (it.hasNext()) {
                        if (it.next() != null) {
                            throw new ClassCastException();
                        }
                        throw null;
                    }
                }
            } finally {
            }
        }
    }

    @Override // com.google.android.gms.car.CarMessageManager.CarMessageListener
    public final void onOwnershipLost(int i) {
        synchronized (this) {
            a(i);
        }
    }

    public final o90 a(int i) {
        synchronized (this) {
            if (this.b.get(Integer.valueOf(i)) != null) {
                throw new ClassCastException();
            }
        }
        return null;
    }

    public final boolean b(int i, o90 o90Var) {
        boolean z;
        synchronized (this) {
            if (this.b.get(Integer.valueOf(i)) != null) {
                throw new ClassCastException();
            }
            if (o90Var == null) {
                this.b.remove(Integer.valueOf(i));
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final void a(int i, n90 n90Var) {
        synchronized (this) {
            List<n90> list = this.a.get(i);
            if (list != null) {
                list.remove(n90Var);
            }
        }
    }

    public final void a(int i, o90 o90Var) {
        synchronized (this) {
            this.b.put(Integer.valueOf(i), o90Var);
        }
    }

    public final void a(n90 n90Var) {
        synchronized (this) {
            a(1, n90Var);
            a(0, n90Var);
        }
    }

    public final boolean a(o90 o90Var, int i) {
        boolean z;
        synchronized (this) {
            a(i);
            z = o90Var == null;
        }
        return z;
    }
}
