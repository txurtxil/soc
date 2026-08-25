package com.google.android.apps.auto.sdk;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.car.input.InputManager;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u {
    private final InputManager a;
    private final CarUiController b;
    private final i c;

    public u(i iVar, InputManager inputManager, CarUiController carUiController) {
        this.c = iVar;
        this.a = inputManager;
        this.b = carUiController;
        try {
            iVar.a(new v(this));
        } catch (RemoteException e) {
            Log.e("CSL.ImeController", "Error setting ImeCallbacks", e);
        }
    }

    public final boolean a() {
        return this.a.isInputActive();
    }

    public final void b() {
        this.a.startInput(new w(this.b));
    }

    public final void c() {
        this.a.stopInput();
    }
}
