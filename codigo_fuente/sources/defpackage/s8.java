package defpackage;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Build;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextDirectionHeuristic;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.View;
import android.widget.EdgeEffect;
import android.widget.TextView;
import androidx.car.app.SessionInfo;
import com.google.android.apps.auto.sdk.ui.R;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;
/* renamed from: s8  reason: default package */
/* loaded from: classes.dex */
public abstract class s8 implements j80 {
    public static volatile long i;
    public static final int[] a = {16842804};
    public static Boolean c = null;
    public static Boolean b = null;
    public static final int[] d = {16842752, R.attr.theme};
    public static final int[] e = {R.attr.materialThemeOverlay};
    public static final int[] f = {R.attr.colorPrimary};
    public static final int[] g = {R.attr.colorPrimaryVariant};
    public static final String[] h = {"com.google.android.projection.bumblebee", "com.google.android.projection.gearhead"};

    public static void A(TextView textView, int i2) {
        int i3;
        if (i2 >= 0) {
            if (Build.VERSION.SDK_INT >= 28) {
                j40.c(textView, i2);
                return;
            }
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            if (f40.a(textView)) {
                i3 = fontMetricsInt.top;
            } else {
                i3 = fontMetricsInt.ascent;
            }
            if (i2 > Math.abs(i3)) {
                textView.setPadding(textView.getPaddingLeft(), i2 + i3, textView.getPaddingRight(), textView.getPaddingBottom());
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public static void B(TextView textView, int i2) {
        int i3;
        if (i2 >= 0) {
            Paint.FontMetricsInt fontMetricsInt = textView.getPaint().getFontMetricsInt();
            if (f40.a(textView)) {
                i3 = fontMetricsInt.bottom;
            } else {
                i3 = fontMetricsInt.descent;
            }
            if (i2 > Math.abs(i3)) {
                textView.setPadding(textView.getPaddingLeft(), textView.getPaddingTop(), textView.getPaddingRight(), i2 - i3);
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }

    public static List C(List list) {
        if (list == null) {
            return Collections.EMPTY_LIST;
        }
        return Collections.unmodifiableList(new ArrayList(list));
    }

    public static ActionMode.Callback D(ActionMode.Callback callback) {
        if ((callback instanceof k40) && Build.VERSION.SDK_INT >= 26) {
            return ((k40) callback).a;
        }
        return callback;
    }

    public static Context E(Context context, AttributeSet attributeSet, int i2, int i3) {
        boolean z;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e, i2, i3);
        int resourceId = obtainStyledAttributes.getResourceId(0, 0);
        obtainStyledAttributes.recycle();
        if ((context instanceof cb) && ((cb) context).a == resourceId) {
            z = true;
        } else {
            z = false;
        }
        if (resourceId != 0 && !z) {
            cb cbVar = new cb(context, resourceId);
            TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, d);
            int resourceId2 = obtainStyledAttributes2.getResourceId(0, 0);
            int resourceId3 = obtainStyledAttributes2.getResourceId(1, 0);
            obtainStyledAttributes2.recycle();
            if (resourceId2 == 0) {
                resourceId2 = resourceId3;
            }
            if (resourceId2 != 0) {
                cbVar.getTheme().applyStyle(resourceId2, true);
            }
            return cbVar;
        }
        return context;
    }

    public static ActionMode.Callback F(ActionMode.Callback callback, TextView textView) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26 && i2 <= 27 && !(callback instanceof k40) && callback != null) {
            return new k40(callback, textView);
        }
        return callback;
    }

    public static CharSequence h(CharSequence charSequence, Typeface typeface) {
        m8 m8Var;
        if (charSequence != null && charSequence.length() > 0) {
            if (!(charSequence instanceof Spannable)) {
                charSequence = new SpannableString(charSequence);
            }
            Spannable spannable = (Spannable) charSequence;
            HashMap hashMap = d60.b;
            synchronized (hashMap) {
                try {
                    if (!hashMap.containsKey(typeface)) {
                        m8Var = new m8(typeface);
                        hashMap.put(typeface, m8Var);
                    } else {
                        m8Var = (m8) hashMap.get(typeface);
                    }
                } finally {
                }
            }
            spannable.setSpan(m8Var, 0, charSequence.length(), 33);
            return charSequence;
        }
        return charSequence;
    }

    public static String i(int i2, int i3, String str) {
        if (i2 < 0) {
            return gn.t("%s (%s) must not be negative", str, Integer.valueOf(i2));
        }
        if (i3 >= 0) {
            return gn.t("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i2), Integer.valueOf(i3));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i3);
        throw new IllegalArgumentException(sb.toString());
    }

    public static void j(Context context, AttributeSet attributeSet, int i2, int i3) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, uv.q, i2, i3);
        boolean z = obtainStyledAttributes.getBoolean(1, false);
        obtainStyledAttributes.recycle();
        if (z) {
            TypedValue typedValue = new TypedValue();
            if (!context.getTheme().resolveAttribute(R.attr.isMaterialTheme, typedValue, true) || (typedValue.type == 18 && typedValue.data == 0)) {
                n(context, g, "Theme.MaterialComponents");
            }
        }
        n(context, f, "Theme.AppCompat");
    }

    public static void k(int i2, int i3) {
        String t;
        if (i2 >= 0 && i2 < i3) {
            return;
        }
        if (i2 >= 0) {
            if (i3 >= 0) {
                t = gn.t("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i2), Integer.valueOf(i3));
            } else {
                StringBuilder sb = new StringBuilder(26);
                sb.append("negative size: ");
                sb.append(i3);
                throw new IllegalArgumentException(sb.toString());
            }
        } else {
            t = gn.t("%s (%s) must not be negative", "index", Integer.valueOf(i2));
        }
        throw new IndexOutOfBoundsException(t);
    }

    public static void l(int i2, int i3, int i4) {
        String i5;
        if (i2 >= 0 && i3 >= i2 && i3 <= i4) {
            return;
        }
        if (i2 >= 0 && i2 <= i4) {
            if (i3 >= 0 && i3 <= i4) {
                i5 = gn.t("end index (%s) must not be less than start index (%s)", Integer.valueOf(i3), Integer.valueOf(i2));
            } else {
                i5 = i(i3, i4, "end index");
            }
        } else {
            i5 = i(i2, i4, "start index");
        }
        throw new IndexOutOfBoundsException(i5);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001b, code lost:
        if (r0.getResourceId(0, -1) != (-1)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m(android.content.Context r5, android.util.AttributeSet r6, int[] r7, int r8, int r9, int... r10) {
        /*
            int[] r0 = defpackage.uv.q
            android.content.res.TypedArray r0 = r5.obtainStyledAttributes(r6, r0, r8, r9)
            r1 = 2
            r2 = 0
            boolean r1 = r0.getBoolean(r1, r2)
            if (r1 != 0) goto L12
            r0.recycle()
            return
        L12:
            int r1 = r10.length
            r3 = 1
            r4 = -1
            if (r1 != 0) goto L1f
            int r5 = r0.getResourceId(r2, r4)
            if (r5 == r4) goto L3a
        L1d:
            r2 = r3
            goto L3a
        L1f:
            android.content.res.TypedArray r5 = r5.obtainStyledAttributes(r6, r7, r8, r9)
            int r6 = r10.length
            r7 = r2
        L25:
            if (r7 >= r6) goto L36
            r8 = r10[r7]
            int r8 = r5.getResourceId(r8, r4)
            if (r8 != r4) goto L33
            r5.recycle()
            goto L3a
        L33:
            int r7 = r7 + 1
            goto L25
        L36:
            r5.recycle()
            goto L1d
        L3a:
            r0.recycle()
            if (r2 == 0) goto L40
            return
        L40:
            java.lang.String r5 = "This component requires that you specify a valid TextAppearance attribute. Update your app theme to inherit from Theme.MaterialComponents (or a descendant)."
            defpackage.c2.n(r5)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.s8.m(android.content.Context, android.util.AttributeSet, int[], int, int, int[]):void");
    }

    public static void n(Context context, int[] iArr, String str) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(iArr);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            if (!obtainStyledAttributes.hasValue(i2)) {
                obtainStyledAttributes.recycle();
                c2.n(t20.f("The style on this component requires your app theme to be ", str, " (or a descendant)."));
                return;
            }
        }
        obtainStyledAttributes.recycle();
    }

    public static SessionInfo o(Intent intent) {
        Bundle extras = intent.getExtras();
        if (extras != null) {
            Bundle bundle = extras.getBundle("androidx.car.app.extra.SESSION_INFO_BUNDLE");
            return new SessionInfo(bundle.getInt("display-type"), bundle.getString("session-id"));
        }
        c2.n("Expected the SessionInfo to be encoded in the bind intent extras, but the extras were null.");
        return null;
    }

    public static int p(View view, int i2) {
        Context context = view.getContext();
        Context context2 = view.getContext();
        String canonicalName = view.getClass().getCanonicalName();
        TypedValue t = em.t(context2, i2);
        if (t != null) {
            int i3 = t.resourceId;
            if (i3 != 0) {
                return za.a(context, i3);
            }
            return t.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", canonicalName, context2.getResources().getResourceName(i2)));
    }

    public static float q(EdgeEffect edgeEffect) {
        if (Build.VERSION.SDK_INT >= 31) {
            return gd.b(edgeEffect);
        }
        return 0.0f;
    }

    public static int r() {
        ClassLoader classLoader = s8.class.getClassLoader();
        Objects.requireNonNull(classLoader);
        InputStream resourceAsStream = classLoader.getResourceAsStream("car-app-api.level");
        if (resourceAsStream != null) {
            try {
                String readLine = new BufferedReader(new InputStreamReader(resourceAsStream)).readLine();
                int parseInt = Integer.parseInt(readLine);
                if (parseInt >= 1 && parseInt <= 8) {
                    return parseInt;
                }
                throw new IllegalStateException("Unrecognized Car API level: " + readLine);
            } catch (IOException unused) {
                c2.g("Unable to read Car API level file");
                return 0;
            }
        }
        c2.g("Car API level file car-app-api.level not found");
        return 0;
    }

    public static Intent s(z2 z2Var) {
        Intent a2 = tq.a(z2Var);
        if (a2 != null) {
            return a2;
        }
        try {
            String u = u(z2Var, z2Var.getComponentName());
            if (u == null) {
                return null;
            }
            ComponentName componentName = new ComponentName(z2Var, u);
            try {
                if (u(z2Var, componentName) == null) {
                    return Intent.makeMainActivity(componentName);
                }
                return new Intent().setComponent(componentName);
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("NavUtils", "getParentActivityIntent: bad parentActivityName '" + u + "' in manifest");
                return null;
            }
        } catch (PackageManager.NameNotFoundException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    public static Intent t(z2 z2Var, ComponentName componentName) {
        String u = u(z2Var, componentName);
        if (u == null) {
            return null;
        }
        ComponentName componentName2 = new ComponentName(componentName.getPackageName(), u);
        if (u(z2Var, componentName2) == null) {
            return Intent.makeMainActivity(componentName2);
        }
        return new Intent().setComponent(componentName2);
    }

    public static String u(Context context, ComponentName componentName) {
        int i2;
        String string;
        PackageManager packageManager = context.getPackageManager();
        if (Build.VERSION.SDK_INT >= 29) {
            i2 = 269222528;
        } else {
            i2 = 787072;
        }
        ActivityInfo activityInfo = packageManager.getActivityInfo(componentName, i2);
        String str = activityInfo.parentActivityName;
        if (str != null) {
            return str;
        }
        Bundle bundle = activityInfo.metaData;
        if (bundle == null || (string = bundle.getString("android.support.PARENT_ACTIVITY")) == null) {
            return null;
        }
        if (string.charAt(0) == '.') {
            return context.getPackageName() + string;
        }
        return string;
    }

    public static xt v(k5 k5Var) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 28) {
            return new xt(j40.b(k5Var));
        }
        TextPaint textPaint = new TextPaint(k5Var.getPaint());
        TextDirectionHeuristic textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_LTR;
        int a2 = h40.a(k5Var);
        int d2 = h40.d(k5Var);
        if (k5Var.getTransformationMethod() instanceof PasswordTransformationMethod) {
            textDirectionHeuristic = TextDirectionHeuristics.LTR;
        } else {
            boolean z = true;
            if (i2 >= 28 && (k5Var.getInputType() & 15) == 3) {
                byte directionality = Character.getDirectionality(j40.a(i40.a(g40.d(k5Var)))[0].codePointAt(0));
                textDirectionHeuristic = (directionality == 1 || directionality == 2) ? TextDirectionHeuristics.RTL : TextDirectionHeuristics.LTR;
            } else {
                if (g40.b(k5Var) != 1) {
                    z = false;
                }
                switch (g40.c(k5Var)) {
                    case 2:
                        textDirectionHeuristic = TextDirectionHeuristics.ANYRTL_LTR;
                        break;
                    case 3:
                        textDirectionHeuristic = TextDirectionHeuristics.LTR;
                        break;
                    case 4:
                        textDirectionHeuristic = TextDirectionHeuristics.RTL;
                        break;
                    case 5:
                        textDirectionHeuristic = TextDirectionHeuristics.LOCALE;
                        break;
                    case 6:
                        break;
                    case 7:
                        textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                        break;
                    default:
                        if (z) {
                            textDirectionHeuristic = TextDirectionHeuristics.FIRSTSTRONG_RTL;
                            break;
                        }
                        break;
                }
            }
        }
        return new xt(textPaint, textDirectionHeuristic, a2, d2);
    }

    public static int w(int i2, int i3, float f2) {
        return da.b(da.d(i3, Math.round(Color.alpha(i3) * f2)), i2);
    }

    public static float z(EdgeEffect edgeEffect, float f2, float f3) {
        if (Build.VERSION.SDK_INT >= 31) {
            return gd.c(edgeEffect, f2, f3);
        }
        fd.a(edgeEffect, f2, f3);
        return f2;
    }

    public abstract View x(int i2);

    public abstract boolean y();

    @Override // defpackage.j80
    public void c() {
    }

    @Override // defpackage.j80
    public void g() {
    }
}
