package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.TextView;
import java.util.WeakHashMap;
/* renamed from: sm  reason: default package */
/* loaded from: classes.dex */
public final class sm extends ArrayAdapter {
    public ColorStateList a;
    public ColorStateList b;
    public final /* synthetic */ tm c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sm(tm tmVar, Context context, int i, String[] strArr) {
        super(context, i, strArr);
        this.c = tmVar;
        a();
    }

    public final void a() {
        ColorStateList colorStateList;
        tm tmVar = this.c;
        ColorStateList colorStateList2 = tmVar.k;
        ColorStateList colorStateList3 = null;
        if (colorStateList2 != null) {
            int[] iArr = {16842919};
            colorStateList = new ColorStateList(new int[][]{iArr, new int[0]}, new int[]{colorStateList2.getColorForState(iArr, 0), 0});
        } else {
            colorStateList = null;
        }
        this.b = colorStateList;
        if (tmVar.j != 0 && tmVar.k != null) {
            int[] iArr2 = {16843623, -16842919};
            int[] iArr3 = {16842913, -16842919};
            colorStateList3 = new ColorStateList(new int[][]{iArr3, iArr2, new int[0]}, new int[]{da.b(tmVar.k.getColorForState(iArr3, 0), tmVar.j), da.b(tmVar.k.getColorForState(iArr2, 0), tmVar.j), tmVar.j});
        }
        this.a = colorStateList3;
    }

    @Override // android.widget.ArrayAdapter, android.widget.Adapter
    public final View getView(int i, View view, ViewGroup viewGroup) {
        View view2 = super.getView(i, view, viewGroup);
        if (view2 instanceof TextView) {
            TextView textView = (TextView) view2;
            tm tmVar = this.c;
            RippleDrawable rippleDrawable = null;
            if (tmVar.getText().toString().contentEquals(textView.getText()) && tmVar.j != 0) {
                ColorDrawable colorDrawable = new ColorDrawable(tmVar.j);
                if (this.b != null) {
                    tc.h(colorDrawable, this.a);
                    rippleDrawable = new RippleDrawable(this.b, colorDrawable, null);
                } else {
                    rippleDrawable = colorDrawable;
                }
            }
            WeakHashMap weakHashMap = u70.a;
            e70.q(textView, rippleDrawable);
        }
        return view2;
    }
}
