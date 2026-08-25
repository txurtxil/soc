package defpackage;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Locale;
/* renamed from: p6  reason: default package */
/* loaded from: classes.dex */
public final class p6 implements TextWatcher {
    public final /* synthetic */ m6 a;
    public final /* synthetic */ ListView b;

    public p6(m6 m6Var, ListView listView) {
        this.a = m6Var;
        this.b = listView;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        String str;
        if (editable != null) {
            str = editable.toString();
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        String lowerCase = i30.y(str).toString().toLowerCase(Locale.ROOT);
        lowerCase.getClass();
        int length = lowerCase.length();
        m6 m6Var = this.a;
        ArrayList arrayList = m6Var.a;
        if (length != 0) {
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                n6 n6Var = (n6) obj;
                if (n6Var.a.length() > 0) {
                    String str2 = n6Var.b;
                    Locale locale = Locale.ROOT;
                    String lowerCase2 = str2.toLowerCase(locale);
                    lowerCase2.getClass();
                    if (!i30.u(lowerCase2, lowerCase)) {
                        String lowerCase3 = n6Var.a.toLowerCase(locale);
                        lowerCase3.getClass();
                        if (i30.u(lowerCase3, lowerCase)) {
                        }
                    }
                    arrayList2.add(obj);
                }
            }
            arrayList = arrayList2;
        }
        m6Var.c = arrayList;
        m6Var.notifyDataSetChanged();
        this.b.setSelection(0);
    }

    @Override // android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public final void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
