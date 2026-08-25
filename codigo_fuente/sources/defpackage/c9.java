package defpackage;

import android.animation.Animator;
import android.content.ClipData;
import android.content.ClipDescription;
import android.content.Context;
import android.media.browse.MediaBrowser;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.service.media.MediaBrowserService;
import android.util.Log;
import android.view.ContentInfo;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.car.app.model.CarIcon;
import androidx.core.graphics.drawable.IconCompat;
import androidx.profileinstaller.ProfileInstallReceiver;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.sidesheet.SideSheetBehavior;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: c9  reason: default package */
/* loaded from: classes.dex */
public class c9 implements kp, qo, i5, wr, vo, sa, ua, q8, sd, dv {
    public static final c9 c = new c9(0, new int[]{1, 2, 4});
    public static final c9 d = new c9(0, new int[]{1, 2});
    public final /* synthetic */ int a;
    public Object b;

    public c9(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.a = 17;
        if (Build.VERSION.SDK_INT >= 25) {
            this.b = new gj(uri, clipDescription, uri2);
        } else {
            this.b = new v5(uri, clipDescription, uri2, 4);
        }
    }

    @Override // defpackage.kp
    public void a(so soVar, boolean z) {
        if (soVar instanceof j30) {
            ((j30) soVar).z.k().c(false);
        }
        kp kpVar = ((e1) this.b).e;
        if (kpVar != null) {
            kpVar.a(soVar, z);
        }
    }

    @Override // defpackage.ua
    public ClipData b() {
        ClipData clip;
        clip = ((ContentInfo) this.b).getClip();
        return clip;
    }

    @Override // defpackage.sa
    public va build() {
        ContentInfo build;
        build = ((ContentInfo.Builder) this.b).build();
        return new va(new c9(build));
    }

    @Override // defpackage.sd
    public void c(qj qjVar) {
        na naVar = new na("EmojiCompatInitializer");
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(0, 1, 15L, TimeUnit.SECONDS, new LinkedBlockingDeque(), naVar);
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        threadPoolExecutor.execute(new x5(this, qjVar, threadPoolExecutor, 3));
    }

    @Override // defpackage.qo
    public boolean e(so soVar, MenuItem menuItem) {
        boolean z;
        h1 h1Var = ((ActionMenuView) this.b).B;
        if (h1Var != null) {
            Toolbar toolbar = ((w40) h1Var).a;
            Iterator it = ((CopyOnWriteArrayList) toolbar.H.c).iterator();
            if (!it.hasNext()) {
                a50 a50Var = toolbar.J;
                if (a50Var != null) {
                    z = ((c50) a50Var).a.t.onMenuItemSelected(0, menuItem);
                } else {
                    z = false;
                }
                if (z) {
                    return true;
                }
            } else {
                it.next().getClass();
                c2.l();
            }
        }
        return false;
    }

    @Override // defpackage.vo
    public void f(so soVar, MenuItem menuItem) {
        ((m9) this.b).f.removeCallbacksAndMessages(soVar);
    }

    @Override // defpackage.wr
    public f90 g(View view, f90 f90Var) {
        p7 p7Var = (p7) this.b;
        p7Var.k = f90Var.a.g().d;
        p7Var.l = f90Var.a();
        p7Var.m = f90Var.b();
        p7Var.d();
        return f90Var;
    }

    @Override // defpackage.ua
    public int h() {
        int flags;
        flags = ((ContentInfo) this.b).getFlags();
        return flags;
    }

    @Override // defpackage.dv
    public void i() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // defpackage.vo
    public void j(so soVar, wo woVar) {
        m9 m9Var = (m9) this.b;
        Handler handler = m9Var.f;
        l9 l9Var = null;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = m9Var.h;
        int size = arrayList.size();
        int i = 0;
        while (true) {
            if (i < size) {
                if (soVar == ((l9) arrayList.get(i)).b) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i == -1) {
            return;
        }
        int i2 = i + 1;
        if (i2 < arrayList.size()) {
            l9Var = (l9) arrayList.get(i2);
        }
        handler.postAtTime(new k9(this, l9Var, woVar, soVar, 0), soVar, SystemClock.uptimeMillis() + 200);
    }

    @Override // defpackage.ua
    public ContentInfo k() {
        return (ContentInfo) this.b;
    }

    @Override // defpackage.dv
    public void l(int i, Object obj) {
        String str;
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
        } else {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        }
        ((ProfileInstallReceiver) this.b).setResultCode(i);
    }

    @Override // defpackage.qo
    public void m(so soVar) {
        qo qoVar = ((ActionMenuView) this.b).w;
        if (qoVar != null) {
            qoVar.m(soVar);
        }
    }

    @Override // defpackage.sa
    public void o(Uri uri) {
        ((ContentInfo.Builder) this.b).setLinkUri(uri);
    }

