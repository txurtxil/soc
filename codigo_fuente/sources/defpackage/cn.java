package defpackage;

import android.content.res.ColorStateList;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: cn  reason: default package */
/* loaded from: classes.dex */
public final class cn extends i4 {
    public static final int[][] g = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};
    public ColorStateList e;
    public boolean f;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.e == null) {
            int p = s8.p(this, R.attr.colorControlActivated);
            int p2 = s8.p(this, R.attr.colorOnSurface);
            int p3 = s8.p(this, R.attr.colorSurface);
            this.e = new ColorStateList(g, new int[]{s8.w(p3, p, 1.0f), s8.w(p3, p2, 0.54f), s8.w(p3, p2, 0.38f), s8.w(p3, p2, 0.38f)});
        }
        return this.e;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f && la.a(this) == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f = z;
        if (z) {
            la.c(this, getMaterialThemeColorsTintList());
        } else {
            la.c(this, null);
        }
    }
}
