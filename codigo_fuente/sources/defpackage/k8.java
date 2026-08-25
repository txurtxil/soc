package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
/* renamed from: k8  reason: default package */
/* loaded from: classes.dex */
public final class k8 implements LayoutInflater.Factory {
    public final h8 a;
    public final LayoutInflater.Factory b;

    public k8(LayoutInflater.Factory factory, h8 h8Var) {
        this.b = factory;
        this.a = h8Var;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = this.b.onCreateView(str, context, attributeSet);
        this.a.d(onCreateView, context, attributeSet);
        return onCreateView;
    }
}