    @Override // defpackage.q8
    public void onCancel() {
        switch (this.a) {
            case 11:
                ((Animator) this.b).end();
                return;
            default:
                ((s20) this.b).a();
                return;
        }
    }

    @Override // defpackage.ua
    public int p() {
        int source;
        source = ((ContentInfo) this.b).getSource();
        return source;
    }

    @Override // defpackage.kp
    public boolean q(so soVar) {
        e1 e1Var = (e1) this.b;
        if (soVar != e1Var.c) {
            ((j30) soVar).A.getClass();
            kp kpVar = e1Var.e;
            if (kpVar != null) {
                return kpVar.q(soVar);
            }
            return false;
        }
        return false;
    }

    @Override // defpackage.sa
    public void r(int i) {
        ((ContentInfo.Builder) this.b).setFlags(i);
    }

    public void s(IconCompat iconCompat) {
        int f = iconCompat.f();
        for (int i : (int[]) this.b) {
            if (f == i) {
                if (f == 4 && !"content".equalsIgnoreCase(iconCompat.g().getScheme())) {
                    c2.m(iconCompat, "Unsupported URI scheme for: ");
                    return;
                }
                return;
            }
        }
        c2.n(t20.d(f, "Custom icon type is not allowed: "));
    }

    @Override // defpackage.sa
    public void setExtras(Bundle bundle) {
        ((ContentInfo.Builder) this.b).setExtras(bundle);
    }

    public void t() {
        ((wf) this.b).m.J();
    }

    public String toString() {
        switch (this.a) {
            case 10:
                return "ContentInfoCompat{" + ((ContentInfo) this.b) + "}";
            default:
                return super.toString();
        }
    }

    public void u(String str, List list, Bundle bundle) {
        ArrayList<? extends Parcelable> arrayList;
        Bundle bundle2 = new Bundle();
        bundle2.putString("data_media_item_id", str);
        bundle2.putBundle("data_options", bundle);
        bundle2.putBundle("data_notify_children_changed_options", null);
        if (list != null) {
            if (list instanceof ArrayList) {
                arrayList = (ArrayList) list;
            } else {
                arrayList = new ArrayList<>(list);
            }
            bundle2.putParcelableArrayList("data_media_item_list", arrayList);
        }
        v(3, bundle2);
    }

    public void v(int i, Bundle bundle) {
        Message obtain = Message.obtain();
        obtain.what = i;
        obtain.arg1 = 2;
        obtain.setData(bundle);
        ((Messenger) this.b).send(obtain);
    }

    public void w(Object obj) {
        MediaBrowserService.Result result = (MediaBrowserService.Result) this.b;
        if (obj instanceof List) {
            List<Parcel> list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            for (Parcel parcel : list) {
                parcel.setDataPosition(0);
                arrayList.add((MediaBrowser.MediaItem) MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel));
                parcel.recycle();
            }
            result.sendResult(arrayList);
        } else if (obj instanceof Parcel) {
            Parcel parcel2 = (Parcel) obj;
            parcel2.setDataPosition(0);
            result.sendResult(MediaBrowser.MediaItem.CREATOR.createFromParcel(parcel2));
            parcel2.recycle();
        } else {
            result.sendResult(null);
        }
    }

    public void x(CarIcon carIcon) {
        if (carIcon != null && carIcon.getType() == 1) {
            IconCompat icon = carIcon.getIcon();
            if (icon != null) {
                s(icon);
            } else {
                c2.g("Custom icon does not have a backing IconCompat");
            }
        }
    }

    public /* synthetic */ c9(int i, Object obj) {
        this.a = i;
        this.b = obj;
    }

    public c9(TextView textView) {
        this.a = 15;
        this.b = new de(textView);
    }

    public c9(EditText editText) {
        this.a = 14;
        this.b = new ko(editText, 8);
    }

    public c9(Context context) {
        this.a = 13;
        this.b = context.getApplicationContext();
    }

    public /* synthetic */ c9() {
        this.a = 28;
    }

    public c9(ContentInfo contentInfo) {
        this.a = 10;
        contentInfo.getClass();
        this.b = ra.j(contentInfo);
    }

    public c9(ClipData clipData, int i) {
        this.a = 9;
        this.b = ra.c(clipData, i);
    }

    public c9(SideSheetBehavior sideSheetBehavior) {
        this.a = 26;
        this.b = sideSheetBehavior;
        new m1(19, this);
    }

    public c9(BottomSheetBehavior bottomSheetBehavior) {
        this.a = 7;
        this.b = bottomSheetBehavior;
        new c7(1, this);
    }

    @Override // defpackage.i5
    public void d(int i) {
    }

    @Override // defpackage.i5
    public void n(int i) {
    }
}
