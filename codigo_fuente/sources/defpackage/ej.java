package defpackage;

import android.os.Build;
import android.os.Bundle;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.view.inputmethod.InputContentInfo;
/* renamed from: ej  reason: default package */
/* loaded from: classes.dex */
public final class ej extends InputConnectionWrapper {
    public final /* synthetic */ b2 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ej(InputConnection inputConnection, b2 b2Var) {
        super(inputConnection, false);
        this.a = b2Var;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean commitContent(InputContentInfo inputContentInfo, int i, Bundle bundle) {
        c9 c9Var = null;
        if (inputContentInfo != null && Build.VERSION.SDK_INT >= 25) {
            c9Var = new c9(17, new gj(inputContentInfo));
        }
        if (this.a.f(c9Var, i, bundle)) {
            return true;
        }
        return super.commitContent(inputContentInfo, i, bundle);
    }
}
