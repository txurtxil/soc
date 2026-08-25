package defpackage;

import androidx.car.app.model.CarText;
import androidx.car.app.model.ItemList;
import java.util.ArrayList;
/* renamed from: sj  reason: default package */
/* loaded from: classes.dex */
public final class sj {
    public final ArrayList a;
    public final int b;
    public final qs c;
    public final ls d;
    public final CarText e;

    public sj(ItemList itemList) {
        this.b = itemList.getSelectedIndex();
        this.c = itemList.getOnSelectedDelegate();
        this.d = itemList.getOnItemVisibilityChangedDelegate();
        this.e = itemList.getNoItemsMessage();
        this.a = new ArrayList(itemList.getItems());
    }
}
