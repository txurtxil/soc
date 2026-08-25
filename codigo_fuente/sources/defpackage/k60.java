package defpackage;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.PowerManager;
import android.os.Process;
import android.text.SpannableStringBuilder;
import android.util.Base64;
import android.util.Log;
import android.util.Xml;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import androidx.car.app.model.Alert;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: k60  reason: default package */
/* loaded from: classes.dex */
public abstract class k60 {
    public static int a = -1;
    public static Context b;
    public static Method e;
    public static boolean f;
    public static PowerManager.WakeLock i;
    public static Field j;
    public static boolean k;
    public static Class l;
    public static boolean m;
    public static Field n;
    public static boolean o;
    public static Field p;
    public static boolean q;
    public static boolean r;
    public static final String[] c = new String[0];
    public static final Object d = new Object();
    public static final int[] g = new int[0];
    public static final Object[] h = new Object[0];

    public k60() {
        new ConcurrentHashMap();
    }

    public static lf C(XmlResourceParser xmlResourceParser, Resources resources) {
        int next;
        int i2;
        boolean z;
        int i3;
        do {
            next = xmlResourceParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next == 2) {
            xmlResourceParser.require(2, null, "font-family");
            if (xmlResourceParser.getName().equals("font-family")) {
                TypedArray obtainAttributes = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), qv.b);
                String string = obtainAttributes.getString(0);
                String string2 = obtainAttributes.getString(4);
                String string3 = obtainAttributes.getString(5);
                int resourceId = obtainAttributes.getResourceId(1, 0);
                int integer = obtainAttributes.getInteger(2, 1);
                int integer2 = obtainAttributes.getInteger(3, 500);
                String string4 = obtainAttributes.getString(6);
                obtainAttributes.recycle();
                if (string != null && string2 != null && string3 != null) {
                    while (xmlResourceParser.next() != 3) {
                        J(xmlResourceParser);
                    }
                    return new of(new cf(string, string2, string3, D(resources, resourceId)), integer, integer2, string4);
                }
                ArrayList arrayList = new ArrayList();
                while (xmlResourceParser.next() != 3) {
                    if (xmlResourceParser.getEventType() == 2) {
                        if (xmlResourceParser.getName().equals("font")) {
                            TypedArray obtainAttributes2 = resources.obtainAttributes(Xml.asAttributeSet(xmlResourceParser), qv.c);
                            int i4 = 8;
                            if (!obtainAttributes2.hasValue(8)) {
                                i4 = 1;
                            }
                            int i5 = obtainAttributes2.getInt(i4, 400);
                            if (obtainAttributes2.hasValue(6)) {
                                i2 = 6;
                            } else {
                                i2 = 2;
                            }
                            if (1 == obtainAttributes2.getInt(i2, 0)) {
                                z = true;
                            } else {
                                z = false;
                            }
                            int i6 = 9;
                            if (!obtainAttributes2.hasValue(9)) {
                                i6 = 3;
                            }
                            int i7 = 7;
                            if (!obtainAttributes2.hasValue(7)) {
                                i7 = 4;
                            }
                            String string5 = obtainAttributes2.getString(i7);
                            int i8 = obtainAttributes2.getInt(i6, 0);
                            if (obtainAttributes2.hasValue(5)) {
                                i3 = 5;
                            } else {
                                i3 = 0;
                            }
                            int resourceId2 = obtainAttributes2.getResourceId(i3, 0);
                            String string6 = obtainAttributes2.getString(i3);
                            obtainAttributes2.recycle();
                            while (xmlResourceParser.next() != 3) {
                                J(xmlResourceParser);
                            }
                            arrayList.add(new nf(string6, i5, z, string5, i8, resourceId2));
                        } else {
                            J(xmlResourceParser);
                        }
                    }
                }
                if (arrayList.isEmpty()) {
                    return null;
                }
                return new mf((nf[]) arrayList.toArray(new nf[0]));
            }
            J(xmlResourceParser);
            return null;
        }
        throw new XmlPullParserException("No start tag found");
    }

    public static List D(Resources resources, int i2) {
        if (i2 == 0) {
            return Collections.EMPTY_LIST;
        }
        TypedArray obtainTypedArray = resources.obtainTypedArray(i2);
        try {
            if (obtainTypedArray.length() == 0) {
                return Collections.EMPTY_LIST;
            }
            ArrayList arrayList = new ArrayList();
            if (kf.a(obtainTypedArray, 0) == 1) {
                for (int i3 = 0; i3 < obtainTypedArray.length(); i3++) {
                    int resourceId = obtainTypedArray.getResourceId(i3, 0);
                    if (resourceId != 0) {
                        String[] stringArray = resources.getStringArray(resourceId);
                        ArrayList arrayList2 = new ArrayList();
                        for (String str : stringArray) {
                            arrayList2.add(Base64.decode(str, 0));
                        }
                        arrayList.add(arrayList2);
                    }
                }
            } else {
                String[] stringArray2 = resources.getStringArray(i2);
                ArrayList arrayList3 = new ArrayList();
                for (String str2 : stringArray2) {
                    arrayList3.add(Base64.decode(str2, 0));
                }
                arrayList.add(arrayList3);
            }
            return arrayList;
        } finally {
            obtainTypedArray.recycle();
        }
    }

    public static void H(EditorInfo editorInfo, CharSequence charSequence, int i2, int i3) {
        SpannableStringBuilder spannableStringBuilder;
        if (editorInfo.extras == null) {
            editorInfo.extras = new Bundle();
        }
        if (charSequence != null) {
            spannableStringBuilder = new SpannableStringBuilder(charSequence);
        } else {
            spannableStringBuilder = null;
        }
        editorInfo.extras.putCharSequence("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SURROUNDING_TEXT", spannableStringBuilder);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_HEAD", i2);
        editorInfo.extras.putInt("androidx.core.view.inputmethod.EditorInfoCompat.CONTENT_SELECTION_END", i3);
    }

    public static void J(XmlPullParser xmlPullParser) {
        int i2 = 1;
        while (i2 > 0) {
            int next = xmlPullParser.next();
            if (next != 2) {
                if (next == 3) {
                    i2--;
                }
            } else {
                i2++;
            }
        }
    }

    public static int a(int i2, int i3, int[] iArr) {
        int i4 = i2 - 1;
        int i5 = 0;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            int i7 = iArr[i6];
            if (i7 < i3) {
                i5 = i6 + 1;
            } else if (i7 > i3) {
                i4 = i6 - 1;
            } else {
                return i6;
            }
        }
        return ~i5;
    }

    public static Object c(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() != 0) {
            return creator.createFromParcel(parcel);
        }
        return null;
    }

    public static int d(SharedPreferences sharedPreferences, int i2) {
        sharedPreferences.getClass();
        int q2 = i2 - q(sharedPreferences, "vd_height_gap_enabled", "vd_height_gap");
        if (q2 < 1) {
            return 1;
        }
        return q2;
    }

    public static int e(SharedPreferences sharedPreferences, int i2) {
        sharedPreferences.getClass();
        int q2 = i2 - q(sharedPreferences, "vd_width_gap_enabled", "vd_width_gap");
        if (q2 < 1) {
            return 1;
        }
        return q2;
    }

    public static String m(SharedPreferences sharedPreferences) {
        sharedPreferences.getClass();
        int q2 = q(sharedPreferences, "vd_width_gap_enabled", "vd_width_gap");
        int q3 = q(sharedPreferences, "vd_height_gap_enabled", "vd_height_gap");
        if (q2 == 0 && q3 == 0) {
            return "off";
        }
        return q2 + "x" + q3;
    }

    public static void o(String str, Exception exc) {
        Log.d(str, "", exc);
    }

    public static pf p(int i2, pf[] pfVarArr) {
        int i3;
        boolean z;
        int i4;
        if ((i2 & 1) == 0) {
            i3 = 400;
        } else {
            i3 = 700;
        }
        if ((i2 & 2) != 0) {
            z = true;
        } else {
            z = false;
        }
        pf pfVar = null;
        int i5 = Alert.DURATION_SHOW_INDEFINITELY;
        for (pf pfVar2 : pfVarArr) {
            int abs = Math.abs(pfVar2.c - i3) * 2;
            if (pfVar2.d == z) {
                i4 = 0;
            } else {
                i4 = 1;
            }
            int i6 = abs + i4;
            if (pfVar == null || i5 > i6) {
                pfVar = pfVar2;
                i5 = i6;
            }
        }
        return pfVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x007c, code lost:
        return r10.intValue();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int q(android.content.SharedPreferences r9, java.lang.String r10, java.lang.String r11) {
        /*
            r0 = 0
            boolean r10 = r9.getBoolean(r10, r0)
            if (r10 != 0) goto L9
            goto L7d
        L9:
            r10 = 0
            java.lang.String r9 = r9.getString(r11, r10)
            if (r9 == 0) goto L7d
            java.lang.CharSequence r9 = defpackage.i30.y(r9)
            java.lang.String r9 = r9.toString()
            if (r9 == 0) goto L7d
            int r11 = r9.length()
            if (r11 != 0) goto L22
            goto L76
        L22:
            char r1 = r9.charAt(r0)
            r2 = 48
            r3 = -2147483647(0xffffffff80000001, float:-1.4E-45)
            if (r1 >= r2) goto L40
            r2 = 1
            if (r11 != r2) goto L31
            goto L76
        L31:
            r4 = 43
            if (r1 == r4) goto L3e
            r3 = 45
            if (r1 == r3) goto L3a
            goto L76
        L3a:
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r2
            goto L42
        L3e:
            r1 = r0
            goto L42
        L40:
            r1 = r0
            r2 = r1
        L42:
            r4 = -59652323(0xfffffffffc71c71d, float:-5.0215282E36)
            r5 = r0
            r6 = r4
        L47:
            if (r2 >= r11) goto L6a
            char r7 = r9.charAt(r2)
            r8 = 10
            int r7 = java.lang.Character.digit(r7, r8)
            if (r7 >= 0) goto L56
            goto L76
        L56:
            if (r5 >= r6) goto L5f
            if (r6 != r4) goto L76
            int r6 = r3 / 10
            if (r5 >= r6) goto L5f
            goto L76
        L5f:
            int r5 = r5 * 10
            int r8 = r3 + r7
            if (r5 >= r8) goto L66
            goto L76
        L66:
            int r5 = r5 - r7
            int r2 = r2 + 1
            goto L47
        L6a:
            if (r1 == 0) goto L71
            java.lang.Integer r10 = java.lang.Integer.valueOf(r5)
            goto L76
        L71:
            int r9 = -r5
            java.lang.Integer r10 = java.lang.Integer.valueOf(r9)
        L76:
            if (r10 == 0) goto L7d
            int r9 = r10.intValue()
            return r9
        L7d:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.k60.q(android.content.SharedPreferences, java.lang.String, java.lang.String):int");
    }

    public static Context r() {
        if (b == null) {
            try {
                Context context = (Context) Class.forName("android.app.ActivityThread").getMethod("currentApplication", null).invoke(null, null);
                while (context instanceof ContextWrapper) {
                    context = ((ContextWrapper) context).getBaseContext();
                }
                b = context;
            } catch (Exception e2) {
                o("LIBSU", e2);
            }
        }
        return b;
    }

    public static synchronized Boolean w() {
        synchronized (k60.class) {
            int i2 = a;
            if (i2 < 0) {
                if (Process.myUid() == 0) {
                    a = 2;
                    return Boolean.TRUE;
                }
                for (String str : System.getenv("PATH").split(":")) {
                    if (new File(str, "su").canExecute()) {
                        a = 1;
                        return null;
                    }
                }
                a = 0;
                return Boolean.FALSE;
            } else if (i2 != 0) {
                if (i2 != 2) {
                    return null;
                }
                return Boolean.TRUE;
            } else {
                return Boolean.FALSE;
            }
        }
    }

    public boolean A(KeyEvent keyEvent) {
        return false;
    }

    public boolean B() {
        return false;
    }

    public abstract void E(boolean z);

    public abstract void F(boolean z);

    public abstract void G(boolean z);

    public abstract void I(CharSequence charSequence);

    public i1 K(ko koVar) {
        return null;
    }

    public abstract void b();

    public abstract void f(View view);

    public boolean h() {
        return false;
    }

    public abstract boolean i();

    public abstract Typeface j(Context context, mf mfVar, Resources resources, int i2);

    public abstract Typeface k(Context context, pf[] pfVarArr, int i2);

    public Typeface l(Context context, Resources resources, int i2, String str, int i3) {
        File n2 = em.n(context);
        if (n2 == null) {
            return null;
        }
        try {
            if (!em.f(n2, resources, i2)) {
                return null;
            }
            return Typeface.createFromFile(n2.getPath());
        } catch (RuntimeException unused) {
            return null;
        } finally {
            n2.delete();
        }
    }

    public abstract void n(boolean z);

    public abstract void s(j10 j10Var, float f2, float f3);

    public abstract int t();

    public abstract Context u();

    public boolean v() {
        return false;
    }

    public abstract void x();

    public abstract boolean z(int i2, KeyEvent keyEvent);

    public void y() {
    }

    public void g(View view) {
    }
}
