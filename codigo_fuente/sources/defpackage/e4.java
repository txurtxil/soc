package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.ImageView;
import androidx.car.app.b;
import androidx.car.app.i;
import androidx.car.app.utils.e;
import java.util.Objects;
/* renamed from: e4  reason: default package */
/* loaded from: classes.dex */
public final class e4 {
    public int a;
    public final Object b;
    public Object c;

    public e4(Shader shader, ColorStateList colorStateList, int i) {
        this.b = shader;
        this.c = colorStateList;
        this.a = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f5, code lost:
        if (r11 == 1) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01f8, code lost:
        if (r11 == 2) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01fa, code lost:
        r16 = (int[]) r0.b;
        r17 = (float[]) r0.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x0208, code lost:
        if (r10 == 1) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x020a, code lost:
        if (r10 == 2) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x020c, code lost:
        r0 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0219, code lost:
        r0 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x021c, code lost:
        r0 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x021f, code lost:
        r11 = new android.graphics.LinearGradient(r21, r22, r26, r27, r16, r17, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0223, code lost:
        r11 = new android.graphics.SweepGradient(r8, r9, (int[]) r0.b, (float[]) r0.c);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x0235, code lost:
        if (r25 <= 0.0f) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0237, code lost:
        r20 = (int[]) r0.b;
        r21 = (float[]) r0.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0246, code lost:
        if (r10 == 1) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0249, code lost:
        if (r10 == 2) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x024b, code lost:
        r0 = android.graphics.Shader.TileMode.CLAMP;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0256, code lost:
        r0 = android.graphics.Shader.TileMode.MIRROR;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x0259, code lost:
        r0 = android.graphics.Shader.TileMode.REPEAT;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x025c, code lost:
        r11 = new android.graphics.RadialGradient(r8, r9, r25, r20, r21, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0268, code lost:
        return new defpackage.e4(r11, null, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0270, code lost:
        throw new org.xmlpull.v1.XmlPullParserException("<gradient> tag requires 'gradientRadius' attribute with radial type");
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01da, code lost:
        if (r13.size() <= 0) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01dc, code lost:
        r0 = new defpackage.ko(r13, r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x01e2, code lost:
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01e3, code lost:
        if (r0 == null) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01e7, code lost:
        if (r20 == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e9, code lost:
        r0 = new defpackage.ko(r6, r5, r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01ef, code lost:
        r0 = new defpackage.ko(r6, r12);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.e4 b(android.content.res.Resources r30, int r31, android.content.res.Resources.Theme r32) {
        /*
            Method dump skipped, instructions count: 665
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e4.b(android.content.res.Resources, int, android.content.res.Resources$Theme):e4");
    }

    public static e4 e(i iVar, int i) {
        String string;
        Objects.requireNonNull(iVar);
        if (i == 0) {
            string = "";
        } else {
            string = iVar.getString(i);
        }
        e4 e4Var = new e4(iVar);
        Objects.requireNonNull(string);
        e4Var.c = string;
        e4Var.a = 1;
        return e4Var;
    }

    public void a() {
        p40 p40Var;
        ImageView imageView = (ImageView) this.b;
        Drawable drawable = imageView.getDrawable();
        if (drawable != null) {
            xc.a(drawable);
        }
        if (drawable != null && (p40Var = (p40) this.c) != null) {
            z3.d(drawable, p40Var, imageView.getDrawableState());
        }
    }

    public boolean c() {
        ColorStateList colorStateList;
        if (((Shader) this.b) == null && (colorStateList = (ColorStateList) this.c) != null && colorStateList.isStateful()) {
            return true;
        }
        return false;
    }

    public void d(AttributeSet attributeSet, int i) {
        int resourceId;
        ImageView imageView = (ImageView) this.b;
        Context context = imageView.getContext();
        int[] iArr = vv.f;
        v5 C = v5.C(context, attributeSet, iArr, i);
        TypedArray typedArray = (TypedArray) C.b;
        u70.g(imageView, imageView.getContext(), iArr, attributeSet, (TypedArray) C.b, i);
        try {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null && (resourceId = typedArray.getResourceId(1, -1)) != -1 && (drawable = gn.p(imageView.getContext(), resourceId)) != null) {
                imageView.setImageDrawable(drawable);
            }
            if (drawable != null) {
                xc.a(drawable);
            }
            if (typedArray.hasValue(2)) {
                vi.c(imageView, C.q(2));
            }
            if (typedArray.hasValue(3)) {
                vi.d(imageView, xc.c(typedArray.getInt(3, -1), null));
            }
            C.E();
        } catch (Throwable th) {
            C.E();
            throw th;
        }
    }

    public void f() {
        String str = (String) this.c;
        if (str != null) {
            b bVar = (b) ((i) this.b).b(b.class);
            int i = this.a;
            bVar.getClass();
            e.d("showToast", new bi(bVar.c, "showToast", new g6(str, i)));
            return;
        }
        c2.g("setText must have been called");
    }

    public e4(ImageView imageView) {
        this.a = 0;
        this.b = imageView;
    }

    public e4(i iVar) {
        Objects.requireNonNull(iVar);
        this.b = iVar;
    }
}
