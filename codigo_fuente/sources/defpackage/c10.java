package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import java.util.ArrayList;
/* renamed from: c10  reason: default package */
/* loaded from: classes.dex */
public final class c10 extends i10 {
    public final /* synthetic */ ArrayList c;
    public final /* synthetic */ Matrix d;

    public c10(ArrayList arrayList, Matrix matrix) {
        this.c = arrayList;
        this.d = matrix;
    }

    @Override // defpackage.i10
    public final void a(Matrix matrix, x00 x00Var, int i, Canvas canvas) {
        ArrayList arrayList = this.c;
        int size = arrayList.size();
        int i2 = 0;
        while (i2 < size) {
            Object obj = arrayList.get(i2);
            i2++;
            ((i10) obj).a(this.d, x00Var, i, canvas);
        }
    }
}
