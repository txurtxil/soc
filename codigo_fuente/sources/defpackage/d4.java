package defpackage;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.widget.ImageButton;
import android.widget.ImageView;
/* renamed from: d4  reason: default package */
/* loaded from: classes.dex */
public class d4 extends ImageButton {
    public final z1 a;
    public final e4 b;
    public boolean c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d4(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        o40.a(context);
        this.c = false;
        m40.a(this, getContext());
        z1 z1Var = new z1(this);
        this.a = z1Var;
        z1Var.k(attributeSet, i);
        e4 e4Var = new e4(this);
        this.b = e4Var;
        e4Var.d(attributeSet, i);
    }

    @Override // android.widget.ImageView, android.view.View
    public final void drawableStateChanged() {
        super.drawableStateChanged();
        z1 z1Var = this.a;
        if (z1Var != null) {
            z1Var.a();
        }
        e4 e4Var = this.b;
        if (e4Var != null) {
            e4Var.a();
        }
    }

    public ColorStateList getSupportBackgroundTintList() {
        z1 z1Var = this.a;
        if (z1Var != null) {
            return z1Var.h();
        }
        return null;
    }

    public PorterDuff.Mode getSupportBackgroundTintMode() {
        z1 z1Var = this.a;
        if (z1Var != null) {
            return z1Var.i();
        }
        return null;
    }

    public ColorStateList getSupportImageTintList() {
        p40 p40Var;
        e4 e4Var = this.b;
        if (e4Var == null || (p40Var = (p40) e4Var.c) == null) {
            return null;
        }
        return p40Var.a;
    }

    public PorterDuff.Mode getSupportImageTintMode() {
        p40 p40Var;
        e4 e4Var = this.b;
        if (e4Var == null || (p40Var = (p40) e4Var.c) == null) {
            return null;
        }
        return p40Var.b;
    }

    @Override // android.widget.ImageView, android.view.View
    public final boolean hasOverlappingRendering() {
        if (!(((ImageView) this.b.b).getBackground() instanceof RippleDrawable) && super.hasOverlappingRendering()) {
            return true;
        }
        return false;
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        z1 z1Var = this.a;
        if (z1Var != null) {
            z1Var.m();
        }
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        z1 z1Var = this.a;
        if (z1Var != null) {
            z1Var.n(i);
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        e4 e4Var = this.b;
        if (e4Var != null) {
            e4Var.a();
        }
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        e4 e4Var = this.b;
        if (e4Var != null && drawable != null && !this.c) {
            e4Var.a = drawable.getLevel();
        }
        super.setImageDrawable(drawable);
        if (e4Var != null) {
            e4Var.a();
            if (!this.c) {
                ImageView imageView = (ImageView) e4Var.b;
                if (imageView.getDrawable() != null) {
                    imageView.getDrawable().setLevel(e4Var.a);
                }
            }
        }
    }

    @Override // android.widget.ImageView
    public void setImageLevel(int i) {
        super.setImageLevel(i);
        this.c = true;
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        e4 e4Var = this.b;
        ImageView imageView = (ImageView) e4Var.b;
        if (i != 0) {
            Drawable p = gn.p(imageView.getContext(), i);
            if (p != null) {
                xc.a(p);
            }
            imageView.setImageDrawable(p);
        } else {
            imageView.setImageDrawable(null);
        }
        e4Var.a();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        e4 e4Var = this.b;
        if (e4Var != null) {
            e4Var.a();
        }
    }

    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        z1 z1Var = this.a;
        if (z1Var != null) {
            z1Var.s(colorStateList);
        }
    }

    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        z1 z1Var = this.a;
        if (z1Var != null) {
            z1Var.t(mode);
        }
    }

    public void setSupportImageTintList(ColorStateList colorStateList) {
        e4 e4Var = this.b;
        if (e4Var != null) {
            if (((p40) e4Var.c) == null) {
                e4Var.c = new Object();
            }
            p40 p40Var = (p40) e4Var.c;
            p40Var.a = colorStateList;
            p40Var.d = true;
            e4Var.a();
        }
    }

    public void setSupportImageTintMode(PorterDuff.Mode mode) {
        e4 e4Var = this.b;
        if (e4Var != null) {
            if (((p40) e4Var.c) == null) {
                e4Var.c = new Object();
            }
            p40 p40Var = (p40) e4Var.c;
            p40Var.b = mode;
            p40Var.c = true;
            e4Var.a();
        }
    }
}
