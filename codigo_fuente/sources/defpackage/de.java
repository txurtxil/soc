package defpackage;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;
/* renamed from: de  reason: default package */
/* loaded from: classes.dex */
public final class de extends gn {
    public final ce k;

    public de(TextView textView) {
        this.k = new ce(textView);
    }

    @Override // defpackage.gn
    public final void C(boolean z) {
        boolean z2;
        if (td.j != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (!z2) {
            return;
        }
        this.k.C(z);
    }

    @Override // defpackage.gn
    public final void D(boolean z) {
        boolean z2;
        if (td.j != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        ce ceVar = this.k;
        if (!z2) {
            ceVar.m = z;
        } else {
            ceVar.D(z);
        }
    }

    @Override // defpackage.gn
    public final TransformationMethod J(TransformationMethod transformationMethod) {
        boolean z;
        if (td.j != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return transformationMethod;
        }
        return this.k.J(transformationMethod);
    }

    @Override // defpackage.gn
    public final InputFilter[] q(InputFilter[] inputFilterArr) {
        boolean z;
        if (td.j != null) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            return inputFilterArr;
        }
        return this.k.q(inputFilterArr);
    }

    @Override // defpackage.gn
    public final boolean r() {
        return this.k.m;
    }
}
