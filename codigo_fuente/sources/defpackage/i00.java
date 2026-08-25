package defpackage;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import androidx.appcompat.widget.SearchView;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: i00  reason: default package */
/* loaded from: classes.dex */
public final class i00 implements View.OnLayoutChangeListener {
    public final /* synthetic */ SearchView a;

    public i00(SearchView searchView) {
        this.a = searchView;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        SearchView searchView = this.a;
        SearchView.SearchAutoComplete searchAutoComplete = searchView.q;
        View view2 = searchView.y;
        if (view2.getWidth() > 1) {
            Resources resources = searchView.getContext().getResources();
            int paddingLeft = searchView.s.getPaddingLeft();
            Rect rect = new Rect();
            boolean a = l80.a(searchView);
            int dimensionPixelSize = searchView.N ? resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_text_padding_left) + resources.getDimensionPixelSize(R.dimen.abc_dropdownitem_icon_width) : 0;
            searchAutoComplete.getDropDownBackground().getPadding(rect);
            int i9 = rect.left;
            searchAutoComplete.setDropDownHorizontalOffset(a ? -i9 : paddingLeft - (i9 + dimensionPixelSize));
            searchAutoComplete.setDropDownWidth((((view2.getWidth() + rect.left) + rect.right) + dimensionPixelSize) - paddingLeft);
        }
    }
}
