package defpackage;

import androidx.car.app.model.Action;
import androidx.car.app.model.CarColor;
import androidx.car.app.model.CarText;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
/* renamed from: l1  reason: default package */
/* loaded from: classes.dex */
public final class l1 {
    public static final l1 l;
    public static final l1 m;
    public static final l1 n;
    public final int a;
    public final int b;
    public final int c;
    public final boolean d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final f9 h;
    public final HashSet i;
    public final HashSet j;
    public final HashSet k;

    static {
        k1 k1Var = new k1();
        k1Var.d = 1;
        k1Var.g = true;
        k1Var.i = false;
        l1 l1Var = new l1(k1Var);
        l = l1Var;
        k1 k1Var2 = new k1();
        k1Var2.d = 2;
        k1Var2.g = true;
        k1Var2.i = true;
        k1Var2.a();
        k1 k1Var3 = new k1();
        k1Var3.k = f9.b;
        k1Var3.d = 2;
        l1 l1Var2 = new l1(k1Var3);
        k1 k1Var4 = new k1(l1Var2);
        f9 f9Var = f9.d;
        k1Var4.k = f9Var;
        k1Var4.f = 2;
        k1Var4.i = true;
        k1Var4.a();
        k1 k1Var5 = new k1(l1Var2);
        k1Var5.k = f9Var;
        k1Var5.f = 2;
        k1Var5.e = 1;
        k1Var5.i = true;
        k1Var5.a();
        k1 k1Var6 = new k1(l1Var2);
        k1Var6.f = 1;
        k1Var6.k = f9.e;
        k1Var6.i = true;
        k1Var6.j = true;
        k1Var6.a();
        k1 k1Var7 = new k1(l1Var2);
        k1Var7.d = 4;
        k1Var7.f = 4;
        k1Var7.e = 1;
        k1Var7.k = f9.f;
        k1Var7.i = true;
        k1Var7.j = true;
        m = new l1(k1Var7);
        k1 k1Var8 = new k1(l1Var2);
        k1Var8.d = 4;
        k1Var8.e = 1;
        k1Var8.i = true;
        k1Var8.j = true;
        n = new l1(k1Var8);
        k1 k1Var9 = new k1();
        k1Var9.d = 2;
        k1Var9.f = 2;
        k1Var9.e = 1;
        k1Var9.c.add(1);
        k1Var9.i = true;
        k1Var9.a();
        k1 k1Var10 = new k1();
        k1Var10.d = 1;
        k1Var10.f = 1;
        k1Var10.c.add(1);
        k1Var10.g = true;
        k1Var10.i = true;
        k1Var10.a();
        k1 k1Var11 = new k1();
        k1Var11.d = 2;
        HashSet hashSet = k1Var11.c;
        hashSet.add(1);
        hashSet.add(Integer.valueOf((int) Action.TYPE_COMPOSE_MESSAGE));
        k1Var11.g = true;
        k1Var11.h = true;
        k1Var11.i = true;
        k1Var11.a();
        k1 k1Var12 = new k1(l1Var);
        k1Var12.a.add(Integer.valueOf((int) Action.TYPE_APP_ICON));
        k1Var12.a();
    }

    public l1(k1 k1Var) {
        int i = k1Var.d;
        this.a = i;
        this.b = k1Var.e;
        this.c = k1Var.f;
        this.h = k1Var.k;
        this.d = k1Var.g;
        this.e = k1Var.h;
        this.f = k1Var.i;
        this.g = k1Var.j;
        HashSet hashSet = new HashSet(k1Var.a);
        this.i = hashSet;
        HashSet hashSet2 = new HashSet(k1Var.c);
        this.k = hashSet2;
        HashSet hashSet3 = k1Var.b;
        HashSet hashSet4 = new HashSet(hashSet3);
        hashSet4.retainAll(hashSet);
        if (hashSet4.isEmpty()) {
            if (!hashSet3.isEmpty() && !hashSet2.isEmpty()) {
                c2.n("Both disallowed and allowed action type set cannot be defined.");
                throw null;
            }
            this.j = new HashSet(hashSet3);
            if (hashSet.size() <= i) {
                return;
            }
            c2.n("Required action types exceeded max allowed actions");
            throw null;
        }
        c2.n("Disallowed action types cannot also be in the required set");
        throw null;
    }

    public final void a(List list) {
        Set<Integer> hashSet;
        HashSet hashSet2 = this.i;
        if (hashSet2.isEmpty()) {
            hashSet = Collections.EMPTY_SET;
        } else {
            hashSet = new HashSet(hashSet2);
        }
        Iterator it = list.iterator();
        int i = this.a;
        int i2 = this.b;
        int i3 = this.c;
        int i4 = i;
        int i5 = i2;
        int i6 = i3;
        while (it.hasNext()) {
            Action action = (Action) it.next();
            HashSet hashSet3 = this.j;
            if (!hashSet3.isEmpty() && hashSet3.contains(Integer.valueOf(action.getType()))) {
                throw new IllegalArgumentException(Action.typeToString(action.getType()) + " is disallowed");
            }
            HashSet hashSet4 = this.k;
            if (!hashSet4.isEmpty() && !hashSet4.contains(Integer.valueOf(action.getType()))) {
                throw new IllegalArgumentException(Action.typeToString(action.getType()) + " is not allowed");
            }
            hashSet.remove(Integer.valueOf(action.getType()));
            CarText title = action.getTitle();
            if (title != null && !title.isEmpty()) {
                i6--;
                if (i6 >= 0) {
                    this.h.b(title);
                } else {
                    c2.h("Action list exceeded max number of ", i3, " actions with custom titles");
                    return;
                }
            }
            i4--;
            if (i4 >= 0) {
                if ((action.getFlags() & 1) != 0 && i5 - 1 < 0) {
                    c2.h("Action list exceeded max number of ", i2, " primary actions");
                    return;
                } else if (this.d && action.getIcon() == null && !action.isStandard()) {
                    c2.n("Non-standard actions without an icon are disallowed");
                    return;
                } else {
                    boolean z = this.e;
                    if (z && ((action.getBackgroundColor() == null || CarColor.DEFAULT.equals(action.getBackgroundColor())) && !action.isStandard())) {
                        c2.n("Non-standard actions without a background color are disallowed");
                        return;
                    } else if (!z && !CarColor.DEFAULT.equals(action.getBackgroundColor()) && this.g && (action.getFlags() & 1) == 0) {
                        c2.n("Background color can only be set for primary actions");
                        return;
                    } else if (!this.f && action.getOnClickDelegate() != null && !action.isStandard()) {
                        c2.n("Setting a click listener for a custom action is disallowed");
                        return;
                    }
                }
            } else {
                c2.h("Action list exceeded max number of ", i, " actions");
                return;
            }
        }
        if (!hashSet.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (Integer num : hashSet) {
                sb.append(Action.typeToString(num.intValue()));
                sb.append(",");
            }
            c2.m(sb, "Missing required action types: ");
        }
    }
}
