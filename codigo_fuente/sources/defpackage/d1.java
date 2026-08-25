package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: d1  reason: default package */
/* loaded from: classes.dex */
public final class d1 extends f4 implements f1 {
    public final /* synthetic */ e1 d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d1(e1 e1Var, Context context) {
        super(context, null, R.attr.car_list_item_1_card);
        this.d = e1Var;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        qj.u(this, getContentDescription());
        setOnTouchListener(new y0(this, this));
    }

    @Override // defpackage.f1
    public final boolean b() {
        return false;
    }

    @Override // defpackage.f1
    public final boolean c() {
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.d.l();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int max = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            tc.f(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
        }
        return frame;
    }
}
