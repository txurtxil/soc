package com.google.android.gms.car;
/* loaded from: classes.dex */
public class CarNotSupportedException extends Exception {
    private static final long serialVersionUID = 8656048008787472565L;

    public CarNotSupportedException() {
    }

    public CarNotSupportedException(Exception exc) {
        super(exc);
    }

    public CarNotSupportedException(String str) {
        super(str);
    }

    public CarNotSupportedException(String str, Throwable th) {
        super(str, th);
    }
}
