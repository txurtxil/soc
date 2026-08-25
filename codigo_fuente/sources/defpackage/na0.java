package defpackage;

import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import java.util.ArrayList;
import java.util.List;
/* renamed from: na0  reason: default package */
/* loaded from: classes.dex */
public abstract class na0 extends qa0 {
    private static final boolean DEBUG = false;
    private ArrayList<RecyclerView.u> mPendingRemovals = new ArrayList<>();
    private ArrayList<RecyclerView.u> mPendingAdditions = new ArrayList<>();
    private ArrayList<ma0> mPendingMoves = new ArrayList<>();
    private ArrayList<la0> mPendingChanges = new ArrayList<>();
    ArrayList<ArrayList<RecyclerView.u>> mAdditionsList = new ArrayList<>();
    ArrayList<ArrayList<ma0>> mMovesList = new ArrayList<>();
    ArrayList<ArrayList<la0>> mChangesList = new ArrayList<>();
    ArrayList<RecyclerView.u> mAddAnimations = new ArrayList<>();
    ArrayList<RecyclerView.u> mMoveAnimations = new ArrayList<>();
    ArrayList<RecyclerView.u> mRemoveAnimations = new ArrayList<>();
    ArrayList<RecyclerView.u> mChangeAnimations = new ArrayList<>();

    public final void a(RecyclerView.u uVar) {
        ea0 s = em.s(uVar.a);
        this.mRemoveAnimations.add(uVar);
        s.b(getRemoveDuration());
        s.a(0.0f);
        s.c(new ia0(this, uVar, s, 0));
        s.d();
    }

    @Override // defpackage.qa0
    public boolean animateAdd(RecyclerView.u uVar) {
        d(uVar);
        uVar.a.setAlpha(0.0f);
        this.mPendingAdditions.add(uVar);
        return true;
    }

