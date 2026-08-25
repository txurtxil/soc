package androidx.car.app.model;

import java.util.Collections;
import java.util.List;
import java.util.Objects;
@e9
/* loaded from: classes.dex */
public final class ItemList {
    private final List<rj> mItems;
    private final CarText mNoItemsMessage;
    private final ls mOnItemVisibilityChangedDelegate;
    private final qs mOnSelectedDelegate;
    private final int mSelectedIndex;

    public ItemList(sj sjVar) {
        this.mSelectedIndex = sjVar.b;
        this.mItems = s8.C(sjVar.a);
        this.mNoItemsMessage = sjVar.e;
        this.mOnSelectedDelegate = sjVar.c;
        this.mOnItemVisibilityChangedDelegate = sjVar.d;
    }

    public static fs getOnClickDelegate(rj rjVar) {
        if (rjVar instanceof Row) {
            return ((Row) rjVar).getOnClickDelegate();
        }
        if (rjVar instanceof GridItem) {
            return ((GridItem) rjVar).getOnClickDelegate();
        }
        return null;
    }

    public static Toggle getToggle(rj rjVar) {
        if (rjVar instanceof Row) {
            return ((Row) rjVar).getToggle();
        }
        return null;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ItemList)) {
            return false;
        }
        ItemList itemList = (ItemList) obj;
        if (this.mSelectedIndex == itemList.mSelectedIndex && Objects.equals(this.mItems, itemList.mItems)) {
            if (this.mOnSelectedDelegate == null) {
                z = true;
            } else {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            if (itemList.mOnSelectedDelegate == null) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (valueOf.equals(Boolean.valueOf(z2))) {
                if (this.mOnItemVisibilityChangedDelegate == null) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                Boolean valueOf2 = Boolean.valueOf(z3);
                if (itemList.mOnItemVisibilityChangedDelegate == null) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if (valueOf2.equals(Boolean.valueOf(z4)) && Objects.equals(this.mNoItemsMessage, itemList.mNoItemsMessage)) {
                    return true;
                }
            }
        }
        return false;
    }

    public List<rj> getItems() {
        List<rj> list = this.mItems;
        if (list != null) {
            return list;
        }
        return Collections.EMPTY_LIST;
    }

    public CarText getNoItemsMessage() {
        return this.mNoItemsMessage;
    }

    public ls getOnItemVisibilityChangedDelegate() {
        return this.mOnItemVisibilityChangedDelegate;
    }

    public qs getOnSelectedDelegate() {
        return this.mOnSelectedDelegate;
    }

    public int getSelectedIndex() {
        return this.mSelectedIndex;
    }

    public int hashCode() {
        boolean z;
        Integer valueOf = Integer.valueOf(this.mSelectedIndex);
        List<rj> list = this.mItems;
        boolean z2 = false;
        if (this.mOnSelectedDelegate == null) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf2 = Boolean.valueOf(z);
        if (this.mOnItemVisibilityChangedDelegate == null) {
            z2 = true;
        }
        return Objects.hash(valueOf, list, valueOf2, Boolean.valueOf(z2), this.mNoItemsMessage);
    }

    public sj toBuilder() {
        return new sj(this);
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder("[ items: ");
        List<rj> list = this.mItems;
        if (list != null) {
            str = list.toString();
        } else {
            str = null;
        }
        sb.append(str);
        sb.append(", selected: ");
        sb.append(this.mSelectedIndex);
        sb.append("]");
        return sb.toString();
    }

    private ItemList() {
        this.mSelectedIndex = 0;
        this.mItems = Collections.EMPTY_LIST;
        this.mNoItemsMessage = null;
        this.mOnSelectedDelegate = null;
        this.mOnItemVisibilityChangedDelegate = null;
    }
}
