package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.net.Uri;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.apps.auto.sdk.ui.R;
/* renamed from: b  reason: default package */
/* loaded from: classes.dex */
public final class b extends qc {
    @Override // defpackage.qc
    public final Dialog N() {
        long j;
        Context G = G();
        rm rmVar = new rm(G);
        k2 k2Var = (k2) rmVar.c;
        View inflate = LayoutInflater.from(k2Var.a).inflate(R.layout.dialog_about, (ViewGroup) null);
        PackageInfo packageInfo = G.getPackageManager().getPackageInfo(G.getPackageName(), 0);
        TextView textView = (TextView) inflate.findViewById(R.id.about_version);
        String str = packageInfo.versionName;
        if (Build.VERSION.SDK_INT >= 28) {
            j = ws.b(packageInfo);
        } else {
            j = packageInfo.versionCode;
        }
        textView.setText("Version " + str + " (" + j + ")");
        ((TextView) inflate.findViewById(R.id.about_github)).setOnClickListener(new View.OnClickListener(this) { // from class: a
            public final /* synthetic */ b b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = r2;
                b bVar = this.b;
                switch (i) {
                    case 0:
                        bVar.L(new Intent("android.intent.action.VIEW", Uri.parse(bVar.l(R.string.about_github_url))));
                        return;
                    case 1:
                        bVar.L(new Intent("android.intent.action.VIEW", Uri.parse(bVar.l(R.string.about_donate_paypal_url))));
                        return;
                    default:
                        bVar.L(new Intent("android.intent.action.VIEW", Uri.parse(bVar.l(R.string.about_donate_bubbletea_url))));
                        return;
                }
            }
        });
        ((TextView) inflate.findViewById(R.id.about_donate_paypal)).setOnClickListener(new View.OnClickListener(this) { // from class: a
            public final /* synthetic */ b b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = r2;
                b bVar = this.b;
                switch (i) {
                    case 0:
                        bVar.L(new Intent("android.intent.action.VIEW", Uri.parse(bVar.l(R.string.about_github_url))));
                        return;
                    case 1:
                        bVar.L(new Intent("android.intent.action.VIEW", Uri.parse(bVar.l(R.string.about_donate_paypal_url))));
                        return;
                    default:
                        bVar.L(new Intent("android.intent.action.VIEW", Uri.parse(bVar.l(R.string.about_donate_bubbletea_url))));
                        return;
                }
            }
        });
        ((TextView) inflate.findViewById(R.id.about_donate_bubbletea)).setOnClickListener(new View.OnClickListener(this) { // from class: a
            public final /* synthetic */ b b;

            {
                this.b = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                int i = r2;
                b bVar = this.b;
                switch (i) {
                    case 0:
                        bVar.L(new Intent("android.intent.action.VIEW", Uri.parse(bVar.l(R.string.about_github_url))));
                        return;
                    case 1:
                        bVar.L(new Intent("android.intent.action.VIEW", Uri.parse(bVar.l(R.string.about_donate_paypal_url))));
                        return;
                    default:
                        bVar.L(new Intent("android.intent.action.VIEW", Uri.parse(bVar.l(R.string.about_donate_bubbletea_url))));
                        return;
                }
            }
        });
        k2Var.o = inflate;
        k2Var.g = k2Var.a.getText(17039370);
        k2Var.h = null;
        return rmVar.b();
    }
}
