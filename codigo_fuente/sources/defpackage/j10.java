package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
import java.util.ArrayList;
/* renamed from: j10  reason: default package */
/* loaded from: classes.dex */
public final class j10 {
    public float a;
    public float b;
    public float c;
    public float d;
    public float e;
    public final ArrayList f = new ArrayList();
    public final ArrayList g = new ArrayList();

    public j10() {
        d(0.0f, 270.0f, 0.0f);
    }

    public final void a(float f) {
        float f2 = this.d;
        if (f2 != f) {
            float f3 = ((f - f2) + 360.0f) % 360.0f;
            if (f3 > 180.0f) {
                return;
            }
            float f4 = this.b;
            float f5 = this.c;
            f10 f10Var = new f10(f4, f5, f4, f5);
            f10Var.f = this.d;
            f10Var.g = f3;
            this.g.add(new d10(f10Var));
            this.d = f;
        }
    }

    public final void b(Matrix matrix, Path path) {
        ArrayList arrayList = this.f;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((h10) arrayList.get(i)).a(matrix, path);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [h10, g10, java.lang.Object] */
    public final void c(float f, float f2) {
        ?? h10Var = new h10();
        h10Var.b = f;
        h10Var.c = f2;
        this.f.add(h10Var);
        e10 e10Var = new e10(h10Var, this.b, this.c);
        a(e10Var.b() + 270.0f);
        this.g.add(e10Var);
        this.d = e10Var.b() + 270.0f;
        this.b = f;
        this.c = f2;
    }

    public final void d(float f, float f2, float f3) {
        this.a = f;
        this.b = 0.0f;
        this.c = f;
        this.d = f2;
        this.e = (f2 + f3) % 360.0f;
        this.f.clear();
        this.g.clear();
    }
}
