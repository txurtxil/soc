package com.google.android.apps.auto.sdk;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.apps.auto.sdk.MenuController;
/* loaded from: classes.dex */
public class DrawerController {
    private final e a;
    private MenuController b;
    private DrawerCallback c;

    /* loaded from: classes.dex */
    public final class a extends d {
        private a() {
        }

        @Override // com.google.android.apps.auto.sdk.c
        public final void a() {
            if (DrawerController.this.c != null) {
                DrawerController.this.c.onDrawerOpened();
            }
        }

        @Override // com.google.android.apps.auto.sdk.c
        public final void b() {
            DrawerController.this.b.a();
        }

        @Override // com.google.android.apps.auto.sdk.c
        public final void c() {
            MenuController menuController = DrawerController.this.b;
            Log.d("CSL.MenuController", "onDrawerClosed");
            menuController.c.clear();
            MenuController.b bVar = menuController.a;
            if (bVar != null) {
                bVar.a(menuController.b);
            }
            if (DrawerController.this.c != null) {
                DrawerController.this.c.onDrawerClosed();
            }
        }

        @Override // com.google.android.apps.auto.sdk.c
        public final void d() {
        }

        public /* synthetic */ a(DrawerController drawerController, byte b) {
            this();
        }
    }

    public DrawerController(e eVar, MenuController menuController) {
        this.a = eVar;
        this.b = menuController;
        try {
            eVar.a(new a(this, (byte) 0));
        } catch (RemoteException e) {
            Log.e("CSL.DrawerController", "Error setting DrawerCallbacks", e);
        }
    }

    public void closeDrawer() {
        Log.d("CSL.DrawerController", "closeDrawer");
        try {
            this.a.d();
        } catch (RemoteException e) {
            Log.e("CSL.DrawerController", "Error closing title", e);
        }
    }

    public boolean isDrawerOpen() {
        Log.d("CSL.DrawerController", "isDrawerOpen");
        try {
            return this.a.a();
        } catch (RemoteException e) {
            Log.e("CSL.DrawerController", "Error querying drawer visibility", e);
            return false;
        }
    }

    public boolean isDrawerVisible() {
        Log.d("CSL.DrawerController", "isDrawerVisible");
        try {
            return this.a.b();
        } catch (RemoteException e) {
            Log.e("CSL.DrawerController", "Error querying drawer visibility state", e);
            return false;
        }
    }

    public void openDrawer() {
        Log.d("CSL.DrawerController", "openDrawer");
        try {
            this.a.c();
        } catch (RemoteException e) {
            Log.e("CSL.DrawerController", "Error opening drawer", e);
        }
    }

    public void setDrawerCallback(DrawerCallback drawerCallback) {
        this.c = drawerCallback;
    }

    public void setScrimColor(int i) {
        StringBuilder sb = new StringBuilder(25);
        sb.append("setScrimColor ");
        sb.append(i);
        Log.d("CSL.DrawerController", sb.toString());
        try {
            this.a.a(i);
        } catch (RemoteException e) {
            Log.e("CSL.DrawerController", "Error setting scrim color", e);
        }
    }
}
