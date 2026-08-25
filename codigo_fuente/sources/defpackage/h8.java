package defpackage;

import android.content.Context;
import android.support.v7.widget.Toolbar;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;
/* renamed from: h8  reason: default package */
/* loaded from: classes.dex */
public final class h8 {
    public final int[] a;

    public h8(int i) {
        this.a = new int[]{i};
    }

    public static boolean a(TextView textView) {
        if (c(textView, "action_bar_subtitle")) {
            return true;
        }
        if (f(textView)) {
            return TextUtils.equals(textView.getParent().getSubtitle(), textView.getText());
        }
        return false;
    }

    public static boolean b(TextView textView) {
        if (c(textView, "action_bar_title")) {
            return true;
        }
        if (f(textView)) {
            return TextUtils.equals(textView.getParent().getTitle(), textView.getText());
        }
        return false;
    }

    public static boolean c(View view, String str) {
        if (view.getId() == -1) {
            return false;
        }
        return view.getResources().getResourceEntryName(view.getId()).equalsIgnoreCase(str);
    }

    public static boolean f(TextView textView) {
        if (s8.c == null) {
            try {
                Class.forName("android.support.v7.widget.Toolbar");
                s8.c = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                s8.c = Boolean.FALSE;
            }
        }
        if (s8.c.booleanValue() && textView.getParent() != null && (textView.getParent() instanceof Toolbar)) {
            return true;
        }
        return false;
    }

    public final void d(View view, Context context, AttributeSet attributeSet) {
        if (view != null) {
            Object tag = view.getTag(2131558404);
            Boolean bool = Boolean.TRUE;
            if (tag != bool) {
                e(view, context, attributeSet);
                view.setTag(2131558404, bool);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:141:0x0191 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(android.view.View r9, android.content.Context r10, android.util.AttributeSet r11) {
        /*
            Method dump skipped, instructions count: 530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h8.e(android.view.View, android.content.Context, android.util.AttributeSet):void");
    }
}
