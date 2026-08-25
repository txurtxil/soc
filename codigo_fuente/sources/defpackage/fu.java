package defpackage;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: fu  reason: default package */
/* loaded from: classes.dex */
public final class fu extends iw {
    public Drawable a;
    public int b;
    public boolean c = true;
    public final /* synthetic */ gu d;

    public fu(gu guVar) {
        this.d = guVar;
    }

    @Override // defpackage.iw
    public final void a(Rect rect, View view, RecyclerView recyclerView) {
        if (c(view, recyclerView)) {
            rect.bottom = this.b;
        }
    }

    @Override // defpackage.iw
    public final void b(Canvas canvas, RecyclerView recyclerView) {
        if (this.a != null) {
            int childCount = recyclerView.getChildCount();
            int width = recyclerView.getWidth();
            for (int i = 0; i < childCount; i++) {
                View childAt = recyclerView.getChildAt(i);
                if (c(childAt, recyclerView)) {
                    int height = childAt.getHeight() + ((int) childAt.getY());
                    this.a.setBounds(0, height, width, this.b + height);
                    this.a.draw(canvas);
                }
            }
        }
    }

    public final boolean c(View view, RecyclerView recyclerView) {
        nu F = recyclerView.F(view);
        if ((F instanceof nu) && F.w) {
            boolean z = this.c;
            int indexOfChild = recyclerView.indexOfChild(view);
            if (indexOfChild < recyclerView.getChildCount() - 1) {
                nu F2 = recyclerView.F(recyclerView.getChildAt(indexOfChild + 1));
                if ((F2 instanceof nu) && F2.v) {
                    return true;
                }
                return false;
            }
            return z;
        }
        return false;
    }
}
