package defpackage;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.apps.auto.sdk.ui.R;
import com.google.android.material.carousel.CarouselLayoutManager;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: h9  reason: default package */
/* loaded from: classes.dex */
public final class h9 extends iw {
    public final Paint a;
    public final List b;

    public h9() {
        Paint paint = new Paint();
        this.a = paint;
        this.b = Collections.unmodifiableList(new ArrayList());
        paint.setStrokeWidth(5.0f);
        paint.setColor(-65281);
    }

    @Override // defpackage.iw
    public final void b(Canvas canvas, RecyclerView recyclerView) {
        int B;
        Canvas canvas2;
        int i;
        float dimension = recyclerView.getResources().getDimension(R.dimen.m3_carousel_debug_keyline_width);
        Paint paint = this.a;
        paint.setStrokeWidth(dimension);
        for (ak akVar : this.b) {
            akVar.getClass();
            int i2 = da.a;
            float f = 1.0f - 0.0f;
            paint.setColor(Color.argb((int) ((Color.alpha(-16776961) * 0.0f) + (Color.alpha(-65281) * f)), (int) ((Color.red(-16776961) * 0.0f) + (Color.red(-65281) * f)), (int) ((Color.green(-16776961) * 0.0f) + (Color.green(-65281) * f)), (int) ((Color.blue(-16776961) * 0.0f) + (Color.blue(-65281) * f))));
            int i3 = 0;
            if (((CarouselLayoutManager) recyclerView.getLayoutManager()).t0()) {
                i9 i9Var = ((CarouselLayoutManager) recyclerView.getLayoutManager()).p;
                switch (i9Var.b) {
                    case 0:
                        break;
                    default:
                        i3 = i9Var.c.C();
                        break;
                }
                float f2 = i3;
                i9 i9Var2 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).p;
                switch (i9Var2.b) {
                    case 0:
                        i = i9Var2.c.n;
                        break;
                    default:
                        CarouselLayoutManager carouselLayoutManager = i9Var2.c;
                        i = carouselLayoutManager.n - carouselLayoutManager.z();
                        break;
                }
                float f3 = i;
                canvas2 = canvas;
                canvas2.drawLine(0.0f, f2, 0.0f, f3, paint);
            } else {
                i9 i9Var3 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).p;
                switch (i9Var3.b) {
                    case 0:
                        i3 = i9Var3.c.A();
                        break;
                }
                float f4 = i3;
                i9 i9Var4 = ((CarouselLayoutManager) recyclerView.getLayoutManager()).p;
                switch (i9Var4.b) {
                    case 0:
                        CarouselLayoutManager carouselLayoutManager2 = i9Var4.c;
                        B = carouselLayoutManager2.m - carouselLayoutManager2.B();
                        break;
                    default:
                        B = i9Var4.c.m;
                        break;
                }
                canvas2 = canvas;
                canvas2.drawLine(f4, 0.0f, B, 0.0f, paint);
            }
            canvas = canvas2;
        }
    }
}