    public void animateAddImpl(RecyclerView.u uVar) {
        ea0 s = em.s(uVar.a);
        this.mAddAnimations.add(uVar);
        s.a(1.0f);
        s.b(getAddDuration());
        s.c(new ia0(this, uVar, s, 1));
        s.d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v3, types: [java.lang.Object, la0] */
    @Override // defpackage.qa0
    public boolean animateChange(RecyclerView.u uVar, RecyclerView.u uVar2, int i, int i2, int i3, int i4) {
        if (uVar == uVar2) {
            return animateMove(uVar, i, i2, i3, i4);
        }
        float translationX = uVar.a.getTranslationX();
        float translationY = uVar.a.getTranslationY();
        float alpha = uVar.a.getAlpha();
        d(uVar);
        int i5 = (int) ((i3 - i) - translationX);
        int i6 = (int) ((i4 - i2) - translationY);
        uVar.a.setTranslationX(translationX);
        uVar.a.setTranslationY(translationY);
        uVar.a.setAlpha(alpha);
        if (uVar2 != null) {
            d(uVar2);
            uVar2.a.setTranslationX(-i5);
            uVar2.a.setTranslationY(-i6);
            uVar2.a.setAlpha(0.0f);
        }
        ArrayList<la0> arrayList = this.mPendingChanges;
        ?? obj = new Object();
        obj.a = uVar;
        obj.b = uVar2;
        obj.c = i;
        obj.d = i2;
        obj.e = i3;
        obj.f = i4;
        arrayList.add(obj);
        return true;
    }

    public void animateChangeImpl(la0 la0Var) {
        View view;
        RecyclerView.u uVar = la0Var.a;
        View view2 = null;
        if (uVar == null) {
            view = null;
        } else {
            view = uVar.a;
        }
        RecyclerView.u uVar2 = la0Var.b;
        if (uVar2 != null) {
            view2 = uVar2.a;
        }
        if (view != null) {
            ea0 s = em.s(view);
            s.b(getChangeDuration());
            this.mChangeAnimations.add(la0Var.a);
            float f = la0Var.e - la0Var.c;
            View view3 = (View) s.a.get();
            if (view3 != null) {
                view3.animate().translationX(f);
            }
            float f2 = la0Var.f - la0Var.d;
            View view4 = (View) s.a.get();
            if (view4 != null) {
                view4.animate().translationY(f2);
            }
            s.a(0.0f);
            s.c(new ia0(this, la0Var, s, 2));
            s.d();
        }
        if (view2 != null) {
            ea0 s2 = em.s(view2);
            this.mChangeAnimations.add(la0Var.b);
            View view5 = (View) s2.a.get();
            if (view5 != null) {
                view5.animate().translationX(0.0f);
            }
            View view6 = (View) s2.a.get();
            if (view6 != null) {
                view6.animate().translationY(0.0f);
            }
            s2.b(getChangeDuration());
            s2.a(1.0f);
            s2.c(new ka0(this, la0Var, s2, view2));
            s2.d();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, ma0] */
    @Override // defpackage.qa0
    public boolean animateMove(RecyclerView.u uVar, int i, int i2, int i3, int i4) {
        View view = uVar.a;
        int translationX = (int) (uVar.a.getTranslationX() + i);
        int translationY = (int) (uVar.a.getTranslationY() + i2);
        d(uVar);
        int i5 = i3 - translationX;
        int i6 = i4 - translationY;
        if (i5 == 0 && i6 == 0) {
            dispatchMoveFinished(uVar);
            return DEBUG;
        }
        if (i5 != 0) {
            view.setTranslationX(-i5);
        }
        if (i6 != 0) {
            view.setTranslationY(-i6);
        }
        ArrayList<ma0> arrayList = this.mPendingMoves;
        ?? obj = new Object();
        obj.a = uVar;
        obj.b = translationX;
        obj.c = translationY;
        obj.d = i3;
        obj.e = i4;
        arrayList.add(obj);
        return true;
    }

    public void animateMoveImpl(RecyclerView.u uVar, int i, int i2, int i3, int i4) {
        View view;
        View view2;
        View view3 = uVar.a;
        int i5 = i3 - i;
        int i6 = i4 - i2;
        if (i5 != 0 && (view2 = (View) em.s(view3).a.get()) != null) {
            view2.animate().translationX(0.0f);
        }
        if (i6 != 0 && (view = (View) em.s(view3).a.get()) != null) {
            view.animate().translationY(0.0f);
        }
        ea0 s = em.s(view3);
        this.mMoveAnimations.add(uVar);
        s.b(getMoveDuration());
        s.c(new ja0(this, uVar, i5, i6, s));
        s.d();
    }

    @Override // defpackage.qa0
    public boolean animateRemove(RecyclerView.u uVar) {
        d(uVar);
        this.mPendingRemovals.add(uVar);
        return true;
    }

    public final void b(RecyclerView.u uVar, List list) {
        int size = list.size();
        while (true) {
            size--;
            if (size >= 0) {
                la0 la0Var = (la0) list.get(size);
                if (c(la0Var, uVar) && la0Var.a == null && la0Var.b == null) {
                    list.remove(la0Var);
                }
            } else {
                return;
            }
        }
    }

    public final boolean c(la0 la0Var, RecyclerView.u uVar) {
        RecyclerView.u uVar2 = la0Var.b;
        boolean z = DEBUG;
        if (uVar2 == uVar) {
            la0Var.b = null;
        } else if (la0Var.a != uVar) {
            return DEBUG;
        } else {
            la0Var.a = null;
            z = true;
        }
        uVar.a.setAlpha(1.0f);
        uVar.a.setTranslationX(0.0f);
        uVar.a.setTranslationY(0.0f);
        dispatchChangeFinished(uVar, z);
        return true;
    }

    public boolean canReuseUpdatedViewHolder(RecyclerView.u uVar, List<Object> list) {
        if (!list.isEmpty() || super.canReuseUpdatedViewHolder(uVar, list)) {
            return true;
        }
        return DEBUG;
    }

    public void cancelAll(List<RecyclerView.u> list) {
        int size = list.size();
        while (true) {
            size--;
            if (size >= 0) {
                View view = (View) em.s(list.get(size).a).a.get();
                if (view != null) {
                    view.animate().cancel();
                }
            } else {
                return;
            }
        }
    }

    public final void d(RecyclerView.u uVar) {
        View view = uVar.a;
        i90 i90Var = gn.d;
        if (((TimeInterpolator) i90Var.a) == null) {
            i90Var.a = new ValueAnimator().getInterpolator();
        }
        view.animate().setInterpolator((TimeInterpolator) i90Var.a);
        endAnimation(uVar);
    }

    public void dispatchFinishedWhenDone() {
        if (isRunning()) {
            return;
        }
        dispatchAnimationsFinished();
    }

    public void endAnimation(RecyclerView.u uVar) {
        View view = uVar.a;
        View view2 = (View) em.s(view).a.get();
        if (view2 != null) {
            view2.animate().cancel();
        }
        int size = this.mPendingMoves.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            } else if (this.mPendingMoves.get(size).a == uVar) {
                view.setTranslationY(0.0f);
                view.setTranslationX(0.0f);
                dispatchMoveFinished(uVar);
                this.mPendingMoves.remove(size);
            }
        }
        b(uVar, this.mPendingChanges);
        if (this.mPendingRemovals.remove(uVar)) {
            view.setAlpha(1.0f);
            dispatchRemoveFinished(uVar);
        }
        if (this.mPendingAdditions.remove(uVar)) {
            view.setAlpha(1.0f);
            dispatchAddFinished(uVar);
        }
        int size2 = this.mChangesList.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            ArrayList<la0> arrayList = this.mChangesList.get(size2);
            b(uVar, arrayList);
            if (arrayList.isEmpty()) {
                this.mChangesList.remove(size2);
            }
        }
        int size3 = this.mMovesList.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            ArrayList<ma0> arrayList2 = this.mMovesList.get(size3);
            int size4 = arrayList2.size();
            while (true) {
                size4--;
                if (size4 < 0) {
                    break;
                } else if (arrayList2.get(size4).a == uVar) {
                    view.setTranslationY(0.0f);
                    view.setTranslationX(0.0f);
                    dispatchMoveFinished(uVar);
                    arrayList2.remove(size4);
                    if (arrayList2.isEmpty()) {
                        this.mMovesList.remove(size3);
                    }
                }
            }
        }
        int size5 = this.mAdditionsList.size();
        while (true) {
            size5--;
            if (size5 >= 0) {
                ArrayList<RecyclerView.u> arrayList3 = this.mAdditionsList.get(size5);
                if (arrayList3.remove(uVar)) {
                    view.setAlpha(1.0f);
                    dispatchAddFinished(uVar);
                    if (arrayList3.isEmpty()) {
                        this.mAdditionsList.remove(size5);
                    }
                }
            } else {
                this.mRemoveAnimations.remove(uVar);
                this.mAddAnimations.remove(uVar);
                this.mChangeAnimations.remove(uVar);
                this.mMoveAnimations.remove(uVar);
                dispatchFinishedWhenDone();
                return;
            }
        }
    }

    public void endAnimations() {
        ArrayList<la0> arrayList;
        int size = this.mPendingMoves.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            ma0 ma0Var = this.mPendingMoves.get(size);
            View view = ma0Var.a.a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            dispatchMoveFinished(ma0Var.a);
            this.mPendingMoves.remove(size);
        }
        int size2 = this.mPendingRemovals.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            dispatchRemoveFinished(this.mPendingRemovals.get(size2));
            this.mPendingRemovals.remove(size2);
        }
        int size3 = this.mPendingAdditions.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            RecyclerView.u uVar = this.mPendingAdditions.get(size3);
            uVar.a.setAlpha(1.0f);
            dispatchAddFinished(uVar);
            this.mPendingAdditions.remove(size3);
        }
        int size4 = this.mPendingChanges.size();
        while (true) {
            size4--;
            arrayList = this.mPendingChanges;
            if (size4 < 0) {
                break;
            }
            la0 la0Var = arrayList.get(size4);
            RecyclerView.u uVar2 = la0Var.a;
            if (uVar2 != null) {
                c(la0Var, uVar2);
            }
            RecyclerView.u uVar3 = la0Var.b;
            if (uVar3 != null) {
                c(la0Var, uVar3);
            }
        }
        arrayList.clear();
        if (!isRunning()) {
            return;
        }
        int size5 = this.mMovesList.size();
        while (true) {
            size5--;
            if (size5 < 0) {
                break;
            }
            ArrayList<ma0> arrayList2 = this.mMovesList.get(size5);
            int size6 = arrayList2.size();
            while (true) {
                size6--;
                if (size6 >= 0) {
                    ma0 ma0Var2 = arrayList2.get(size6);
                    View view2 = ma0Var2.a.a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    dispatchMoveFinished(ma0Var2.a);
                    arrayList2.remove(size6);
                    if (arrayList2.isEmpty()) {
                        this.mMovesList.remove(arrayList2);
                    }
                }
            }
        }
        int size7 = this.mAdditionsList.size();
        while (true) {
            size7--;
            if (size7 < 0) {
                break;
            }
            ArrayList<RecyclerView.u> arrayList3 = this.mAdditionsList.get(size7);
            int size8 = arrayList3.size();
            while (true) {
                size8--;
                if (size8 >= 0) {
                    RecyclerView.u uVar4 = arrayList3.get(size8);
                    uVar4.a.setAlpha(1.0f);
                    dispatchAddFinished(uVar4);
                    arrayList3.remove(size8);
                    if (arrayList3.isEmpty()) {
                        this.mAdditionsList.remove(arrayList3);
                    }
                }
            }
        }
        int size9 = this.mChangesList.size();
        while (true) {
            size9--;
            if (size9 >= 0) {
                ArrayList<la0> arrayList4 = this.mChangesList.get(size9);
                int size10 = arrayList4.size();
                while (true) {
                    size10--;
                    if (size10 >= 0) {
                        la0 la0Var2 = arrayList4.get(size10);
                        RecyclerView.u uVar5 = la0Var2.a;
                        if (uVar5 != null) {
                            c(la0Var2, uVar5);
                        }
                        RecyclerView.u uVar6 = la0Var2.b;
                        if (uVar6 != null) {
                            c(la0Var2, uVar6);
                        }
                        if (arrayList4.isEmpty()) {
                            this.mChangesList.remove(arrayList4);
                        }
                    }
                }
            } else {
                cancelAll(this.mRemoveAnimations);
                cancelAll(this.mMoveAnimations);
                cancelAll(this.mAddAnimations);
                cancelAll(this.mChangeAnimations);
                dispatchAnimationsFinished();
                return;
            }
        }
    }

    public boolean isRunning() {
        if (this.mPendingAdditions.isEmpty() && this.mPendingChanges.isEmpty() && this.mPendingMoves.isEmpty() && this.mPendingRemovals.isEmpty() && this.mMoveAnimations.isEmpty() && this.mRemoveAnimations.isEmpty() && this.mAddAnimations.isEmpty() && this.mChangeAnimations.isEmpty() && this.mMovesList.isEmpty() && this.mAdditionsList.isEmpty() && this.mChangesList.isEmpty()) {
            return DEBUG;
        }
        return true;
    }

    public void runPendingAnimations() {
        long j;
        long j2;
        boolean isEmpty = this.mPendingRemovals.isEmpty();
        boolean isEmpty2 = this.mPendingMoves.isEmpty();
        boolean isEmpty3 = this.mPendingChanges.isEmpty();
        boolean isEmpty4 = this.mPendingAdditions.isEmpty();
        if (!isEmpty || !isEmpty2 || !isEmpty4 || !isEmpty3) {
            ArrayList<RecyclerView.u> arrayList = this.mPendingRemovals;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                RecyclerView.u uVar = arrayList.get(i);
                i++;
                a(uVar);
            }
            this.mPendingRemovals.clear();
            if (!isEmpty2) {
                ArrayList<ma0> arrayList2 = new ArrayList<>();
                arrayList2.addAll(this.mPendingMoves);
                this.mMovesList.add(arrayList2);
                this.mPendingMoves.clear();
                ga0 ga0Var = new ga0(this, arrayList2, 0);
                if (!isEmpty) {
                    arrayList2.get(0).a.a.postOnAnimationDelayed(ga0Var, getRemoveDuration());
                } else {
                    ga0Var.run();
                }
            }
            if (!isEmpty3) {
                ArrayList<la0> arrayList3 = new ArrayList<>();
                arrayList3.addAll(this.mPendingChanges);
                this.mChangesList.add(arrayList3);
                this.mPendingChanges.clear();
                ga0 ga0Var2 = new ga0(this, arrayList3, 1);
                if (!isEmpty) {
                    arrayList3.get(0).a.a.postOnAnimationDelayed(ga0Var2, getRemoveDuration());
                } else {
                    ga0Var2.run();
                }
            }
            if (!isEmpty4) {
                ArrayList<RecyclerView.u> arrayList4 = new ArrayList<>();
                arrayList4.addAll(this.mPendingAdditions);
                this.mAdditionsList.add(arrayList4);
                this.mPendingAdditions.clear();
                ha0 ha0Var = new ha0(this, arrayList4);
                if (isEmpty && isEmpty2 && isEmpty3) {
                    ha0Var.run();
                    return;
                }
                long j3 = 0;
                if (!isEmpty) {
                    j = getRemoveDuration();
                } else {
                    j = 0;
                }
                if (!isEmpty2) {
                    j2 = getMoveDuration();
                } else {
                    j2 = 0;
                }
                if (!isEmpty3) {
                    j3 = getChangeDuration();
                }
                arrayList4.get(0).a.postOnAnimationDelayed(ha0Var, j + Math.max(j2, j3));
            }
        }
    }
}
