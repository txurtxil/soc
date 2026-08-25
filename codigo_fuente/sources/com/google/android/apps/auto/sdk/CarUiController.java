package com.google.android.apps.auto.sdk;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import com.google.android.apps.auto.sdk.MenuController;
import com.google.android.gms.car.input.InputManager;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
/* loaded from: classes.dex */
public class CarUiController extends z {
    private StatusBarController b;
    private DrawerController c;
    private MenuController d;
    private SearchController e;
    private int f;
    private Method g;
    private Method h;
    private Method i;
    private Method j;
    private Method k;
    private Method l;
    private Method m;
    private Method n;
    private Method o;
    private Method p;
    private Method q;
    private Method r;
    private Method s;
    private Method t;

    public CarUiController(aa aaVar, InputManager inputManager, LayoutInflater.Factory factory) {
        super(aaVar, "com.google.android.gearhead.appdecor.CarUiEntry", aaVar.b(), aaVar.a(), factory);
        s tVar;
        m nVar;
        e fVar;
        i jVar;
        this.f = ((Integer) a(this.l, new Object[0])).intValue();
        IBinder iBinder = (IBinder) a(this.o, new Object[0]);
        q qVar = null;
        if (iBinder == null) {
            tVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.apps.auto.sdk.IStatusBarController");
            tVar = (queryLocalInterface == null || !(queryLocalInterface instanceof s)) ? new t(iBinder) : (s) queryLocalInterface;
        }
        this.b = new StatusBarController(tVar);
        IBinder iBinder2 = (IBinder) a(this.q, new Object[0]);
        if (iBinder2 == null) {
            nVar = null;
        } else {
            IInterface queryLocalInterface2 = iBinder2.queryLocalInterface("com.google.android.apps.auto.sdk.IMenuController");
            nVar = (queryLocalInterface2 == null || !(queryLocalInterface2 instanceof m)) ? new n(iBinder2) : (m) queryLocalInterface2;
        }
        this.d = new MenuController(aaVar.b(), nVar);
        IBinder iBinder3 = (IBinder) a(this.p, new Object[0]);
        if (iBinder3 == null) {
            fVar = null;
        } else {
            IInterface queryLocalInterface3 = iBinder3.queryLocalInterface("com.google.android.apps.auto.sdk.IDrawerController");
            fVar = (queryLocalInterface3 == null || !(queryLocalInterface3 instanceof e)) ? new f(iBinder3) : (e) queryLocalInterface3;
        }
        this.c = new DrawerController(fVar, this.d);
        IBinder iBinder4 = (IBinder) a(this.r, new Object[0]);
        if (iBinder4 == null) {
            jVar = null;
        } else {
            IInterface queryLocalInterface4 = iBinder4.queryLocalInterface("com.google.android.apps.auto.sdk.IImeController");
            jVar = (queryLocalInterface4 == null || !(queryLocalInterface4 instanceof i)) ? new j(iBinder4) : (i) queryLocalInterface4;
        }
        new u(jVar, inputManager, this);
        IBinder iBinder5 = (IBinder) a(this.s, new Object[0]);
        if (iBinder5 != null) {
            IInterface queryLocalInterface5 = iBinder5.queryLocalInterface("com.google.android.apps.auto.sdk.ISearchController");
            qVar = (queryLocalInterface5 == null || !(queryLocalInterface5 instanceof q)) ? new r(iBinder5) : (q) queryLocalInterface5;
        }
        this.e = new SearchController(qVar);
    }

