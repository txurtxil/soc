package defpackage;

import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import android.util.Log;
import androidx.car.app.navigation.model.Maneuver;
import androidx.fragment.app.a;
import androidx.preference.EditTextPreference;
import androidx.preference.ListPreference;
import androidx.preference.Preference;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: hd  reason: default package */
/* loaded from: classes.dex */
public class hd implements kp, db, dv {
    public static final hd b = new hd(1);
    public static final hd c = new hd(2);
    public static final hd d = new hd(3);
    public static hd e;
    public static hd f;
    public final /* synthetic */ int a;

    public hd(ak akVar, ak akVar2) {
        this.a = 5;
        akVar.getClass();
        akVar2.getClass();
        if (0.0f <= 0.0f) {
            return;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0045, code lost:
        if (java.lang.Character.isHighSurrogate(r5) != false) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0075, code lost:
        if (r11 != false) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0082, code lost:
        if (java.lang.Character.isLowSurrogate(r5) != false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00a2, code lost:
        if (r10 != (-1)) goto L71;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean c(defpackage.wd r7, android.text.Editable r8, int r9, int r10, boolean r11) {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hd.c(wd, android.text.Editable, int, int, boolean):boolean");
    }

    public static boolean d() {
        if (!nq.d && !nq.e) {
            return false;
        }
        return true;
    }

    public Signature[] b(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }

    public CharSequence g(Preference preference) {
        CharSequence charSequence;
        switch (this.a) {
            case 8:
                EditTextPreference editTextPreference = (EditTextPreference) preference;
                if (TextUtils.isEmpty(editTextPreference.U)) {
                    return editTextPreference.a.getString(R.string.not_set);
                }
                return editTextPreference.U;
            default:
                ListPreference listPreference = (ListPreference) preference;
                CharSequence[] charSequenceArr = listPreference.U;
                int A = listPreference.A(listPreference.W);
                if (A >= 0 && charSequenceArr != null) {
                    charSequence = charSequenceArr[A];
                } else {
                    charSequence = null;
                }
                if (TextUtils.isEmpty(charSequence)) {
                    return listPreference.a.getString(R.string.not_set);
                }
                int A2 = listPreference.A(listPreference.W);
                if (A2 < 0 || charSequenceArr == null) {
                    return null;
                }
                return charSequenceArr[A2];
        }
    }

    @Override // defpackage.dv
    public void i() {
        switch (this.a) {
            case Maneuver.TYPE_OFF_RAMP_SLIGHT_RIGHT /* 22 */:
                return;
            default:
                Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
                return;
        }
    }

    @Override // defpackage.dv
    public void l(int i, Object obj) {
        String str;
        switch (this.a) {
            case Maneuver.TYPE_OFF_RAMP_SLIGHT_RIGHT /* 22 */:
                return;
            default:
                switch (i) {
                    case 1:
                        str = "RESULT_INSTALL_SUCCESS";
                        break;
                    case 2:
                        str = "RESULT_ALREADY_INSTALLED";
                        break;
                    case 3:
                        str = "RESULT_UNSUPPORTED_ART_VERSION";
                        break;
                    case 4:
                        str = "RESULT_NOT_WRITABLE";
                        break;
                    case 5:
                        str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                        break;
                    case 6:
                        str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                        break;
                    case 7:
                        str = "RESULT_IO_EXCEPTION";
                        break;
                    case 8:
                        str = "RESULT_PARSE_EXCEPTION";
                        break;
                    case 9:
                    default:
                        str = "";
                        break;
                    case 10:
                        str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                        break;
                    case 11:
                        str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                        break;
                }
                if (i != 6 && i != 7 && i != 8) {
                    Log.d("ProfileInstaller", str);
                    return;
                } else {
                    Log.e("ProfileInstaller", str, (Throwable) obj);
                    return;
                }
        }
    }

    @Override // defpackage.kp
    public boolean q(so soVar) {
        return false;
    }

    public hd(a aVar) {
        this.a = 13;
    }

    public /* synthetic */ hd(int i) {
        this.a = i;
    }

    private final void e() {
    }

    private final void f(int i, Object obj) {
    }

    @Override // defpackage.kp
    public void a(so soVar, boolean z) {
    }
}
