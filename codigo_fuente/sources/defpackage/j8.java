package defpackage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
/* renamed from: j8  reason: default package */
/* loaded from: classes.dex */
public class j8 implements LayoutInflater.Factory2 {
    public final h8 a;
    public final LayoutInflater.Factory2 b;

    public j8(LayoutInflater.Factory2 factory2, h8 h8Var) {
        this.b = factory2;
        this.a = h8Var;
    }

    @Override // android.view.LayoutInflater.Factory2
    public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        View onCreateView = this.b.onCreateView(view, str, context, attributeSet);
        this.a.d(onCreateView, context, attributeSet);
        return onCreateView;
    }

    @Override // android.view.LayoutInflater.Factory
    public final View onCreateView(String str, Context context, AttributeSet attributeSet) {
        View onCreateView = this.b.onCreateView(str, context, attributeSet);
        this.a.d(onCreateView, context, attributeSet);
        return onCreateView;
    }
}