    @Override // com.google.android.apps.auto.sdk.z
    public final void a(Method[] methodArr) {
        Log.d("CSL.CarUiController", "Initializing " + this.a);
        int length = methodArr.length;
        for (int i = 0; i < length; i++) {
            Method method = methodArr[i];
            if (Modifier.isPublic(method.getModifiers())) {
                String name = method.getName();
                name.getClass();
                char c = 65535;
                switch (name.hashCode()) {
                    case -2094893759:
                        if (name.equals("startCarActivity")) {
                            c = 0;
                            break;
                        }
                        break;
                    case -1491459488:
                        if (name.equals("onSaveInstanceState")) {
                            c = 1;
                            break;
                        }
                        break;
                    case -1336895037:
                        if (name.equals("onStart")) {
                            c = 2;
                            break;
                        }
                        break;
                    case -1186339443:
                        if (name.equals("onRestoreInstanceState")) {
                            c = 3;
                            break;
                        }
                        break;
                    case -1012956543:
                        if (name.equals("onStop")) {
                            c = 4;
                            break;
                        }
                        break;
                    case -369900066:
                        if (name.equals("requestXRayScan")) {
                            c = 5;
                            break;
                        }
                        break;
                    case 727922513:
                        if (name.equals("getMenuController")) {
                            c = 6;
                            break;
                        }
                        break;
                    case 808969955:
                        if (name.equals("getDrawerController")) {
                            c = 7;
                            break;
                        }
                        break;
                    case 852203143:
                        if (name.equals("getImeController")) {
                            c = '\b';
                            break;
                        }
                        break;
                    case 983415097:
                        if (name.equals("getContentContainerId")) {
                            c = '\t';
                            break;
                        }
                        break;
                    case 1272509941:
                        if (name.equals("getAppLayout")) {
                            c = '\n';
                            break;
                        }
                        break;
                    case 1321081562:
                        if (name.equals("getSearchController")) {
                            c = 11;
                            break;
                        }
                        break;
                    case 1356972381:
                        if (name.equals("onConfigurationChanged")) {
                            c = '\f';
                            break;
                        }
                        break;
                    case 1861367303:
                        if (name.equals("getStatusBarController")) {
                            c = '\r';
                            break;
                        }
                        break;
                    case 2060811692:
                        if (name.equals("createInputConnection")) {
                            c = 14;
                            break;
                        }
                        break;
                }
                switch (c) {
                    case 0:
                        this.n = method;
                        continue;
                    case 1:
                        this.j = method;
                        continue;
                    case 2:
                        this.g = method;
                        continue;
                    case 3:
                        this.i = method;
                        continue;
                    case 4:
                        this.h = method;
                        continue;
                    case 5:
                        break;
                    case 6:
                        this.q = method;
                        continue;
                    case 7:
                        this.p = method;
                        continue;
                    case '\b':
                        this.r = method;
                        continue;
                    case '\t':
                        this.l = method;
                        continue;
                    case '\n':
                        this.m = method;
                        continue;
                    case 11:
                        this.s = method;
                        continue;
                    case '\f':
                        this.k = method;
                        continue;
                    case '\r':
                        this.o = method;
                        continue;
                    case 14:
                        this.t = method;
                        continue;
                    default:
                        Log.w("CSL.CarUiController", "Unmapped public method " + method.getName());
                        Log.d("CSL.CarUiController", "Annotations for " + method.getName());
                        for (Annotation annotation : method.getAnnotations()) {
                            Log.d("CSL.CarUiController", annotation.toString());
                        }
                        continue;
                }
            }
        }
    }

    public final void b(Bundle bundle) {
        a(this.j, bundle);
        MenuController menuController = this.d;
        int[] iArr = new int[menuController.c.size()];
        for (int i = 0; i < menuController.c.size(); i++) {
            iArr[i] = menuController.c.get(i).intValue();
        }
        bundle.putIntArray("com.google.android.apps.auto.sdk.MenuController.KEY_SUBMENU_PATH", iArr);
    }

    public final int c() {
        return this.f;
    }

    public final View d() {
        return (View) a(this.m, new Object[0]);
    }

    public DrawerController getDrawerController() {
        return this.c;
    }

    public MenuController getMenuController() {
        return this.d;
    }

    public SearchController getSearchController() {
        return this.e;
    }

    public StatusBarController getStatusBarController() {
        return this.b;
    }

    public final void a() {
        a(this.g, new Object[0]);
    }

    public final void b() {
        a(this.h, new Object[0]);
    }

    public final void a(Intent intent) {
        a(this.n, intent);
    }

    public final void a(Configuration configuration) {
        a(this.k, configuration);
    }

    public final void a(Bundle bundle) {
        a(this.i, bundle);
        MenuController menuController = this.d;
        if (menuController.a == null) {
            Log.w("CSL.MenuController", "Root MenuAdapter is null after day/night mode Activity recreate.");
            return;
        }
        if (bundle.containsKey("com.google.android.apps.auto.sdk.MenuController.KEY_SUBMENU_PATH")) {
            for (int i : bundle.getIntArray("com.google.android.apps.auto.sdk.MenuController.KEY_SUBMENU_PATH")) {
                MenuController.b.a(menuController.a, i);
            }
        }
        menuController.a(menuController.a.a);
    }

    public final InputConnection a(EditorInfo editorInfo) {
        return (InputConnection) a(this.t, editorInfo);
    }
}
