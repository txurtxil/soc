package com.google.android.apps.auto.sdk;

import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.google.android.gms.car.input.CarEditable;
import com.google.android.gms.car.input.CarEditableListener;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class w implements CarEditable {
    private final CarUiController a;

    public w(CarUiController carUiController) {
        this.a = carUiController;
    }

    @Override // com.google.android.gms.car.input.CarEditable
    public final InputConnection onCreateInputConnection(EditorInfo editorInfo) {
        return this.a.a(editorInfo);
    }

    @Override // com.google.android.gms.car.input.CarEditable
    public final void setCarEditableListener(CarEditableListener carEditableListener) {
    }

    @Override // com.google.android.gms.car.input.CarEditable
    public final void setInputEnabled(boolean z) {
    }
}
