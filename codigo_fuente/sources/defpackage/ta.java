package defpackage;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;
import java.util.Locale;
/* renamed from: ta  reason: default package */
/* loaded from: classes.dex */
public final class ta implements sa, ua {
    public final /* synthetic */ int a = 0;
    public ClipData b;
    public int c;
    public int d;
    public Uri e;
    public Bundle f;

    public ta(ta taVar) {
        ClipData clipData = taVar.b;
        clipData.getClass();
        this.b = clipData;
        int i = taVar.c;
        if (i >= 0) {
            if (i <= 5) {
                this.c = i;
                int i2 = taVar.d;
                if ((i2 & 1) == i2) {
                    this.d = i2;
                    this.e = taVar.e;
                    this.f = taVar.f;
                    return;
                }
                String hexString = Integer.toHexString(i2);
                String hexString2 = Integer.toHexString(1);
                throw new IllegalArgumentException("Requested flags 0x" + hexString + ", but only 0x" + hexString2 + " are allowed");
            }
            Locale locale = Locale.US;
            c2.n("source is out of range of [0, 5] (too high)");
            throw null;
        }
        Locale locale2 = Locale.US;
        c2.n("source is out of range of [0, 5] (too low)");
        throw null;
    }

    @Override // defpackage.ua
    public ClipData b() {
        return this.b;
    }

    @Override // defpackage.sa
    public va build() {
        return new va(new ta(this));
    }

    @Override // defpackage.ua
    public int h() {
        return this.d;
    }

    @Override // defpackage.ua
    public ContentInfo k() {
        return null;
    }

    @Override // defpackage.sa
    public void o(Uri uri) {
        this.e = uri;
    }

    @Override // defpackage.ua
    public int p() {
        return this.c;
    }

    @Override // defpackage.sa
    public void r(int i) {
        this.d = i;
    }

    @Override // defpackage.sa
    public void setExtras(Bundle bundle) {
        this.f = bundle;
    }

    public String toString() {
        String str;
        String valueOf;
        String str2;
        switch (this.a) {
            case 1:
                Uri uri = this.e;
                StringBuilder sb = new StringBuilder("ContentInfoCompat{clip=");
                sb.append(this.b.getDescription());
                sb.append(", source=");
                int i = this.c;
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i != 4) {
                                    if (i != 5) {
                                        str = String.valueOf(i);
                                    } else {
                                        str = "SOURCE_PROCESS_TEXT";
                                    }
                                } else {
                                    str = "SOURCE_AUTOFILL";
                                }
                            } else {
                                str = "SOURCE_DRAG_AND_DROP";
                            }
                        } else {
                            str = "SOURCE_INPUT_METHOD";
                        }
                    } else {
                        str = "SOURCE_CLIPBOARD";
                    }
                } else {
                    str = "SOURCE_APP";
                }
                sb.append(str);
                sb.append(", flags=");
                int i2 = this.d;
                if ((i2 & 1) != 0) {
                    valueOf = "FLAG_CONVERT_TO_PLAIN_TEXT";
                } else {
                    valueOf = String.valueOf(i2);
                }
                sb.append(valueOf);
                String str3 = "";
                if (uri == null) {
                    str2 = "";
                } else {
                    str2 = ", hasLinkUri(" + uri.toString().length() + ")";
                }
                sb.append(str2);
                if (this.f != null) {
                    str3 = ", hasExtras";
                }
                sb.append(str3);
                sb.append("}");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    public /* synthetic */ ta() {
    }
}
