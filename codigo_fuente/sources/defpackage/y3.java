package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: y3  reason: default package */
/* loaded from: classes.dex */
public final class y3 {
    public final int[] a = {R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.car_abc_keyboard_filter_text_width, R.drawable.abc_ab_share_pack_mtrl_alpha};
    public final int[] b = {R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
    public final int[] c = {R.drawable.car_abc_keyboard_filter_delete_btn_size, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
    public final int[] d = {R.drawable.abc_popup_background_mtrl_mult, R.drawable.car_paged_list_view_scrollbar_thumb_margin, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
    public final int[] e = {R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
    public final int[] f = {R.drawable.abc_btn_check_material, R.drawable.car_paged_list_view_pagination_width, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};

    public static boolean a(int[] iArr, int i) {
        for (int i2 : iArr) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList b(Context context, int i) {
        int c = m40.c(context, R.attr.colorControlHighlight);
        int b = m40.b(context, R.attr.colorButtonNormal);
        int[] iArr = m40.b;
        int[] iArr2 = m40.d;
        int b2 = da.b(c, i);
        return new ColorStateList(new int[][]{iArr, iArr2, m40.c, m40.f}, new int[]{b, b2, da.b(c, i), i});
    }

    public static LayerDrawable c(rx rxVar, Context context, int i) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i);
        Drawable d = rxVar.d(context, R.drawable.abc_star_black_48dp);
        Drawable d2 = rxVar.d(context, R.drawable.abc_star_half_black_48dp);
        if ((d instanceof BitmapDrawable) && d.getIntrinsicWidth() == dimensionPixelSize && d.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) d;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap createBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            d.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            d.draw(canvas);
            bitmapDrawable = new BitmapDrawable(createBitmap);
            bitmapDrawable2 = new BitmapDrawable(createBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((d2 instanceof BitmapDrawable) && d2.getIntrinsicWidth() == dimensionPixelSize && d2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) d2;
        } else {
            Bitmap createBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap2);
            d2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            d2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(createBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, 16908288);
        layerDrawable.setId(1, 16908303);
        layerDrawable.setId(2, 16908301);
        return layerDrawable;
    }

    public static void e(Drawable drawable, int i, PorterDuff.Mode mode) {
        PorterDuffColorFilter f;
        int[] iArr = xc.a;
        Drawable mutate = drawable.mutate();
        if (mode == null) {
            mode = z3.b;
        }
        PorterDuff.Mode mode2 = z3.b;
        synchronized (z3.class) {
            f = rx.f(i, mode);
        }
        mutate.setColorFilter(f);
    }

    public final ColorStateList d(Context context, int i) {
        if (i == R.drawable.abc_edit_text_material) {
            return gn.o(context, R.color.abc_tint_edittext);
        }
        if (i == R.drawable.abc_switch_track_mtrl_alpha) {
            return gn.o(context, R.color.abc_tint_switch_track);
        }
        if (i == R.drawable.abc_switch_thumb_material) {
            int[][] iArr = new int[3];
            int[] iArr2 = new int[3];
            ColorStateList d = m40.d(context, R.attr.colorSwitchThumbNormal);
            if (d != null && d.isStateful()) {
                int[] iArr3 = m40.b;
                iArr[0] = iArr3;
                iArr2[0] = d.getColorForState(iArr3, 0);
                iArr[1] = m40.e;
                iArr2[1] = m40.c(context, R.attr.colorControlActivated);
                iArr[2] = m40.f;
                iArr2[2] = d.getDefaultColor();
            } else {
                iArr[0] = m40.b;
                iArr2[0] = m40.b(context, R.attr.colorSwitchThumbNormal);
                iArr[1] = m40.e;
                iArr2[1] = m40.c(context, R.attr.colorControlActivated);
                iArr[2] = m40.f;
                iArr2[2] = m40.c(context, R.attr.colorSwitchThumbNormal);
            }
            return new ColorStateList(iArr, iArr2);
        } else if (i == R.drawable.abc_btn_default_mtrl_shape) {
            return b(context, m40.c(context, R.attr.colorButtonNormal));
        } else {
            if (i == R.drawable.abc_btn_borderless_material) {
                return b(context, 0);
            }
            if (i == R.drawable.abc_btn_colored_material) {
                return b(context, m40.c(context, R.attr.colorAccent));
            }
            if (i != R.drawable.abc_spinner_mtrl_am_alpha && i != R.drawable.abc_spinner_textfield_background_material) {
                if (a(this.b, i)) {
                    return m40.d(context, R.attr.colorControlNormal);
                }
                if (a(this.e, i)) {
                    return gn.o(context, R.color.abc_tint_default);
                }
                if (a(this.f, i)) {
                    return gn.o(context, R.color.abc_tint_btn_checkable);
                }
                if (i == R.drawable.abc_seekbar_thumb_material) {
                    return gn.o(context, R.color.abc_tint_seek_thumb);
                }
                return null;
            }
            return gn.o(context, R.color.abc_tint_spinner);
        }
    }
}
