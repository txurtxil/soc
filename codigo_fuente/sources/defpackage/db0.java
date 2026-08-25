package defpackage;

import android.content.DialogInterface;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import androidx.preference.PreferenceScreen;
import java.lang.ref.WeakReference;
/* renamed from: db0  reason: default package */
/* loaded from: classes.dex */
public final class db0 extends Handler {
    public final /* synthetic */ int a;
    public Object b;

    public db0(cb0 cb0Var) {
        this.a = 0;
        this.b = cb0Var;
    }

    public void a(Runnable runnable) {
        if (Thread.currentThread() == getLooper().getThread()) {
            runnable.run();
        } else {
            post(runnable);
        }
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        go goVar;
        fo foVar;
        db0 db0Var;
        fo foVar2;
        switch (this.a) {
            case 0:
                cb0 cb0Var = (cb0) this.b;
                int i = message.what;
                if (i != 1) {
                    if (i != 2) {
                        super.handleMessage(message);
                        return;
                    }
                    cb0Var.b.a();
                    cb0Var.b.a.b.v();
                    return;
                } else if (cb0Var.c) {
                    cb0Var.a(false);
                    return;
                } else {
                    return;
                }
            case 1:
                int i2 = message.what;
                if (i2 != -3 && i2 != -2 && i2 != -1) {
                    if (i2 == 1) {
                        ((DialogInterface) message.obj).dismiss();
                        return;
                    }
                    return;
                }
                ((DialogInterface.OnClickListener) message.obj).onClick((DialogInterface) ((WeakReference) this.b).get(), message.what);
                return;
            case 2:
                vn vnVar = (vn) this.b;
                if (vnVar != null) {
                    c9 c9Var = vnVar.b;
                    Bundle data = message.getData();
                    switch (message.what) {
                        case 1:
                            Bundle bundle = data.getBundle("data_root_hints");
                            ko.r(bundle);
                            String string = data.getString("data_package_name");
                            int i3 = data.getInt("data_calling_pid");
                            int i4 = data.getInt("data_calling_uid");
                            c9 c9Var2 = new c9(21, message.replyTo);
                            vn vnVar2 = (vn) c9Var.b;
                            if (string != null) {
                                for (String str : vnVar2.getPackageManager().getPackagesForUid(i4)) {
                                    if (str.equals(string)) {
                                        vnVar2.e.a(new rn(c9Var, c9Var2, string, i3, i4, bundle));
                                        return;
                                    }
                                }
                            }
                            throw new IllegalArgumentException("Package/uid mismatch: uid=" + i4 + " package=" + string);
                        case 2:
                            ((vn) c9Var.b).e.a(new sn(c9Var, new c9(21, message.replyTo), 0));
                            return;
                        case 3:
                            Bundle bundle2 = data.getBundle("data_options");
                            ko.r(bundle2);
                            ((vn) c9Var.b).e.a(new tn(c9Var, new c9(21, message.replyTo), data.getString("data_media_item_id"), v7.a(data, "data_callback_token"), bundle2));
                            return;
                        case 4:
                            ((vn) c9Var.b).e.a(new k9(c9Var, new c9(21, message.replyTo), data.getString("data_media_item_id"), v7.a(data, "data_callback_token"), 1));
                            return;
                        case 5:
                            String string2 = data.getString("data_media_item_id");
                            gy gyVar = (gy) data.getParcelable("data_result_receiver");
                            c9 c9Var3 = new c9(21, message.replyTo);
                            c9Var.getClass();
                            if (!TextUtils.isEmpty(string2) && gyVar != null) {
                                ((vn) c9Var.b).e.a(new un(c9Var, c9Var3, string2, gyVar));
                                return;
                            }
                            return;
                        case 6:
                            Bundle bundle3 = data.getBundle("data_root_hints");
                            ko.r(bundle3);
                            ((vn) c9Var.b).e.a(new rn(c9Var, new c9(21, message.replyTo), data.getInt("data_calling_uid"), data.getString("data_package_name"), data.getInt("data_calling_pid"), bundle3));
                            return;
                        case 7:
                            ((vn) c9Var.b).e.a(new sn(c9Var, new c9(21, message.replyTo), 1));
                            return;
                        case 8:
                            Bundle bundle4 = data.getBundle("data_search_extras");
                            ko.r(bundle4);
                            String string3 = data.getString("data_search_query");
                            gy gyVar2 = (gy) data.getParcelable("data_result_receiver");
                            c9 c9Var4 = new c9(21, message.replyTo);
                            c9Var.getClass();
                            if (!TextUtils.isEmpty(string3) && gyVar2 != null) {
                                ((vn) c9Var.b).e.a(new un(c9Var, c9Var4, string3, bundle4, gyVar2));
                                return;
                            }
                            return;
                        case 9:
                            Bundle bundle5 = data.getBundle("data_custom_action_extras");
                            ko.r(bundle5);
                            String string4 = data.getString("data_custom_action");
                            gy gyVar3 = (gy) data.getParcelable("data_result_receiver");
                            c9 c9Var5 = new c9(21, message.replyTo);
                            c9Var.getClass();
                            if (!TextUtils.isEmpty(string4) && gyVar3 != null) {
                                ((vn) c9Var.b).e.a(new tn(c9Var, c9Var5, string4, bundle5, gyVar3));
                                return;
                            }
                            return;
                        default:
                            Log.w("MBServiceCompat", "Unhandled message: " + message + "\n  Service version: 2\n  Client version: " + message.arg1);
                            return;
                    }
                }
                removeCallbacksAndMessages(null);
                return;
            case 3:
                if (message.what == 1) {
                    synchronized (((fo) this.b).a) {
                        goVar = (go) ((fo) this.b).d.get();
                        foVar = (fo) this.b;
                        db0Var = foVar.e;
                    }
                    if (goVar != null) {
                        synchronized (goVar.d) {
                            foVar2 = goVar.i;
                        }
                        if (foVar == foVar2 && db0Var != null) {
                            goVar.d((lo) message.obj);
                            ((fo) this.b).a(goVar, db0Var);
                            goVar.d(null);
                            return;
                        }
                        return;
                    }
                    return;
                }
                return;
            default:
                if (message.what == 1) {
                    gu guVar = (gu) this.b;
                    PreferenceScreen preferenceScreen = guVar.U.g;
                    if (preferenceScreen != null) {
                        guVar.V.setAdapter(new ju(preferenceScreen));
                        preferenceScreen.j();
                        return;
                    }
                    return;
                }
                return;
        }
    }

    @Override // android.os.Handler
    public boolean sendMessageAtTime(Message message, long j) {
        switch (this.a) {
            case 2:
                Bundle data = message.getData();
                data.setClassLoader(gn.class.getClassLoader());
                data.putInt("data_calling_uid", Binder.getCallingUid());
                int callingPid = Binder.getCallingPid();
                if (callingPid > 0) {
                    data.putInt("data_calling_pid", callingPid);
                } else if (!data.containsKey("data_calling_pid")) {
                    data.putInt("data_calling_pid", -1);
                }
                return super.sendMessageAtTime(message, j);
            default:
                return super.sendMessageAtTime(message, j);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ db0(Object obj, Looper looper, int i) {
        super(looper);
        this.a = i;
        this.b = obj;
    }

    public /* synthetic */ db0(int i) {
        this.a = i;
    }
}
