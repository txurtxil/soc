package defpackage;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import androidx.lifecycle.a;
/* renamed from: ka  reason: default package */
/* loaded from: classes.dex */
public abstract class ka extends Activity implements sk, zj {
    public a a;

    @Override // defpackage.zj
    public final boolean b(KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView != null && gn.l(decorView, keyEvent)) {
            return true;
        }
        return gn.m(this, decorView, this, keyEvent);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
        View decorView = getWindow().getDecorView();
        if (decorView != null && gn.l(decorView, keyEvent)) {
            return true;
        }
        return super.dispatchKeyShortcutEvent(keyEvent);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int i = lx.b;
        jx.b(this);
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        a aVar = this.a;
        aVar.getClass();
        aVar.d("markState");
        aVar.d("setCurrentState");
        aVar.f(mk.c);
        super.onSaveInstanceState(bundle);
    }
}
