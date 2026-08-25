package defpackage;

import android.support.v7.widget.AppCompatAutoCompleteTextView;
import android.support.v7.widget.AppCompatButton;
import android.support.v7.widget.AppCompatCheckBox;
import android.support.v7.widget.AppCompatCheckedTextView;
import android.support.v7.widget.AppCompatEditText;
import android.support.v7.widget.AppCompatMultiAutoCompleteTextView;
import android.support.v7.widget.AppCompatRadioButton;
import android.support.v7.widget.AppCompatTextView;
import android.widget.AutoCompleteTextView;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.MultiAutoCompleteTextView;
import android.widget.RadioButton;
import android.widget.TextView;
import android.widget.ToggleButton;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
/* renamed from: e8  reason: default package */
/* loaded from: classes.dex */
public final class e8 {
    public static final HashMap b;
    public static e8 c;
    public final Map a;

    static {
        HashMap hashMap = new HashMap();
        b = hashMap;
        hashMap.put(TextView.class, 16842884);
        hashMap.put(Button.class, 16842824);
        hashMap.put(EditText.class, 16842862);
        hashMap.put(AutoCompleteTextView.class, 16842859);
        hashMap.put(MultiAutoCompleteTextView.class, 16842859);
        hashMap.put(CheckBox.class, 16842860);
        hashMap.put(RadioButton.class, 16842878);
        hashMap.put(ToggleButton.class, 16842827);
        if (s8.b == null) {
            try {
                Class.forName("android.support.v7.widget.AppCompatTextView");
                s8.b = Boolean.TRUE;
            } catch (ClassNotFoundException unused) {
                s8.b = Boolean.FALSE;
            }
        }
        if (s8.b.booleanValue()) {
            a();
        }
    }

    public e8(ko koVar) {
        HashMap hashMap = new HashMap(b);
        hashMap.putAll((HashMap) koVar.c);
        this.a = Collections.unmodifiableMap(hashMap);
        Collections.unmodifiableSet((HashSet) koVar.b);
    }

    public static void a() {
        HashMap hashMap = b;
        hashMap.put(AppCompatTextView.class, 16842884);
        hashMap.put(AppCompatButton.class, 16842824);
        hashMap.put(AppCompatEditText.class, 16842862);
        hashMap.put(AppCompatAutoCompleteTextView.class, 16842859);
        hashMap.put(AppCompatMultiAutoCompleteTextView.class, 16842859);
        hashMap.put(AppCompatCheckBox.class, 16842860);
        hashMap.put(AppCompatRadioButton.class, 16842878);
        hashMap.put(AppCompatCheckedTextView.class, 16843720);
    }

    public static e8 b() {
        if (c == null) {
            ko koVar = new ko(6, false);
            koVar.c = new HashMap();
            koVar.b = new HashSet();
            c = new e8(koVar);
        }
        return c;
    }
}
