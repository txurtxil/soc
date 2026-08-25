package defpackage;

import android.os.LocaleList;
import android.widget.TextView;
/* renamed from: e5  reason: default package */
/* loaded from: classes.dex */
public abstract class e5 {
    public static LocaleList a(String str) {
        return LocaleList.forLanguageTags(str);
    }

    public static void b(TextView textView, LocaleList localeList) {
        textView.setTextLocales(localeList);
    }
}
