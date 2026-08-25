package defpackage;

import android.graphics.Matrix;
import android.graphics.Paint;
import java.util.ArrayList;
/* renamed from: o60  reason: default package */
/* loaded from: classes.dex */
public final class o60 extends p60 {
    public final Matrix a;
    public final ArrayList b;
    public float c;
    public float d;
    public float e;
    public float f;
    public float g;
    public float h;
    public float i;
    public final Matrix j;
    public String k;

    /* JADX WARN: Type inference failed for: r5v5, types: [n60, q60] */
    public o60(o60 o60Var, u6 u6Var) {
        q60 q60Var;
        this.a = new Matrix();
        this.b = new ArrayList();
        this.c = 0.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 1.0f;
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        Matrix matrix = new Matrix();
        this.j = matrix;
        this.k = null;
        this.c = o60Var.c;
        this.d = o60Var.d;
        this.e = o60Var.e;
        this.f = o60Var.f;
        this.g = o60Var.g;
        this.h = o60Var.h;
        this.i = o60Var.i;
        String str = o60Var.k;
        this.k = str;
        if (str != null) {
            u6Var.put(str, this);
        }
        matrix.set(o60Var.j);
        ArrayList arrayList = o60Var.b;
        for (int i = 0; i < arrayList.size(); i++) {
            Object obj = arrayList.get(i);
            if (obj instanceof o60) {
                this.b.add(new o60((o60) obj, u6Var));
            } else {
                if (obj instanceof n60) {
                    n60 n60Var = (n60) obj;
                    ?? q60Var2 = new q60(n60Var);
                    q60Var2.e = 0.0f;
                    q60Var2.g = 1.0f;
                    q60Var2.h = 1.0f;
                    q60Var2.i = 0.0f;
                    q60Var2.j = 1.0f;
                    q60Var2.k = 0.0f;
                    q60Var2.l = Paint.Cap.BUTT;
                    q60Var2.m = Paint.Join.MITER;
                    q60Var2.n = 4.0f;
                    q60Var2.d = n60Var.d;
                    q60Var2.e = n60Var.e;
                    q60Var2.g = n60Var.g;
                    q60Var2.f = n60Var.f;
                    q60Var2.c = n60Var.c;
                    q60Var2.h = n60Var.h;
                    q60Var2.i = n60Var.i;
                    q60Var2.j = n60Var.j;
                    q60Var2.k = n60Var.k;
                    q60Var2.l = n60Var.l;
                    q60Var2.m = n60Var.m;
                    q60Var2.n = n60Var.n;
                    q60Var = q60Var2;
                } else if (obj instanceof m60) {
                    q60Var = new q60((m60) obj);
                } else {
                    c2.g("Unknown object in the tree!");
                    throw null;
                }
                this.b.add(q60Var);
                Object obj2 = q60Var.b;
                if (obj2 != null) {
                    u6Var.put(obj2, q60Var);
                }
            }
        }
    }

    @Override // defpackage.p60
    public final boolean a() {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i >= arrayList.size()) {
                return false;
            }
            if (((p60) arrayList.get(i)).a()) {
                return true;
            }
            i++;
        }
    }

    @Override // defpackage.p60
    public final boolean b(int[] iArr) {
        int i = 0;
        boolean z = false;
        while (true) {
            ArrayList arrayList = this.b;
            if (i < arrayList.size()) {
                z |= ((p60) arrayList.get(i)).b(iArr);
                i++;
            } else {
                return z;
            }
        }
    }

    public final void c() {
        Matrix matrix = this.j;
        matrix.reset();
        matrix.postTranslate(-this.d, -this.e);
        matrix.postScale(this.f, this.g);
        matrix.postRotate(this.c, 0.0f, 0.0f);
        matrix.postTranslate(this.h + this.d, this.i + this.e);
    }

    public String getGroupName() {
        return this.k;
    }

    public Matrix getLocalMatrix() {
        return this.j;
    }

    public float getPivotX() {
        return this.d;
    }

    public float getPivotY() {
        return this.e;
    }

    public float getRotation() {
        return this.c;
    }

    public float getScaleX() {
        return this.f;
    }

    public float getScaleY() {
        return this.g;
    }

    public float getTranslateX() {
        return this.h;
    }

    public float getTranslateY() {
        return this.i;
    }

    public void setPivotX(float f) {
        if (f != this.d) {
            this.d = f;
            c();
        }
    }

    public void setPivotY(float f) {
        if (f != this.e) {
            this.e = f;
            c();
        }
    }

    public void setRotation(float f) {
        if (f != this.c) {
            this.c = f;
            c();
        }
    }

    public void setScaleX(float f) {
        if (f != this.f) {
            this.f = f;
            c();
        }
    }

    public void setScaleY(float f) {
        if (f != this.g) {
            this.g = f;
            c();
        }
    }

    public void setTranslateX(float f) {
        if (f != this.h) {
            this.h = f;
            c();
        }
    }

    public void setTranslateY(float f) {
        if (f != this.i) {
            this.i = f;
            c();
        }
    }

    public o60() {
        this.a = new Matrix();
        this.b = new ArrayList();
        this.c = 0.0f;
        this.d = 0.0f;
        this.e = 0.0f;
        this.f = 1.0f;
        this.g = 1.0f;
        this.h = 0.0f;
        this.i = 0.0f;
        this.j = new Matrix();
        this.k = null;
    }
}
