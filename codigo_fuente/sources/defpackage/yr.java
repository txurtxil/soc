package defpackage;

import androidx.activity.a;
import androidx.activity.b;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.ListIterator;
/* renamed from: yr  reason: default package */
/* loaded from: classes.dex */
public final class yr extends bk implements rg {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ yr(int i, Object obj) {
        super(0);
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.rg
    public final Object a() {
        Object obj;
        int i = this.a;
        rz rzVar = null;
        f60 f60Var = f60.a;
        Object obj2 = this.b;
        switch (i) {
            case 0:
                ((b) obj2).b();
                return f60Var;
            case 1:
                b bVar = (b) obj2;
                s6 s6Var = bVar.b;
                ListIterator listIterator = s6Var.listIterator(s6Var.c);
                while (true) {
                    if (listIterator.hasPrevious()) {
                        obj = listIterator.previous();
                        if (((bg) obj).a) {
                        }
                    } else {
                        obj = null;
                    }
                }
                bg bgVar = (bg) obj;
                bVar.c = null;
                return f60Var;
            case 2:
                ((b) obj2).b();
                return f60Var;
            default:
                a aVar = (a) obj2;
                ArrayList arrayList = new ArrayList();
                bx.a.getClass();
                arrayList.add(new a80(rz.class));
                a80[] a80VarArr = (a80[]) arrayList.toArray(new a80[0]);
                a80[] a80VarArr2 = (a80[]) Arrays.copyOf(a80VarArr, a80VarArr.length);
                b80 e = aVar.e();
                ib c = aVar.c();
                e.getClass();
                c.getClass();
                LinkedHashMap linkedHashMap = e.a;
                z70 z70Var = (z70) linkedHashMap.get("androidx.lifecycle.internal.SavedStateHandlesVM");
                if (rz.class.isInstance(z70Var)) {
                    z70Var.getClass();
                } else {
                    LinkedHashMap linkedHashMap2 = new LinkedHashMap();
                    linkedHashMap2.putAll((LinkedHashMap) c.a);
                    linkedHashMap2.put(hd.d, "androidx.lifecycle.internal.SavedStateHandlesVM");
                    try {
                        for (a80 a80Var : a80VarArr2) {
                            if (a80Var.a.equals(rz.class)) {
                                rzVar = new rz();
                            }
                        }
                        if (rzVar != null) {
                            z70 z70Var2 = (z70) linkedHashMap.put("androidx.lifecycle.internal.SavedStateHandlesVM", rzVar);
                            if (z70Var2 != null) {
                                z70Var2.a();
                            }
                            z70Var = rzVar;
                        } else {
                            throw new IllegalArgumentException("No initializer set for given class ".concat(rz.class.getName()));
                        }
                    } catch (AbstractMethodError unused) {
                        throw new UnsupportedOperationException("Factory.create(String) is unsupported.  This Factory requires `CreationExtras` to be passed into `create` method.");
                    }
                }
                return (rz) z70Var;
        }
    }
}
