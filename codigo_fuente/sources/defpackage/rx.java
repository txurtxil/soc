package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import com.google.android.apps.auto.sdk.ui.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
/* renamed from: rx  reason: default package */
/* loaded from: classes.dex */
public final class rx {
    public static rx g;
    public WeakHashMap a;
    public final WeakHashMap b = new WeakHashMap(0);
    public TypedValue c;
    public boolean d;
    public y3 e;
    public static final PorterDuff.Mode f = PorterDuff.Mode.SRC_IN;
    public static final qx h = new bm(6);

    public static synchronized rx c() {
        rx rxVar;
        synchronized (rx.class) {
            try {
                if (g == null) {
                    g = new rx();
                }
                rxVar = g;
            } catch (Throwable th) {
                throw th;
            }
        }
        return rxVar;
    }

    public static synchronized PorterDuffColorFilter f(int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        synchronized (rx.class) {
            qx qxVar = h;
            qxVar.getClass();
            int i2 = (31 + i) * 31;
            porterDuffColorFilter = (PorterDuffColorFilter) qxVar.a(Integer.valueOf(mode.hashCode() + i2));
            if (porterDuffColorFilter == null) {
                porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
                PorterDuffColorFilter porterDuffColorFilter2 = (PorterDuffColorFilter) qxVar.b(Integer.valueOf(mode.hashCode() + i2), porterDuffColorFilter);
            }
        }
        return porterDuffColorFilter;
    }

    public final void a(Context context, int i, ColorStateList colorStateList) {
        if (this.a == null) {
            this.a = new WeakHashMap();
        }
        q20 q20Var = (q20) this.a.get(context);
        if (q20Var == null) {
            q20Var = new q20();
            this.a.put(context, q20Var);
        }
        int i2 = q20Var.c;
        if (i2 != 0) {
            int[] iArr = q20Var.a;
            if (i <= iArr[i2 - 1]) {
                int d = gt.d(i2, i, iArr);
                if (d >= 0) {
                    q20Var.b[d] = colorStateList;
                    return;
                }
                int i3 = ~d;
                int i4 = q20Var.c;
                if (i3 < i4) {
                    Object[] objArr = q20Var.b;
                    if (objArr[i3] == q20.d) {
                        q20Var.a[i3] = i;
                        objArr[i3] = colorStateList;
                        return;
                    }
                }
                if (i4 >= q20Var.a.length) {
                    int i5 = (i4 + 1) * 4;
                    int i6 = 4;
                    while (true) {
                        if (i6 >= 32) {
                            break;
                        }
                        int i7 = (1 << i6) - 12;
                        if (i5 <= i7) {
                            i5 = i7;
                            break;
                        }
                        i6++;
                    }
                    int i8 = i5 / 4;
                    int[] iArr2 = new int[i8];
                    Object[] objArr2 = new Object[i8];
                    int[] iArr3 = q20Var.a;
                    System.arraycopy(iArr3, 0, iArr2, 0, iArr3.length);
                    Object[] objArr3 = q20Var.b;
                    System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
                    q20Var.a = iArr2;
                    q20Var.b = objArr2;
                }
                int i9 = q20Var.c - i3;
                if (i9 != 0) {
                    int[] iArr4 = q20Var.a;
                    int i10 = i3 + 1;
                    System.arraycopy(iArr4, i3, iArr4, i10, i9);
                    Object[] objArr4 = q20Var.b;
                    System.arraycopy(objArr4, i3, objArr4, i10, q20Var.c - i3);
                }
                q20Var.a[i3] = i;
                q20Var.b[i3] = colorStateList;
                q20Var.c++;
                return;
            }
        }
        if (i2 >= q20Var.a.length) {
            int i11 = (i2 + 1) * 4;
            int i12 = 4;
            while (true) {
                if (i12 >= 32) {
                    break;
                }
                int i13 = (1 << i12) - 12;
                if (i11 <= i13) {
                    i11 = i13;
                    break;
                }
                i12++;
            }
            int i14 = i11 / 4;
            int[] iArr5 = new int[i14];
            Object[] objArr5 = new Object[i14];
            int[] iArr6 = q20Var.a;
            System.arraycopy(iArr6, 0, iArr5, 0, iArr6.length);
            Object[] objArr6 = q20Var.b;
            System.arraycopy(objArr6, 0, objArr5, 0, objArr6.length);
            q20Var.a = iArr5;
            q20Var.b = objArr5;
        }
        q20Var.a[i2] = i;
        q20Var.b[i2] = colorStateList;
        q20Var.c = i2 + 1;
    }

