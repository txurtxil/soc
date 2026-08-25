package defpackage;
/* renamed from: g50  reason: default package */
/* loaded from: classes.dex */
public final class g50 extends s8 {
    public final /* synthetic */ int j;
    public boolean k;
    public int l;
    public final /* synthetic */ Object m;

    public g50(i80 i80Var) {
        this.j = 1;
        this.m = i80Var;
        this.k = false;
        this.l = 0;
    }

    @Override // defpackage.j80
    public final void b() {
        int i = this.j;
        Object obj = this.m;
        switch (i) {
            case 0:
                if (!this.k) {
                    ((h50) obj).a.setVisibility(this.l);
                    return;
                }
                return;
            default:
                int i2 = this.l + 1;
                this.l = i2;
                i80 i80Var = (i80) obj;
                if (i2 == i80Var.a.size()) {
                    j80 j80Var = i80Var.d;
                    if (j80Var != null) {
                        j80Var.b();
                    }
                    this.l = 0;
                    this.k = false;
                    i80Var.e = false;
                    return;
                }
                return;
        }
    }

    @Override // defpackage.s8, defpackage.j80
    public void c() {
        switch (this.j) {
            case 0:
                this.k = true;
                return;
            default:
                return;
        }
    }

    @Override // defpackage.s8, defpackage.j80
    public final void g() {
        int i = this.j;
        Object obj = this.m;
        switch (i) {
            case 0:
                ((h50) obj).a.setVisibility(0);
                return;
            default:
                if (!this.k) {
                    this.k = true;
                    j80 j80Var = ((i80) obj).d;
                    if (j80Var != null) {
                        j80Var.g();
                        return;
                    }
                    return;
                }
                return;
        }
    }

    public g50(h50 h50Var, int i) {
        this.j = 0;
        this.m = h50Var;
        this.l = i;
        this.k = false;
    }
}
