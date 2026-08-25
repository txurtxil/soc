package defpackage;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;
/* renamed from: k4  reason: default package */
/* loaded from: classes.dex */
public abstract class k4 {
    public static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
        sa saVar;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                saVar = new c9(clipData, 3);
            } else {
                ta taVar = new ta();
                taVar.b = clipData;
                taVar.c = 3;
                saVar = taVar;
            }
            u70.f(textView, saVar.build());
            textView.endBatchEdit();
            return true;
        } catch (Throwable th) {
            textView.endBatchEdit();
            throw th;
        }
    }

    public static boolean b(DragEvent dragEvent, View view, Activity activity) {
        sa saVar;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            saVar = new c9(clipData, 3);
        } else {
            ta taVar = new ta();
            taVar.b = clipData;
            taVar.c = 3;
            saVar = taVar;
        }
        u70.f(view, saVar.build());
        return true;
    }
}
