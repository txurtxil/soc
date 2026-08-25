package defpackage;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Xml;
import android.view.InflateException;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.SubMenu;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: r30  reason: default package */
/* loaded from: classes.dex */
public final class r30 extends MenuInflater {
    public static final Class[] e;
    public static final Class[] f;
    public final Object[] a;
    public final Object[] b;
    public final Context c;
    public Object d;

    static {
        Class[] clsArr = {Context.class};
        e = clsArr;
        f = clsArr;
    }

    public r30(Context context) {
        super(context);
        this.c = context;
        Object[] objArr = {context};
        this.a = objArr;
        this.b = objArr;
    }

    public static Object a(Object obj) {
        if (obj instanceof Activity) {
            return obj;
        }
        if (obj instanceof ContextWrapper) {
            return a(((ContextWrapper) obj).getBaseContext());
        }
        return obj;
    }

    public final void b(XmlPullParser xmlPullParser, AttributeSet attributeSet, Menu menu) {
        int i;
        XmlPullParser xmlPullParser2;
        char charAt;
        char charAt2;
        boolean z;
        ColorStateList colorStateList;
        int resourceId;
        q30 q30Var = new q30(this, menu);
        int eventType = xmlPullParser.getEventType();
        while (true) {
            i = 2;
            if (eventType == 2) {
                String name = xmlPullParser.getName();
                if (name.equals("menu")) {
                    eventType = xmlPullParser.next();
                } else {
                    throw new RuntimeException("Expecting menu, got ".concat(name));
                }
            } else {
                eventType = xmlPullParser.next();
                if (eventType == 1) {
                    break;
                }
            }
        }
        boolean z2 = false;
        boolean z3 = false;
        String str = null;
        while (!z2) {
            if (eventType != 1) {
                Menu menu2 = q30Var.a;
                if (eventType != i) {
                    if (eventType == 3) {
                        String name2 = xmlPullParser.getName();
                        if (z3 && name2.equals(str)) {
                            xmlPullParser2 = xmlPullParser;
                            z3 = false;
                            str = null;
                            eventType = xmlPullParser2.next();
                            i = 2;
                            z2 = z2;
                            z3 = z3;
                        } else if (name2.equals("group")) {
                            q30Var.b = 0;
                            q30Var.c = 0;
                            q30Var.d = 0;
                            q30Var.e = 0;
                            q30Var.f = true;
                            q30Var.g = true;
                        } else if (name2.equals("item")) {
                            if (!q30Var.h) {
                                xo xoVar = q30Var.z;
                                if (xoVar != null && xoVar.a.hasSubMenu()) {
                                    q30Var.h = true;
                                    q30Var.b(menu2.addSubMenu(q30Var.b, q30Var.i, q30Var.j, q30Var.k).getItem());
                                } else {
                                    q30Var.h = true;
                                    q30Var.b(menu2.add(q30Var.b, q30Var.i, q30Var.j, q30Var.k));
                                }
                            }
                        } else if (name2.equals("menu")) {
                            xmlPullParser2 = xmlPullParser;
                            z2 = true;
                        }
                    }
                    xmlPullParser2 = xmlPullParser;
                    z2 = z2;
                } else {
                    if (!z3) {
                        String name3 = xmlPullParser.getName();
                        boolean equals = name3.equals("group");
                        Context context = this.c;
                        if (equals) {
                            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, vv.p);
                            q30Var.b = obtainStyledAttributes.getResourceId(1, 0);
                            q30Var.c = obtainStyledAttributes.getInt(3, 0);
                            q30Var.d = obtainStyledAttributes.getInt(4, 0);
                            q30Var.e = obtainStyledAttributes.getInt(5, 0);
                            q30Var.f = obtainStyledAttributes.getBoolean(2, true);
                            q30Var.g = obtainStyledAttributes.getBoolean(0, true);
                            obtainStyledAttributes.recycle();
                        } else {
                            if (name3.equals("item")) {
                                TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, vv.q);
                                q30Var.i = obtainStyledAttributes2.getResourceId(2, 0);
                                q30Var.j = (obtainStyledAttributes2.getInt(5, q30Var.c) & (-65536)) | (obtainStyledAttributes2.getInt(6, q30Var.d) & 65535);
                                q30Var.k = obtainStyledAttributes2.getText(7);
                                q30Var.l = obtainStyledAttributes2.getText(8);
                                q30Var.m = obtainStyledAttributes2.getResourceId(0, 0);
                                String string = obtainStyledAttributes2.getString(9);
                                if (string == null) {
                                    charAt = 0;
                                } else {
                                    charAt = string.charAt(0);
                                }
                                q30Var.n = charAt;
                                q30Var.o = obtainStyledAttributes2.getInt(16, 4096);
                                String string2 = obtainStyledAttributes2.getString(10);
                                if (string2 == null) {
                                    charAt2 = 0;
                                } else {
                                    charAt2 = string2.charAt(0);
                                }
                                q30Var.p = charAt2;
                                q30Var.q = obtainStyledAttributes2.getInt(20, 4096);
                                if (obtainStyledAttributes2.hasValue(11)) {
                                    q30Var.r = obtainStyledAttributes2.getBoolean(11, false) ? 1 : 0;
                                } else {
                                    q30Var.r = q30Var.e;
                                }
                                q30Var.s = obtainStyledAttributes2.getBoolean(3, false);
                                q30Var.t = obtainStyledAttributes2.getBoolean(4, q30Var.f);
                                q30Var.u = obtainStyledAttributes2.getBoolean(1, q30Var.g);
                                q30Var.v = obtainStyledAttributes2.getInt(21, -1);
                                q30Var.y = obtainStyledAttributes2.getString(12);
                                q30Var.w = obtainStyledAttributes2.getResourceId(13, 0);
                                q30Var.x = obtainStyledAttributes2.getString(15);
                                String string3 = obtainStyledAttributes2.getString(14);
                                if (string3 != null) {
                                    z = true;
                                } else {
                                    z = false;
                                }
                                if (z && q30Var.w == 0 && q30Var.x == null) {
                                    q30Var.z = (xo) q30Var.a(string3, f, this.b);
                                } else {
                                    if (z) {
                                        Log.w("SupportMenuInflater", "Ignoring attribute 'actionProviderClass'. Action view already specified.");
                                    }
                                    q30Var.z = null;
                                }
                                q30Var.A = obtainStyledAttributes2.getText(17);
                                q30Var.B = obtainStyledAttributes2.getText(22);
                                if (obtainStyledAttributes2.hasValue(19)) {
                                    q30Var.D = xc.c(obtainStyledAttributes2.getInt(19, -1), q30Var.D);
                                } else {
                                    q30Var.D = null;
                                }
                                if (obtainStyledAttributes2.hasValue(18)) {
                                    if (!obtainStyledAttributes2.hasValue(18) || (resourceId = obtainStyledAttributes2.getResourceId(18, 0)) == 0 || (colorStateList = gn.o(context, resourceId)) == null) {
                                        colorStateList = obtainStyledAttributes2.getColorStateList(18);
                                    }
                                    q30Var.C = colorStateList;
                                } else {
                                    q30Var.C = null;
                                }
                                obtainStyledAttributes2.recycle();
                                q30Var.h = false;
                                xmlPullParser2 = xmlPullParser;
                            } else if (name3.equals("menu")) {
                                q30Var.h = true;
                                SubMenu addSubMenu = menu2.addSubMenu(q30Var.b, q30Var.i, q30Var.j, q30Var.k);
                                q30Var.b(addSubMenu.getItem());
                                xmlPullParser2 = xmlPullParser;
                                b(xmlPullParser2, attributeSet, addSubMenu);
                            } else {
                                xmlPullParser2 = xmlPullParser;
                                str = name3;
                                z3 = true;
                            }
                            eventType = xmlPullParser2.next();
                            i = 2;
                            z2 = z2;
                            z3 = z3;
                        }
                    }
                    xmlPullParser2 = xmlPullParser;
                    z2 = z2;
                }
                eventType = xmlPullParser2.next();
                i = 2;
                z2 = z2;
                z3 = z3;
            } else {
                throw new RuntimeException("Unexpected end of document");
            }
        }
    }

    @Override // android.view.MenuInflater
    public final void inflate(int i, Menu menu) {
        if (!(menu instanceof so)) {
            super.inflate(i, menu);
            return;
        }
        XmlResourceParser xmlResourceParser = null;
        try {
            try {
                try {
                    xmlResourceParser = this.c.getResources().getLayout(i);
                    b(xmlResourceParser, Xml.asAttributeSet(xmlResourceParser), menu);
                    xmlResourceParser.close();
                } catch (IOException e2) {
                    throw new InflateException("Error inflating menu XML", e2);
                }
            } catch (XmlPullParserException e3) {
                throw new InflateException("Error inflating menu XML", e3);
            }
        } catch (Throwable th) {
            if (xmlResourceParser != null) {
                xmlResourceParser.close();
            }
            throw th;
        }
    }
}
