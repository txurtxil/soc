package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements ro, np, AdapterView.OnItemClickListener {
    public static final int[] b = {16842964, 16843049};
    public so a;

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        v5 C = v5.C(context, attributeSet, b, i);
        TypedArray typedArray = (TypedArray) C.b;
        if (typedArray.hasValue(0)) {
            setBackgroundDrawable(C.r(0));
        }
        if (typedArray.hasValue(1)) {
            setDivider(C.r(1));
        }
        C.E();
    }

    @Override // defpackage.ro
    public final boolean a(wo woVar) {
        return this.a.q(woVar, null, 0);
    }

    @Override // defpackage.np
    public final void b(so soVar) {
        this.a = soVar;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public final void onItemClick(AdapterView adapterView, View view, int i, long j) {
        a((wo) getAdapter().getItem(i));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842868);
    }
}
