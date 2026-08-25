package com.google.android.gms.car.input;
/* loaded from: classes.dex */
public interface InputManager {
    boolean isCurrentCarEditable(CarEditable carEditable);

    boolean isInputActive();

    boolean isValid();

    void startInput(CarEditable carEditable);

    void stopInput();
}
