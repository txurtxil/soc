package defpackage;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.style.ReplacementSpan;
import java.nio.ByteBuffer;
/* renamed from: c60  reason: default package */
/* loaded from: classes.dex */
public final class c60 extends ReplacementSpan {
    public final ae b;
    public final Paint.FontMetricsInt a = new Paint.FontMetricsInt();
    public float c = 1.0f;

    public c60(ae aeVar) {
        qj.d(aeVar, "metadata cannot be null");
        this.b = aeVar;
    }

    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        td.a().getClass();
        ae aeVar = this.b;
        vp vpVar = aeVar.b;
        Typeface typeface = paint.getTypeface();
        paint.setTypeface((Typeface) vpVar.d);
        int i6 = aeVar.a * 2;
        canvas.drawText((char[]) vpVar.b, i6, 2, f, i4, paint);
        paint.setTypeface(typeface);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        short s;
        Paint.FontMetricsInt fontMetricsInt2 = this.a;
        paint.getFontMetricsInt(fontMetricsInt2);
        float abs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        ae aeVar = this.b;
        sp b = aeVar.b();
        int a = b.a(14);
        short s2 = 0;
        if (a != 0) {
            s = ((ByteBuffer) b.d).getShort(a + b.a);
        } else {
            s = 0;
        }
        this.c = abs / s;
        sp b2 = aeVar.b();
        int a2 = b2.a(14);
        if (a2 != 0) {
            ((ByteBuffer) b2.d).getShort(a2 + b2.a);
        }
        sp b3 = aeVar.b();
        int a3 = b3.a(12);
        if (a3 != 0) {
            s2 = ((ByteBuffer) b3.d).getShort(a3 + b3.a);
        }
        short s3 = (short) (s2 * this.c);
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s3;
    }
}
