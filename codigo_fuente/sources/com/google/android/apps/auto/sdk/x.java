package com.google.android.apps.auto.sdk;

import android.os.RemoteException;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class x implements Runnable {
    private /* synthetic */ MenuAdapter a;
    private /* synthetic */ MenuController b;

    public x(MenuController menuController, MenuAdapter menuAdapter) {
        this.b = menuController;
        this.a = menuAdapter;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m mVar;
        MenuAdapter menuAdapter = this.a;
        MenuController menuController = this.b;
        if (menuAdapter != menuController.a.a) {
            return;
        }
        try {
            mVar = menuController.f;
            mVar.a();
        } catch (RemoteException e) {
            Log.e("CSL.MenuController", "Error notifying data set changed", e);
        }
    }
}
