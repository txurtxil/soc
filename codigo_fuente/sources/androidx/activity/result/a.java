package androidx.activity.result;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes.dex */
public abstract class a {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public ArrayList d = new ArrayList();
    public final transient HashMap e = new HashMap();
    public final HashMap f = new HashMap();
    public final Bundle g = new Bundle();

    public final boolean a(int i, int i2, Intent intent) {
        String str = (String) this.a.get(Integer.valueOf(i));
        if (str == null) {
            return false;
        }
        w1 w1Var = (w1) this.e.get(str);
        if (w1Var != null) {
            s1 s1Var = w1Var.a;
            if (this.d.contains(str)) {
                s1Var.a(w1Var.b.r(intent, i2));
                this.d.remove(str);
                return true;
            }
        }
        this.f.remove(str);
        this.g.putParcelable(str, new r1(intent, i2));
        return true;
    }

    public abstract void b(int i, em emVar, Object obj);

    public final u1 c(final String str, androidx.activity.a aVar, final em emVar, final s1 s1Var) {
        androidx.lifecycle.a aVar2 = aVar.d;
        if (aVar2.c.compareTo(mk.d) < 0) {
            e(str);
            HashMap hashMap = this.c;
            x1 x1Var = (x1) hashMap.get(str);
            if (x1Var == null) {
                x1Var = new x1(aVar2);
            }
            qk qkVar = new qk() { // from class: androidx.activity.result.ActivityResultRegistry$1
                @Override // defpackage.qk
                public final void g(sk skVar, lk lkVar) {
                    boolean equals = lk.ON_START.equals(lkVar);
                    String str2 = str;
                    a aVar3 = a.this;
                    if (equals) {
                        HashMap hashMap2 = aVar3.e;
                        Bundle bundle = aVar3.g;
                        HashMap hashMap3 = aVar3.f;
                        s1 s1Var2 = s1Var;
                        em emVar2 = emVar;
                        hashMap2.put(str2, new w1(s1Var2, emVar2));
                        if (hashMap3.containsKey(str2)) {
                            Object obj = hashMap3.get(str2);
                            hashMap3.remove(str2);
                            s1Var2.a(obj);
                        }
                        r1 r1Var = (r1) bundle.getParcelable(str2);
                        if (r1Var != null) {
                            bundle.remove(str2);
                            s1Var2.a(emVar2.r(r1Var.b, r1Var.a));
                        }
                    } else if (lk.ON_STOP.equals(lkVar)) {
                        aVar3.e.remove(str2);
                    } else if (lk.ON_DESTROY.equals(lkVar)) {
                        aVar3.f(str2);
                    }
                }
            };
            x1Var.a.a(qkVar);
            x1Var.b.add(qkVar);
            hashMap.put(str, x1Var);
            return new u1(this, str, emVar);
        }
        StringBuilder sb = new StringBuilder("LifecycleOwner ");
        sb.append(aVar);
        mk mkVar = aVar2.c;
        sb.append(" is attempting to register while current state is ");
        sb.append(mkVar);
        sb.append(". LifecycleOwners must call register before they are STARTED.");
        throw new IllegalStateException(sb.toString());
    }

    public final v1 d(String str, em emVar, s1 s1Var) {
        e(str);
        this.e.put(str, new w1(s1Var, emVar));
        HashMap hashMap = this.f;
        if (hashMap.containsKey(str)) {
            Object obj = hashMap.get(str);
            hashMap.remove(str);
            s1Var.a(obj);
        }
        Bundle bundle = this.g;
        r1 r1Var = (r1) bundle.getParcelable(str);
        if (r1Var != null) {
            bundle.remove(str);
            s1Var.a(emVar.r(r1Var.b, r1Var.a));
        }
        return new v1(this, str, emVar);
    }

    public final void e(String str) {
        HashMap hashMap = this.b;
        if (((Integer) hashMap.get(str)) != null) {
            return;
        }
        l lVar = xv.a;
        int nextInt = xv.a.a().nextInt(2147418112);
        while (true) {
            int i = nextInt + 65536;
            Integer valueOf = Integer.valueOf(i);
            HashMap hashMap2 = this.a;
            if (hashMap2.containsKey(valueOf)) {
                l lVar2 = xv.a;
                nextInt = xv.a.a().nextInt(2147418112);
            } else {
                hashMap2.put(Integer.valueOf(i), str);
                hashMap.put(str, Integer.valueOf(i));
                return;
            }
        }
    }

    public final void f(String str) {
        Integer num;
        if (!this.d.contains(str) && (num = (Integer) this.b.remove(str)) != null) {
            this.a.remove(num);
        }
        this.e.remove(str);
        HashMap hashMap = this.f;
        if (hashMap.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + hashMap.get(str));
            hashMap.remove(str);
        }
        Bundle bundle = this.g;
        if (bundle.containsKey(str)) {
            Log.w("ActivityResultRegistry", "Dropping pending result for request " + str + ": " + bundle.getParcelable(str));
            bundle.remove(str);
        }
        HashMap hashMap2 = this.c;
        x1 x1Var = (x1) hashMap2.get(str);
        if (x1Var != null) {
            ArrayList arrayList = x1Var.b;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                x1Var.a.b((qk) obj);
            }
            arrayList.clear();
            hashMap2.remove(str);
        }
    }
}
