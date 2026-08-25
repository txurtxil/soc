package defpackage;
/* renamed from: q60  reason: default package */
/* loaded from: classes.dex */
public abstract class q60 extends p60 {
    public jt[] a;
    public String b;
    public int c;

    public q60(q60 q60Var) {
        this.a = null;
        this.c = 0;
        this.b = q60Var.b;
        this.a = qj.i(q60Var.a);
    }

    public jt[] getPathData() {
        return this.a;
    }

    public String getPathName() {
        return this.b;
    }

    public void setPathData(jt[] jtVarArr) {
        jt[] jtVarArr2 = this.a;
        if (jtVarArr2 != null && jtVarArr != null && jtVarArr2.length == jtVarArr.length) {
            for (int i = 0; i < jtVarArr2.length; i++) {
                jt jtVar = jtVarArr2[i];
                char c = jtVar.a;
                jt jtVar2 = jtVarArr[i];
                if (c == jtVar2.a && jtVar.b.length == jtVar2.b.length) {
                }
            }
            jt[] jtVarArr3 = this.a;
            for (int i2 = 0; i2 < jtVarArr.length; i2++) {
                jtVarArr3[i2].a = jtVarArr[i2].a;
                int i3 = 0;
                while (true) {
                    float[] fArr = jtVarArr[i2].b;
                    if (i3 < fArr.length) {
                        jtVarArr3[i2].b[i3] = fArr[i3];
                        i3++;
                    }
                }
            }
            return;
        }
        this.a = qj.i(jtVarArr);
    }

    public q60() {
        this.a = null;
        this.c = 0;
    }
}