    public final Drawable b(Context context, int i) {
        LayerDrawable layerDrawable;
        Drawable newDrawable;
        if (this.c == null) {
            this.c = new TypedValue();
        }
        TypedValue typedValue = this.c;
        context.getResources().getValue(i, typedValue, true);
        long j = (typedValue.assetCookie << 32) | typedValue.data;
        synchronized (this) {
            am amVar = (am) this.b.get(context);
            layerDrawable = null;
            if (amVar != null) {
                WeakReference weakReference = (WeakReference) amVar.c(j);
                if (weakReference != null) {
                    Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                    if (constantState != null) {
                        newDrawable = constantState.newDrawable(context.getResources());
                    } else {
                        int e = gt.e(amVar.b, amVar.d, j);
                        if (e >= 0) {
                            Object[] objArr = amVar.c;
                            Object obj = objArr[e];
                            Object obj2 = am.e;
                            if (obj != obj2) {
                                objArr[e] = obj2;
                                amVar.a = true;
                            }
                        }
                    }
                }
            }
            newDrawable = null;
        }
        if (newDrawable != null) {
            return newDrawable;
        }
        if (this.e != null) {
            if (i == R.drawable.abc_cab_background_top_material) {
                layerDrawable = new LayerDrawable(new Drawable[]{d(context, R.drawable.car_paged_list_view_scrollbar_thumb_margin), d(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i == R.drawable.abc_ratingbar_material) {
                layerDrawable = y3.c(this, context, R.dimen.abc_star_big);
            } else if (i == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawable = y3.c(this, context, R.dimen.abc_star_medium);
            } else if (i == R.drawable.abc_ratingbar_small_material) {
                layerDrawable = y3.c(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawable != null) {
            layerDrawable.setChangingConfigurations(typedValue.changingConfigurations);
            synchronized (this) {
                try {
                    Drawable.ConstantState constantState2 = layerDrawable.getConstantState();
                    if (constantState2 != null) {
                        am amVar2 = (am) this.b.get(context);
                        if (amVar2 == null) {
                            amVar2 = new am();
                            this.b.put(context, amVar2);
                        }
                        amVar2.d(j, new WeakReference(constantState2));
                        return layerDrawable;
                    }
                    return layerDrawable;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return layerDrawable;
    }

    public final synchronized Drawable d(Context context, int i) {
        return e(context, i, false);
    }

    public final synchronized Drawable e(Context context, int i, boolean z) {
        Drawable b;
        try {
            if (!this.d) {
                this.d = true;
                Drawable d = d(context, R.drawable.car_app_layout_search_box_small_margin);
                if (d == null || (!(d instanceof u60) && !"android.graphics.drawable.VectorDrawable".equals(d.getClass().getName()))) {
                    this.d = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            b = b(context, i);
            if (b == null) {
                b = ya.b(context, i);
            }
            if (b != null) {
                b = h(context, i, z, b);
            }
            if (b != null) {
                xc.a(b);
            }
        } catch (Throwable th) {
            throw th;
        }
        return b;
    }

    public final synchronized ColorStateList g(Context context, int i) {
        ColorStateList colorStateList;
        q20 q20Var;
        Object obj;
        WeakHashMap weakHashMap = this.a;
        ColorStateList colorStateList2 = null;
        if (weakHashMap != null && (q20Var = (q20) weakHashMap.get(context)) != null) {
            int d = gt.d(q20Var.c, i, q20Var.a);
            if (d < 0 || (obj = q20Var.b[d]) == q20.d) {
                obj = null;
            }
            colorStateList = obj;
        } else {
            colorStateList = null;
        }
        if (colorStateList == null) {
            y3 y3Var = this.e;
            if (y3Var != null) {
                colorStateList2 = y3Var.d(context, i);
            }
            if (colorStateList2 != null) {
                a(context, i, colorStateList2);
            }
            colorStateList = colorStateList2;
        }
        return colorStateList;
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.drawable.Drawable h(android.content.Context r9, int r10, boolean r11, android.graphics.drawable.Drawable r12) {
        /*
            Method dump skipped, instructions count: 259
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rx.h(android.content.Context, int, boolean, android.graphics.drawable.Drawable):android.graphics.drawable.Drawable");
    }
}
