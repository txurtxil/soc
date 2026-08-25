package defpackage;

import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.MetricAffectingSpan;
/* renamed from: m8  reason: default package */
/* loaded from: classes.dex */
public final class m8 extends MetricAffectingSpan {
    public final Typeface a;

    public m8(Typeface typeface) {
        this.a = typeface;
    }

    public final void a(TextPaint textPaint) {
        int i;
        Typeface typeface = textPaint.getTypeface();
        if (typeface != null) {
            i = typeface.getStyle();
        } else {
            i = 0;
        }
        Typeface typeface2 = this.a;
        int i2 = i & (~typeface2.getStyle());
        if ((i2 & 1) != 0) {
            textPaint.setFakeBoldText(true);
        }
        if ((i2 & 2) != 0) {
            textPaint.setTextSkewX(-0.25f);
        }
        textPaint.setTypeface(typeface2);
    }

    @Override // android.text.style.CharacterStyle
    public final void updateDrawState(TextPaint textPaint) {
        a(textPaint);
    }

    @Override // android.text.style.MetricAffectingSpan
    public final void updateMeasureState(TextPaint textPaint) {
        a(textPaint);
    }
}
