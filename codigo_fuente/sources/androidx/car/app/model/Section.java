package androidx.car.app.model;

import androidx.car.app.serialization.ListDelegateImpl;
import defpackage.rj;
import java.util.Collections;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public abstract class Section<T extends rj> {
    private final bl mItemsDelegate;
    private final CarText mNoItemsMessage;
    private final CarText mTitle;

    public Section() {
        this.mItemsDelegate = new ListDelegateImpl(Collections.EMPTY_LIST);
        this.mTitle = null;
        this.mNoItemsMessage = null;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Section)) {
            return false;
        }
        Section section = (Section) obj;
        if (!Objects.equals(this.mItemsDelegate, section.mItemsDelegate) || !Objects.equals(this.mTitle, section.mTitle) || !Objects.equals(this.mNoItemsMessage, section.mNoItemsMessage)) {
            return false;
        }
        return true;
    }

    public bl getItemsDelegate() {
        return this.mItemsDelegate;
    }

    public CarText getNoItemsMessage() {
        return this.mNoItemsMessage;
    }

    public CarText getTitle() {
        return this.mTitle;
    }

    public int hashCode() {
        return Objects.hash(this.mItemsDelegate, this.mTitle, this.mNoItemsMessage);
    }

    public String toString() {
        return "Section";
    }

    public Section(p00 p00Var) {
        throw null;
    }
}
