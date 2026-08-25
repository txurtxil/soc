package com.google.android.apps.auto.sdk;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import android.util.Log;
import java.util.Stack;
/* loaded from: classes.dex */
public class MenuController {
    b a;
    private final Context d;
    private final m f;
    private MenuAdapter g;
    private final Handler e = new Handler();
    Stack<Integer> c = new Stack<>();
    MenuAdapter b = new a((byte) 0);

    /* loaded from: classes.dex */
    public static final class a extends MenuAdapter {
        private a() {
        }

        @Override // com.google.android.apps.auto.sdk.MenuAdapter
        public final MenuItem getMenuItem(int i) {
            return null;
        }

        @Override // com.google.android.apps.auto.sdk.MenuAdapter
        public final int getMenuItemCount() {
            return 0;
        }

        public /* synthetic */ a(byte b) {
            this();
        }
    }

    /* loaded from: classes.dex */
    public final class b extends l {
        MenuAdapter a;

        public b(MenuAdapter menuAdapter) {
            MenuController.this = r1;
            this.a = menuAdapter;
        }

        public final void b(int i) {
            if (MenuController.this.c.size() >= 2) {
                CarToast.makeText(MenuController.this.d, "Cannot have more than 2 levels of submenu", 1).show();
                return;
            }
            if (this.a.a(i) == null) {
                MenuAdapter onLoadSubmenu = this.a.onLoadSubmenu(i);
                MenuAdapter menuAdapter = this.a;
                if (onLoadSubmenu == null) {
                    String valueOf = String.valueOf(menuAdapter);
                    StringBuilder sb = new StringBuilder(valueOf.length() + 52);
                    sb.append(valueOf);
                    sb.append(" onLoadSubmenu returns null for position ");
                    sb.append(i);
                    throw new IllegalStateException(sb.toString());
                }
                menuAdapter.a(i, onLoadSubmenu);
            }
            MenuAdapter a = this.a.a(i);
            a.a(this.a);
            MenuController.this.c.add(Integer.valueOf(i));
            a(a);
        }

        @Override // com.google.android.apps.auto.sdk.k
        public final void a(MenuItem menuItem) {
            String valueOf = String.valueOf(menuItem);
            StringBuilder sb = new StringBuilder(valueOf.length() + 14);
            sb.append("onItemClicked ");
            sb.append(valueOf);
            Log.d("CSL.MenuController", sb.toString());
            int a = menuItem.a();
            if (menuItem.getType() == 2) {
                b(a);
                return;
            }
            if (menuItem.getType() == 1) {
                a(a).a(menuItem.isChecked());
            }
            this.a.onMenuItemClicked(a);
        }

        @Override // com.google.android.apps.auto.sdk.k
        public final void c() {
            String valueOf = String.valueOf(this.a.a());
            StringBuilder sb = new StringBuilder(valueOf.length() + 21);
            sb.append("onBackClicked parent=");
            sb.append(valueOf);
            Log.d("CSL.MenuController", sb.toString());
            if (this.a.a() == null) {
                c2.g("onBackClicked when there is no parent submenu");
                return;
            }
            MenuController.this.c.pop();
            a(this.a.a());
        }

        @Override // com.google.android.apps.auto.sdk.k
        public final void d() {
        }

        @Override // com.google.android.apps.auto.sdk.k
        public final void e() {
        }

        @Override // com.google.android.apps.auto.sdk.k
        public final MenuItem a(int i) {
            MenuItem menuItem = this.a.getMenuItem(i);
            menuItem.a(i);
            return menuItem;
        }

        @Override // com.google.android.apps.auto.sdk.k
        public final boolean b() {
            Log.d("CSL.MenuController", "hasParent");
            return this.a.a() != null;
        }

        public final void a(MenuAdapter menuAdapter) {
            MenuAdapter menuAdapter2 = this.a;
            menuAdapter2.onExit();
            menuAdapter2.a = null;
            this.a = menuAdapter;
            menuAdapter.a = MenuController.this;
            menuAdapter.onEnter();
        }

        public static /* synthetic */ void a(b bVar, int i) {
            bVar.b(i);
        }

        @Override // com.google.android.apps.auto.sdk.k
        public final int a() {
            return this.a.getMenuItemCount();
        }
    }

    public MenuController(Context context, m mVar) {
        this.d = context;
        this.f = mVar;
    }

    public final void a(MenuAdapter menuAdapter, int i) {
        String valueOf = String.valueOf(menuAdapter);
        StringBuilder sb = new StringBuilder(valueOf.length() + 48);
        sb.append("notifyItemChanged ");
        sb.append(valueOf);
        sb.append(", displayPosition: ");
        sb.append(i);
        Log.d("CSL.MenuController", sb.toString());
        this.e.post(new y(this, menuAdapter, i));
    }

    public final void b() {
        try {
            this.f.d();
        } catch (RemoteException e) {
            Log.e("CSL.MenuController", "Error showing menu button", e);
        }
    }

    public final void c() {
        try {
            this.f.e();
        } catch (RemoteException e) {
            Log.e("CSL.MenuController", "Error showing menu button", e);
        }
    }

    public void hideMenuButton() {
        try {
            this.f.c();
        } catch (RemoteException e) {
            Log.e("CSL.MenuController", "Error hide menu button", e);
        }
    }

    public void setRootMenuAdapter(MenuAdapter menuAdapter) {
        String valueOf = String.valueOf(menuAdapter);
        StringBuilder sb = new StringBuilder(valueOf.length() + 19);
        sb.append("setRootMenuAdapter ");
        sb.append(valueOf);
        Log.d("CSL.MenuController", sb.toString());
        if (menuAdapter == null) {
            menuAdapter = this.b;
        } else {
            menuAdapter.a((MenuAdapter) null);
        }
        this.g = menuAdapter;
        if (this.a == null) {
            b bVar = new b(this.b);
            this.a = bVar;
            try {
                this.f.a(bVar);
            } catch (RemoteException e) {
                Log.e("CSL.MenuController", "Error setting menu callbacks", e);
            }
        }
    }

    public void showMenuButton() {
        try {
            this.f.b();
        } catch (RemoteException e) {
            Log.e("CSL.MenuController", "Error showing menu button", e);
        }
    }

    public final void a() {
        Log.d("CSL.MenuController", "onDrawerOpening");
        this.c.clear();
        b bVar = this.a;
        if (bVar != null) {
            bVar.a(this.g);
        }
    }

    public final void a(MenuAdapter menuAdapter) {
        String valueOf = String.valueOf(menuAdapter);
        StringBuilder sb = new StringBuilder(valueOf.length() + 21);
        sb.append("notifyDataSetChanged ");
        sb.append(valueOf);
        Log.d("CSL.MenuController", sb.toString());
        this.e.post(new x(this, menuAdapter));
    }
}
