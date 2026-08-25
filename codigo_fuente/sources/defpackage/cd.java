package defpackage;

import android.widget.AbsListView;
import java.lang.reflect.Field;
/* renamed from: cd  reason: default package */
/* loaded from: classes.dex */
public abstract class cd {
    public static final Field a;

    static {
        Field field = null;
        try {
            field = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
            field.setAccessible(true);
        } catch (NoSuchFieldException e) {
            e.printStackTrace();
        }
        a = field;
    }
}
