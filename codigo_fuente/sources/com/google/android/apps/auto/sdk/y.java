package com.google.android.apps.auto.sdk;

import android.os.RemoteException;
import android.util.Log;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class y implements Runnable {
    private /* synthetic */ MenuAdapter a;
    private /* synthetic */ int b;
    private /* synthetic */ MenuController c;

    public y(MenuController menuController, MenuAdapter menuAdapter, int i) {
        this.c = menuController;
        this.a = menuAdapter;
        this.b = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        m mVar;
        MenuAdapter menuAdapter = this.a;
        MenuController menuController = this.c;
        if (menuAdapter != menuController.a.a) {
            return;
        }
        try {
            mVar = menuController.f;
            mVar.a(this.b);
        } catch (RemoteException e) {
            Log.e("CSL.MenuController", "Error notifying item changed", e);
        }
    }
}
