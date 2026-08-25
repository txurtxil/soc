package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.ColorStateList;
import android.view.View;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import java.util.ArrayList;
/* renamed from: t0  reason: default package */
/* loaded from: classes.dex */
public final class t0 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public t0(j80 j80Var, View view) {
        this.a = 2;
        this.b = j80Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                actionBarOverlayLayout.x = null;
                actionBarOverlayLayout.k = false;
                return;
            case 1:
            default:
                super.onAnimationCancel(animator);
                return;
            case 2:
                ((j80) obj).c();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 0:
                ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) obj;
                actionBarOverlayLayout.x = null;
                actionBarOverlayLayout.k = false;
                return;
            case 1:
                u2 u2Var = (u2) obj;
                ArrayList arrayList = new ArrayList(u2Var.e);
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ColorStateList colorStateList = ((ym) arrayList.get(i2)).b.o;
                    if (colorStateList != null) {
                        tc.h(u2Var, colorStateList);
                    }
                }
                return;
            default:
                ((j80) obj).b();
                return;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        int i = this.a;
        Object obj = this.b;
        switch (i) {
            case 1:
                u2 u2Var = (u2) obj;
                ArrayList arrayList = new ArrayList(u2Var.e);
                int size = arrayList.size();
                for (int i2 = 0; i2 < size; i2++) {
                    bn bnVar = ((ym) arrayList.get(i2)).b;
                    ColorStateList colorStateList = bnVar.o;
                    if (colorStateList != null) {
                        tc.g(u2Var, colorStateList.getColorForState(bnVar.t, colorStateList.getDefaultColor()));
                    }
                }
                return;
            case 2:
                ((j80) obj).g();
                return;
            default:
                super.onAnimationStart(animator);
                return;
        }
    }

    public /* synthetic */ t0(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }
}
