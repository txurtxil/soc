package defpackage;

import android.text.InputFilter;
import android.text.method.PasswordTransformationMethod;
import android.text.method.TransformationMethod;
import android.util.SparseArray;
import android.widget.TextView;
/* renamed from: ce  reason: default package */
/* loaded from: classes.dex */
public final class ce extends gn {
    public final TextView k;
    public final yd l;
    public boolean m = true;

    public ce(TextView textView) {
        this.k = textView;
        this.l = new yd(textView);
    }

    @Override // defpackage.gn
    public final void C(boolean z) {
        if (z) {
            TextView textView = this.k;
            textView.setTransformationMethod(J(textView.getTransformationMethod()));
        }
    }

    @Override // defpackage.gn
    public final void D(boolean z) {
        this.m = z;
        TextView textView = this.k;
        textView.setTransformationMethod(J(textView.getTransformationMethod()));
        textView.setFilters(q(textView.getFilters()));
    }

    @Override // defpackage.gn
    public final TransformationMethod J(TransformationMethod transformationMethod) {
        if (this.m) {
            if (transformationMethod instanceof ge) {
                return transformationMethod;
            }
            if (transformationMethod instanceof PasswordTransformationMethod) {
                return transformationMethod;
            }
            return new ge(transformationMethod);
        } else if (transformationMethod instanceof ge) {
            return ((ge) transformationMethod).a;
        } else {
            return transformationMethod;
        }
    }

    @Override // defpackage.gn
    public final InputFilter[] q(InputFilter[] inputFilterArr) {
        if (!this.m) {
            SparseArray sparseArray = new SparseArray(1);
            for (int i = 0; i < inputFilterArr.length; i++) {
                InputFilter inputFilter = inputFilterArr[i];
                if (inputFilter instanceof yd) {
                    sparseArray.put(i, inputFilter);
                }
            }
            if (sparseArray.size() == 0) {
                return inputFilterArr;
            }
            int length = inputFilterArr.length;
            InputFilter[] inputFilterArr2 = new InputFilter[inputFilterArr.length - sparseArray.size()];
            int i2 = 0;
            for (int i3 = 0; i3 < length; i3++) {
                if (sparseArray.indexOfKey(i3) < 0) {
                    inputFilterArr2[i2] = inputFilterArr[i3];
                    i2++;
                }
            }
            return inputFilterArr2;
        }
        int length2 = inputFilterArr.length;
        int i4 = 0;
        while (true) {
            yd ydVar = this.l;
            if (i4 < length2) {
                if (inputFilterArr[i4] == ydVar) {
                    return inputFilterArr;
                }
                i4++;
            } else {
                InputFilter[] inputFilterArr3 = new InputFilter[inputFilterArr.length + 1];
                System.arraycopy(inputFilterArr, 0, inputFilterArr3, 0, length2);
                inputFilterArr3[length2] = ydVar;
                return inputFilterArr3;
            }
        }
    }

    @Override // defpackage.gn
    public final boolean r() {
        return this.m;
    }
}
