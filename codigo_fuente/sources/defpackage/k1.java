package defpackage;

import androidx.car.app.model.Alert;
import java.util.HashSet;
/* renamed from: k1  reason: default package */
/* loaded from: classes.dex */
public final class k1 {
    public final HashSet a;
    public final HashSet b;
    public final HashSet c;
    public int d;
    public int e;
    public int f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public f9 k;

    public k1(l1 l1Var) {
        HashSet hashSet = new HashSet();
        this.a = hashSet;
        HashSet hashSet2 = new HashSet();
        this.b = hashSet2;
        HashSet hashSet3 = new HashSet();
        this.c = hashSet3;
        this.d = Alert.DURATION_SHOW_INDEFINITELY;
        this.e = 0;
        this.j = false;
        f9 f9Var = f9.b;
        this.d = l1Var.a;
        this.e = l1Var.b;
        this.f = l1Var.c;
        this.k = l1Var.h;
        hashSet.addAll(l1Var.i);
        hashSet2.addAll(l1Var.j);
        hashSet3.addAll(l1Var.k);
        this.g = l1Var.d;
        this.h = l1Var.e;
        this.i = l1Var.f;
        this.j = l1Var.g;
    }

    public final void a() {
        new l1(this);
    }

    public k1() {
        this.a = new HashSet();
        this.b = new HashSet();
        this.c = new HashSet();
        this.d = Alert.DURATION_SHOW_INDEFINITELY;
        this.e = 0;
        this.j = false;
        this.k = f9.c;
    }
}
