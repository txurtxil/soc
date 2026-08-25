package defpackage;

import android.text.Editable;
import android.text.method.KeyListener;
import android.text.method.MetaKeyKeyListener;
import android.view.KeyEvent;
import android.view.View;
/* renamed from: zd  reason: default package */
/* loaded from: classes.dex */
public final class zd implements KeyListener {
    public final KeyListener a;

    public zd(KeyListener keyListener) {
        this.a = keyListener;
    }

    @Override // android.text.method.KeyListener
    public final void clearMetaKeyState(View view, Editable editable, int i) {
        this.a.clearMetaKeyState(view, editable, i);
    }

    @Override // android.text.method.KeyListener
    public final int getInputType() {
        return this.a.getInputType();
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyDown(View view, Editable editable, int i, KeyEvent keyEvent) {
        boolean c;
        if (i != 67) {
            if (i != 112) {
                c = false;
            } else {
                c = ko.c(editable, keyEvent, true);
            }
        } else {
            c = ko.c(editable, keyEvent, false);
        }
        if (c) {
            MetaKeyKeyListener.adjustMetaAfterKeypress(editable);
            return true;
        } else if (this.a.onKeyDown(view, editable, i, keyEvent)) {
            return true;
        } else {
            return false;
        }
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyOther(View view, Editable editable, KeyEvent keyEvent) {
        return this.a.onKeyOther(view, editable, keyEvent);
    }

    @Override // android.text.method.KeyListener
    public final boolean onKeyUp(View view, Editable editable, int i, KeyEvent keyEvent) {
        return this.a.onKeyUp(view, editable, i, keyEvent);
    }
}
