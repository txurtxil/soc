package defpackage;

import android.os.Bundle;
import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.TextView;
import java.nio.ByteBuffer;
/* renamed from: wd  reason: default package */
/* loaded from: classes.dex */
public final class wd extends InputConnectionWrapper {
    public final TextView a;
    public final hd b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wd(EditorInfo editorInfo, InputConnection inputConnection, TextView textView) {
        super(inputConnection, false);
        int i;
        hd hdVar = new hd(10);
        this.a = textView;
        this.b = hdVar;
        if (td.j != null) {
            td a = td.a();
            if (a.b() != 1 || editorInfo == null) {
                return;
            }
            if (editorInfo.extras == null) {
                editorInfo.extras = new Bundle();
            }
            od odVar = a.e;
            odVar.getClass();
            Bundle bundle = editorInfo.extras;
            tp tpVar = (tp) odVar.c.a;
            int a2 = tpVar.a(4);
            if (a2 != 0) {
                i = ((ByteBuffer) tpVar.d).getInt(a2 + tpVar.a);
            } else {
                i = 0;
            }
            bundle.putInt("android.support.text.emoji.emojiCompat_metadataVersion", i);
            editorInfo.extras.putBoolean("android.support.text.emoji.emojiCompat_replaceAll", false);
        }
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingText(int i, int i2) {
        Editable editableText = this.a.getEditableText();
        this.b.getClass();
        if (!hd.c(this, editableText, i, i2, false) && !super.deleteSurroundingText(i, i2)) {
            return false;
        }
        return true;
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public final boolean deleteSurroundingTextInCodePoints(int i, int i2) {
        Editable editableText = this.a.getEditableText();
        this.b.getClass();
        if (hd.c(this, editableText, i, i2, true) || super.deleteSurroundingTextInCodePoints(i, i2)) {
            return true;
        }
        return false;
    }
}
