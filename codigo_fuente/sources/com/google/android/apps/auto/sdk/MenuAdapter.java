package com.google.android.apps.auto.sdk;

import android.util.Log;
import android.util.SparseArray;
/* loaded from: classes.dex */
public abstract class MenuAdapter {
    MenuController a;
    private final SparseArray<MenuAdapter> b = new SparseArray<>();
    private MenuAdapter c;

    public final MenuAdapter a(int i) {
        return this.b.get(i);
    }

    public abstract MenuItem getMenuItem(int i);

    public abstract int getMenuItemCount();

    public void hideLoadingIndicator() {
        MenuController menuController = this.a;
        if (menuController == null) {
            Log.w("CSL.MenuAdapter", "Cannot show the loading indicator because thisMenuAdapter is not connected to a root menu");
        } else {
            menuController.c();
        }
    }

    public void notifyDataSetChanged() {
        if (this.a == null) {
            Log.w("CSL.MenuAdapter", "Cannot notify dataset changed because this MenuAdapter is not connected to a root menu");
            return;
        }
        this.b.clear();
        this.a.a(this);
    }

    public void notifyItemChanged(int i) {
        if (this.a == null) {
            Log.w("CSL.MenuAdapter", "Cannot notify item changed because this MenuAdapter is not connected to a root menu");
            return;
        }
        this.b.put(i, null);
        this.a.a(this, i);
    }

    public void onEnter() {
    }

    public void onExit() {
    }

    public MenuAdapter onLoadSubmenu(int i) {
        return null;
    }

    public void onMenuItemClicked(int i) {
    }

    public void showLoadingIndicator() {
        MenuController menuController = this.a;
        if (menuController == null) {
            Log.w("CSL.MenuAdapter", "Cannot show the loading indicator because thisMenuAdapter is not connected to a root menu");
        } else {
            menuController.b();
        }
    }

    public final MenuAdapter a() {
        return this.c;
    }

    public final void a(int i, MenuAdapter menuAdapter) {
        this.b.put(i, menuAdapter);
    }

    public final void a(MenuAdapter menuAdapter) {
        this.c = menuAdapter;
    }
}
