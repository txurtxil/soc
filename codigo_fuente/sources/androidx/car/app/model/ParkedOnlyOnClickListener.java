package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class ParkedOnlyOnClickListener implements gs {
    private final gs mListener;

    private ParkedOnlyOnClickListener(gs gsVar) {
        this.mListener = gsVar;
    }

    public static ParkedOnlyOnClickListener create(gs gsVar) {
        Objects.requireNonNull(gsVar);
        return new ParkedOnlyOnClickListener(gsVar);
    }

    @Override // defpackage.gs
    public void onClick() {
        this.mListener.onClick();
    }
}
