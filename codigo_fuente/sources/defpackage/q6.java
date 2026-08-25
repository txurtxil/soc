package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.ProgressBar;
import androidx.fragment.app.a;
import com.google.android.apps.auto.sdk.ui.R;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: q6  reason: default package */
/* loaded from: classes.dex */
public final class q6 extends qc {
    public final ExecutorService j0 = Executors.newSingleThreadExecutor();
    public final Handler k0 = new Handler(Looper.getMainLooper());
    public final HashMap l0 = new HashMap();
    public final HashMap m0 = new HashMap();

    @Override // defpackage.qc, defpackage.vf
    public final void A() {
        Window window;
        Window window2;
        super.A();
        Dialog dialog = this.e0;
        if (dialog != null && (window2 = dialog.getWindow()) != null) {
            window2.setLayout((int) (k().getDisplayMetrics().widthPixels * 0.9f), -2);
        }
        Dialog dialog2 = this.e0;
        if (dialog2 != null && (window = dialog2.getWindow()) != null) {
            window.setSoftInputMode(2);
        }
    }

    @Override // defpackage.qc
    public final Dialog N() {
        String str;
        Context G = G();
        final Context applicationContext = G.getApplicationContext();
        final String l = l(R.string.pref_auto_launch_none);
        l.getClass();
        final String l2 = l(R.string.app_home_screen);
        l2.getClass();
        Bundle bundle = this.f;
        if (bundle != null) {
            str = bundle.getString("current_package");
        } else {
            str = null;
        }
        if (str == null) {
            str = "";
        }
        final String str2 = str;
        final View inflate = LayoutInflater.from(G).inflate(R.layout.dialog_app_picker, (ViewGroup) null);
        final ProgressBar progressBar = (ProgressBar) inflate.findViewById(R.id.app_picker_progress);
        final ListView listView = (ListView) inflate.findViewById(R.id.app_picker_list);
        final EditText editText = (EditText) inflate.findViewById(R.id.app_search);
        ((FrameLayout) inflate.findViewById(R.id.app_picker_body)).setLayoutParams(new LinearLayout.LayoutParams(-1, (int) (k().getDisplayMetrics().heightPixels * 0.5f)));
        editText.setEnabled(false);
        rm rmVar = new rm(G);
        k2 k2Var = (k2) rmVar.c;
        k2Var.d = l(R.string.pref_auto_launch_dialog_title);
        k2Var.o = inflate;
        k2Var.i = k2Var.a.getText(17039360);
        k2Var.j = null;
        o2 b = rmVar.b();
        this.j0.execute(new Runnable() { // from class: j6
            @Override // java.lang.Runnable
            public final void run() {
                List asList;
                Context context = applicationContext;
                PackageManager packageManager = context.getPackageManager();
                List<ResolveInfo> queryIntentActivities = packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.LAUNCHER"), 0);
                queryIntentActivities.getClass();
                List<ResolveInfo> queryIntentActivities2 = packageManager.queryIntentActivities(new Intent("android.intent.action.MAIN").addCategory("android.intent.category.HOME"), 0);
                queryIntentActivities2.getClass();
                List y = w9.y(new n6("", l), new n6("@home", l2));
                ArrayList B = v9.B(queryIntentActivities, queryIntentActivities2);
                ArrayList arrayList = new ArrayList();
                int size = B.size();
                int i = 0;
                while (i < size) {
                    Object obj = B.get(i);
                    i++;
                    if (!qj.c(((ResolveInfo) obj).activityInfo.packageName, context.getPackageName())) {
                        arrayList.add(obj);
                    }
                }
                HashSet hashSet = new HashSet();
                ArrayList arrayList2 = new ArrayList();
                int size2 = arrayList.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList.get(i2);
                    i2++;
                    if (hashSet.add(((ResolveInfo) obj2).activityInfo.packageName)) {
                        arrayList2.add(obj2);
                    }
                }
                ArrayList arrayList3 = new ArrayList(x9.z(arrayList2));
                int size3 = arrayList2.size();
                int i3 = 0;
                while (i3 < size3) {
                    Object obj3 = arrayList2.get(i3);
                    i3++;
                    ResolveInfo resolveInfo = (ResolveInfo) obj3;
                    String str3 = resolveInfo.activityInfo.packageName;
                    str3.getClass();
                    arrayList3.add(new n6(str3, resolveInfo.loadLabel(packageManager).toString()));
                }
                o6 o6Var = new o6(0);
                if (arrayList3.size() <= 1) {
                    asList = v9.D(arrayList3);
                } else {
                    Object[] array = arrayList3.toArray(new Object[0]);
                    array.getClass();
                    if (array.length > 1) {
                        Arrays.sort(array, o6Var);
                    }
                    asList = Arrays.asList(array);
                    asList.getClass();
                }
                final ArrayList B2 = v9.B(y, asList);
                final q6 q6Var = this;
                Handler handler = q6Var.k0;
                final String str4 = str2;
                final ProgressBar progressBar2 = progressBar;
                final ListView listView2 = listView;
                final View view = inflate;
                final EditText editText2 = editText;
                handler.post(new Runnable() { // from class: k6
                    @Override // java.lang.Runnable
                    public final void run() {
                        final q6 q6Var2 = q6.this;
                        if (q6Var2.o()) {
                            ArrayList arrayList4 = B2;
                            String str5 = str4;
                            final m6 m6Var = new m6(q6Var2, arrayList4, str5);
                            progressBar2.setVisibility(8);
                            ListView listView3 = listView2;
                            int i4 = 0;
                            listView3.setVisibility(0);
                            listView3.setAdapter((ListAdapter) m6Var);
                            listView3.setEmptyView(view.findViewById(R.id.app_picker_empty));
                            listView3.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: l6
                                @Override // android.widget.AdapterView.OnItemClickListener
                                public final void onItemClick(AdapterView adapterView, View view2, int i5, long j) {
                                    q6 q6Var3 = q6.this;
                                    a j2 = q6Var3.j();
                                    Bundle bundle2 = new Bundle();
                                    bundle2.putString("package", ((n6) m6Var.c.get(i5)).a);
                                    Bundle bundle3 = q6Var3.f;
                                    int i6 = -1;
                                    if (bundle3 != null) {
                                        i6 = bundle3.getInt("slot", -1);
                                    }
                                    bundle2.putInt("slot", i6);
                                    fg fgVar = (fg) j2.k.get("app_picker_result");
                                    if (fgVar != null && ((androidx.lifecycle.a) fgVar.a).c.compareTo(mk.d) >= 0) {
                                        fgVar.d(bundle2);
                                    } else {
                                        j2.j.put("app_picker_result", bundle2);
                                    }
                                    q6Var3.M(false, false);
                                }
                            });
                            EditText editText3 = editText2;
                            editText3.setEnabled(true);
                            editText3.addTextChangedListener(new p6(m6Var, listView3));
                            int size4 = arrayList4.size();
                            int i5 = 0;
                            while (true) {
                                if (i5 < size4) {
                                    Object obj4 = arrayList4.get(i5);
                                    i5++;
                                    if (((n6) obj4).a.equals(str5)) {
                                        break;
                                    }
                                    i4++;
                                } else {
                                    i4 = -1;
                                    break;
                                }
                            }
                            if (i4 > 0) {
                                listView3.setSelection(i4);
                            }
                        }
                    }
                });
            }
        });
        return b;
    }

    @Override // defpackage.qc, defpackage.vf
    public final void u() {
        super.u();
        this.j0.shutdownNow();
    }
}
