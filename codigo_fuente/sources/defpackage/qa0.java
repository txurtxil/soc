package defpackage;

import android.support.v7.widget.RecyclerView;
import android.view.View;
/* renamed from: qa0  reason: default package */
/* loaded from: classes.dex */
public abstract class qa0 extends RecyclerView.e {
    private static final boolean DEBUG = false;
    private static final String TAG = "SimpleItemAnimator";
    boolean mSupportsChangeAnimations = true;

    public abstract boolean animateAdd(RecyclerView.u uVar);

    public boolean animateAppearance(RecyclerView.u uVar, RecyclerView.e.c cVar, RecyclerView.e.c cVar2) {
        return (cVar == null || (cVar.a == cVar2.a && cVar.b == cVar2.b)) ? animateAdd(uVar) : animateMove(uVar, cVar.a, cVar.b, cVar2.a, cVar2.b);
    }

    public abstract boolean animateChange(RecyclerView.u uVar, RecyclerView.u uVar2, int i, int i2, int i3, int i4);

    public boolean animateChange(RecyclerView.u uVar, RecyclerView.u uVar2, RecyclerView.e.c cVar, RecyclerView.e.c cVar2) {
        int i;
        int i2;
        int i3 = cVar.a;
        int i4 = cVar.b;
        if (uVar2.c()) {
            int i5 = cVar.a;
            i2 = cVar.b;
            i = i5;
        } else {
            i = cVar2.a;
            i2 = cVar2.b;
        }
        return animateChange(uVar, uVar2, i3, i4, i, i2);
    }

    public boolean animateDisappearance(RecyclerView.u uVar, RecyclerView.e.c cVar, RecyclerView.e.c cVar2) {
        int i = cVar.a;
        int i2 = cVar.b;
        View view = uVar.a;
        int left = cVar2 == null ? view.getLeft() : cVar2.a;
        int top = cVar2 == null ? view.getTop() : cVar2.b;
        if (uVar.r() || (i == left && i2 == top)) {
            return animateRemove(uVar);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return animateMove(uVar, i, i2, left, top);
    }

    public abstract boolean animateMove(RecyclerView.u uVar, int i, int i2, int i3, int i4);

    public boolean animatePersistence(RecyclerView.u uVar, RecyclerView.e.c cVar, RecyclerView.e.c cVar2) {
        if (cVar.a == cVar2.a && cVar.b == cVar2.b) {
            dispatchMoveFinished(uVar);
            return DEBUG;
        }
        return animateMove(uVar, cVar.a, cVar.b, cVar2.a, cVar2.b);
    }

    public abstract boolean animateRemove(RecyclerView.u uVar);

    public boolean canReuseUpdatedViewHolder(RecyclerView.u uVar) {
        if (!this.mSupportsChangeAnimations || uVar.o()) {
            return true;
        }
        return DEBUG;
    }

    public final void dispatchAddFinished(RecyclerView.u uVar) {
        onAddFinished(uVar);
        dispatchAnimationFinished(uVar);
    }

    public final void dispatchAddStarting(RecyclerView.u uVar) {
        onAddStarting(uVar);
    }

    public final void dispatchChangeFinished(RecyclerView.u uVar, boolean z) {
        onChangeFinished(uVar, z);
        dispatchAnimationFinished(uVar);
    }

    public final void dispatchChangeStarting(RecyclerView.u uVar, boolean z) {
        onChangeStarting(uVar, z);
    }

    public final void dispatchMoveFinished(RecyclerView.u uVar) {
        onMoveFinished(uVar);
        dispatchAnimationFinished(uVar);
    }

    public final void dispatchMoveStarting(RecyclerView.u uVar) {
        onMoveStarting(uVar);
    }

    public final void dispatchRemoveFinished(RecyclerView.u uVar) {
        onRemoveFinished(uVar);
        dispatchAnimationFinished(uVar);
    }

    public final void dispatchRemoveStarting(RecyclerView.u uVar) {
        onRemoveStarting(uVar);
    }

    public boolean getSupportsChangeAnimations() {
        return this.mSupportsChangeAnimations;
    }

    public void onAddFinished(RecyclerView.u uVar) {
    }

    public void onAddStarting(RecyclerView.u uVar) {
    }

    public void onChangeFinished(RecyclerView.u uVar, boolean z) {
    }

    public void onChangeStarting(RecyclerView.u uVar, boolean z) {
    }

    public abstract void onMoveFinished(RecyclerView.u uVar);

    public void onMoveStarting(RecyclerView.u uVar) {
    }

    public void onRemoveFinished(RecyclerView.u uVar) {
    }

    public void onRemoveStarting(RecyclerView.u uVar) {
    }

    public void setSupportsChangeAnimations(boolean z) {
        this.mSupportsChangeAnimations = z;
    }
}
