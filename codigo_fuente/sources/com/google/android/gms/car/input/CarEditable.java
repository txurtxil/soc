package com.google.android.gms.car.input;

import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
/* loaded from: classes.dex */
public interface CarEditable {
    InputConnection onCreateInputConnection(EditorInfo editorInfo);

    void setCarEditableListener(CarEditableListener carEditableListener);

    void setInputEnabled(boolean z);
}
