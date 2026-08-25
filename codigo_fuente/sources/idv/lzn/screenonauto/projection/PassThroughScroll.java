package idv.lzn.screenonauto.projection;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.HorizontalScrollView;
/* loaded from: classes.dex */
public final class PassThroughScroll extends HorizontalScrollView {
    public boolean a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public PassThroughScroll(Context context) {
        this(context, null, 2, null);
        context.getClass();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        motionEvent.getClass();
        if (this.a) {
            return false;
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final boolean getPassTouches() {
        return this.a;
    }

    public final void setPassTouches(boolean z) {
        this.a = z;
    }

    public /* synthetic */ PassThroughScroll(Context context, AttributeSet attributeSet, int i, qb qbVar) {
        this(context, (i & 2) != 0 ? null : attributeSet);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PassThroughScroll(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        context.getClass();
    }
}
