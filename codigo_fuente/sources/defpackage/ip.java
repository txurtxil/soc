package defpackage;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import androidx.appcompat.view.menu.ListMenuItemView;
/* renamed from: ip  reason: default package */
/* loaded from: classes.dex */
public final class ip extends dd {
    public final int m;
    public final int n;
    public vo o;
    public wo q;

    public ip(Context context, boolean z) {
        super(context, z);
        if (1 == hp.a(context.getResources().getConfiguration())) {
            this.m = 21;
            this.n = 22;
            return;
        }
        this.m = 22;
        this.n = 21;
    }

    @Override // defpackage.dd, android.view.View
    public final boolean onHoverEvent(MotionEvent motionEvent) {
        po poVar;
        int i;
        wo woVar;
        int pointToPosition;
        int i2;
        if (this.o != null) {
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                i = headerViewListAdapter.getHeadersCount();
                poVar = (po) headerViewListAdapter.getWrappedAdapter();
            } else {
                poVar = (po) adapter;
                i = 0;
            }
            if (motionEvent.getAction() != 10 && (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) != -1 && (i2 = pointToPosition - i) >= 0 && i2 < poVar.getCount()) {
                woVar = poVar.getItem(i2);
            } else {
                woVar = null;
            }
            wo woVar2 = this.q;
            if (woVar2 != woVar) {
                so soVar = poVar.a;
                if (woVar2 != null) {
                    this.o.f(soVar, woVar2);
                }
                this.q = woVar;
                if (woVar != null) {
                    this.o.j(soVar, woVar);
                }
            }
        }
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i, KeyEvent keyEvent) {
        po poVar;
        ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
        if (listMenuItemView != null && i == this.m) {
            if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
            }
            return true;
        } else if (listMenuItemView != null && i == this.n) {
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            if (adapter instanceof HeaderViewListAdapter) {
                poVar = (po) ((HeaderViewListAdapter) adapter).getWrappedAdapter();
            } else {
                poVar = (po) adapter;
            }
            poVar.a.c(false);
            return true;
        } else {
            return super.onKeyDown(i, keyEvent);
        }
    }

    public void setHoverListener(vo voVar) {
        this.o = voVar;
    }

    @Override // defpackage.dd, android.widget.AbsListView
    public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
        super.setSelector(drawable);
    }
}
