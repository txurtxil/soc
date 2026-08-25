package defpackage;

import android.graphics.Matrix;
import android.graphics.Path;
/* renamed from: g10  reason: default package */
/* loaded from: classes.dex */
public final class g10 extends h10 {
    public float b;
    public float c;

    @Override // defpackage.h10
    public final void a(Matrix matrix, Path path) {
        Matrix matrix2 = this.a;
        matrix.invert(matrix2);
        path.transform(matrix2);
        path.lineTo(this.b, this.c);
        path.transform(matrix);
    }
}
