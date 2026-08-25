package androidx.savedstate;

import android.os.Bundle;
import androidx.lifecycle.SavedStateHandleController;
import androidx.lifecycle.a;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
/* loaded from: classes.dex */
public final class Recreator implements qk {
    public final vz a;

    public Recreator(vz vzVar) {
        this.a = vzVar;
    }

    @Override // defpackage.qk
    public final void g(sk skVar, lk lkVar) {
        Object obj;
        boolean z;
        if (lkVar == lk.ON_CREATE) {
            skVar.f().b(this);
            Bundle c = this.a.a().c("androidx.savedstate.Restarter");
            if (c != null) {
                ArrayList<String> stringArrayList = c.getStringArrayList("classes_to_restore");
                if (stringArrayList != null) {
                    int size = stringArrayList.size();
                    int i = 0;
                    while (i < size) {
                        String str = stringArrayList.get(i);
                        i++;
                        String str2 = str;
                        try {
                            Class<? extends U> asSubclass = Class.forName(str2, false, Recreator.class.getClassLoader()).asSubclass(tz.class);
                            asSubclass.getClass();
                            try {
                                Constructor declaredConstructor = asSubclass.getDeclaredConstructor(null);
                                declaredConstructor.setAccessible(true);
                                try {
                                    Object newInstance = declaredConstructor.newInstance(null);
                                    newInstance.getClass();
                                    tz tzVar = (tz) newInstance;
                                    vz vzVar = this.a;
                                    if (vzVar instanceof c80) {
                                        b80 e = ((c80) vzVar).e();
                                        f3 a = vzVar.a();
                                        e.getClass();
                                        Iterator it = new HashSet(e.a.keySet()).iterator();
                                        while (it.hasNext()) {
                                            String str3 = (String) it.next();
                                            str3.getClass();
                                            z70 z70Var = (z70) e.a.get(str3);
                                            z70Var.getClass();
                                            a f = vzVar.f();
                                            a.getClass();
                                            f.getClass();
                                            HashMap hashMap = z70Var.a;
                                            if (hashMap == null) {
                                                obj = null;
                                            } else {
                                                synchronized (hashMap) {
                                                    obj = z70Var.a.get("androidx.lifecycle.savedstate.vm.tag");
                                                }
                                            }
                                            SavedStateHandleController savedStateHandleController = (SavedStateHandleController) obj;
                                            if (savedStateHandleController != null && !(z = savedStateHandleController.a)) {
                                                if (z) {
                                                    c2.g("Already attached to lifecycleOwner");
                                                    return;
                                                }
                                                savedStateHandleController.a = true;
                                                f.a(savedStateHandleController);
                                                throw null;
                                            }
                                        }
                                        if (!new HashSet(e.a.keySet()).isEmpty()) {
                                            if (a.e) {
                                                x2 x2Var = (x2) a.b;
                                                if (x2Var == null) {
                                                    x2Var = new x2(a);
                                                }
                                                a.b = x2Var;
                                                try {
                                                    ik.class.getDeclaredConstructor(null);
                                                    x2 x2Var2 = (x2) a.b;
                                                    if (x2Var2 != null) {
                                                        ((LinkedHashSet) x2Var2.b).add(ik.class.getName());
                                                    }
                                                } catch (NoSuchMethodException e2) {
                                                    throw new IllegalArgumentException("Class " + ik.class.getSimpleName() + " must have default constructor in order to be automatically recreated", e2);
                                                }
                                            } else {
                                                c2.g("Can not perform this action after onSaveInstanceState");
                                                return;
                                            }
                                        }
                                    } else {
                                        c2.g("Internal error: OnRecreation should be registered only on components that implement ViewModelStoreOwner");
                                        return;
                                    }
                                } catch (Exception e3) {
                                    throw new RuntimeException("Failed to instantiate " + str2, e3);
                                }
                            } catch (NoSuchMethodException e4) {
                                throw new IllegalStateException("Class " + asSubclass.getSimpleName() + " must have default constructor in order to be automatically recreated", e4);
                            }
                        } catch (ClassNotFoundException e5) {
                            throw new RuntimeException(t20.f("Class ", str2, " wasn't found"), e5);
                        }
                    }
                    return;
                }
                c2.g("Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\"");
                return;
            }
            return;
        }
        throw new AssertionError("Next event must be ON_CREATE");
    }
}
