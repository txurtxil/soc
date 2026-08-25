package androidx.car.app.model;

import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class ClickableSpan extends CarSpan {
    private final fs mOnClickDelegate;

    private ClickableSpan(gs gsVar) {
        this.mOnClickDelegate = OnClickDelegateImpl.create(gsVar);
    }

    public static ClickableSpan create(gs gsVar) {
        Objects.requireNonNull(gsVar);
        return new ClickableSpan(gsVar);
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2 = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ClickableSpan)) {
            return false;
        }
        ClickableSpan clickableSpan = (ClickableSpan) obj;
        if (this.mOnClickDelegate == null) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        if (clickableSpan.mOnClickDelegate != null) {
            z2 = false;
        }
        return valueOf.equals(Boolean.valueOf(z2));
    }

    public fs getOnClickDelegate() {
        fs fsVar = this.mOnClickDelegate;
        Objects.requireNonNull(fsVar);
        return fsVar;
    }

    public int hashCode() {
        boolean z;
        if (this.mOnClickDelegate == null) {
            z = true;
        } else {
            z = false;
        }
        return Objects.hash(Boolean.valueOf(z));
    }

    public String toString() {
        return "[clickable]";
    }

    private ClickableSpan() {
        this.mOnClickDelegate = null;
    }
}
