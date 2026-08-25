package defpackage;

import android.text.TextPaint;
/* renamed from: sb  reason: default package */
/* loaded from: classes.dex */
public final class sb {
    public static final ThreadLocal b = new ThreadLocal();
    public final TextPaint a;

    public sb() {
        TextPaint textPaint = new TextPaint();
        this.a = textPaint;
        textPaint.setTextSize(10.0f);
    }
}
