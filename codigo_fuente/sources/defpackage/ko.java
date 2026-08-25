package defpackage;

import android.animation.Animator;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Shader;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.media.MediaMetadata;
import android.media.session.MediaSession;
import android.os.BadParcelableException;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat$QueueItem;
import android.support.v4.media.session.MediaSessionCompat$Token;
import android.support.v4.media.session.a;
import android.text.Editable;
import android.text.Selection;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.KeyListener;
import android.text.method.NumberKeyListener;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.AbsSeekBar;
import android.widget.EditText;
import androidx.car.app.model.Alert;
import androidx.preference.Preference;
import androidx.preference.PreferenceGroup;
import idv.lzn.screenonauto.MirrorMediaService;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.locks.ReentrantReadWriteLock;
/* renamed from: ko  reason: default package */
/* loaded from: classes.dex */
public class ko implements t30, bu {
    public static int d;
    public static final int[] e = {16843067, 16843068};
    public final /* synthetic */ int a;
    public Object b;
    public Object c;

    public ko(MirrorMediaService mirrorMediaService) {
        ComponentName componentName;
        PendingIntent pendingIntent;
        Looper mainLooper;
        int i;
        this.a = 0;
        this.c = new ArrayList();
        if (!TextUtils.isEmpty("MirrorMediaService")) {
            int i2 = wn.a;
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
            intent.setPackage(mirrorMediaService.getPackageName());
            List<ResolveInfo> queryBroadcastReceivers = mirrorMediaService.getPackageManager().queryBroadcastReceivers(intent, 0);
            if (queryBroadcastReceivers.size() == 1) {
                ActivityInfo activityInfo = queryBroadcastReceivers.get(0).activityInfo;
                componentName = new ComponentName(activityInfo.packageName, activityInfo.name);
            } else {
                if (queryBroadcastReceivers.size() > 1) {
                    Log.w("MediaButtonReceiver", "More than one BroadcastReceiver that handles android.intent.action.MEDIA_BUTTON was found, returning null.");
                }
                componentName = null;
            }
            if (componentName == null) {
                Log.w("MediaSessionCompat", "Couldn't find a unique registered media button receiver in the given context.");
            }
            if (componentName != null) {
                Intent intent2 = new Intent("android.intent.action.MEDIA_BUTTON");
                intent2.setComponent(componentName);
                if (Build.VERSION.SDK_INT >= 31) {
                    i = 33554432;
                } else {
                    i = 0;
                }
                pendingIntent = PendingIntent.getBroadcast(mirrorMediaService, 0, intent2, i);
            } else {
                pendingIntent = null;
            }
            int i3 = Build.VERSION.SDK_INT;
            if (i3 >= 29) {
                this.b = new go(mirrorMediaService);
            } else if (i3 >= 28) {
                this.b = new go(mirrorMediaService);
            } else {
                this.b = new go(mirrorMediaService);
            }
            if (Looper.myLooper() != null) {
                mainLooper = Looper.myLooper();
            } else {
                mainLooper = Looper.getMainLooper();
            }
            ((go) this.b).c(new fo(), new Handler(mainLooper));
            ((go) this.b).a.setMediaButtonReceiver(pendingIntent);
            MediaSessionCompat$Token mediaSessionCompat$Token = ((go) this.b).c;
            if (mediaSessionCompat$Token != null) {
                Collections.synchronizedSet(new HashSet());
                if (i3 >= 29) {
                    new a(mirrorMediaService, mediaSessionCompat$Token);
                } else {
                    new a(mirrorMediaService, mediaSessionCompat$Token);
                }
                if (d == 0) {
                    d = (int) (TypedValue.applyDimension(1, 320.0f, mirrorMediaService.getResources().getDisplayMetrics()) + 0.5f);
                    return;
                }
                return;
            }
            c2.n("sessionToken must not be null");
            throw null;
        }
        c2.n("tag must not be null or empty");
        throw null;
    }

    public static Bundle P(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        r(bundle);
        try {
            bundle.isEmpty();
            return bundle;
        } catch (BadParcelableException unused) {
            Log.e("MediaSessionCompat", "Could not unparcel the data.");
            return null;
        }
    }

    public static boolean c(Editable editable, KeyEvent keyEvent, boolean z) {
        c60[] c60VarArr;
        if (KeyEvent.metaStateHasNoModifiers(keyEvent.getMetaState())) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd && (c60VarArr = (c60[]) editable.getSpans(selectionStart, selectionEnd, c60.class)) != null && c60VarArr.length > 0) {
                for (c60 c60Var : c60VarArr) {
                    int spanStart = editable.getSpanStart(c60Var);
                    int spanEnd = editable.getSpanEnd(c60Var);
                    if ((z && spanStart == selectionStart) || ((!z && spanEnd == selectionStart) || (selectionStart > spanStart && selectionStart < spanEnd))) {
                        editable.delete(spanStart, spanEnd);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static void r(Bundle bundle) {
        if (bundle != null) {
            bundle.setClassLoader(ko.class.getClassLoader());
        }
    }

    public static int v(int i, int i2) {
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            i3++;
            if (i3 == i2) {
                i4++;
                i3 = 0;
            } else if (i3 > i2) {
                i4++;
                i3 = 1;
            }
        }
        if (i3 + 1 > i2) {
            return i4 + 1;
        }
        return i4;
    }

    public void A(int i, int i2) {
        int[] iArr = (int[]) this.b;
        if (iArr != null && i < iArr.length) {
            int i3 = i + i2;
            s(i3);
            int[] iArr2 = (int[]) this.b;
            System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
            Arrays.fill((int[]) this.b, i, i3, -1);
            ArrayList arrayList = (ArrayList) this.c;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    x20 x20Var = (x20) ((ArrayList) this.c).get(size);
                    int i4 = x20Var.a;
                    if (i4 >= i) {
                        x20Var.a = i4 + i2;
                    }
                }
            }
        }
    }

    public void B(int i, int i2) {
        int[] iArr = (int[]) this.b;
        if (iArr != null && i < iArr.length) {
            int i3 = i + i2;
            s(i3);
            int[] iArr2 = (int[]) this.b;
            System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
            int[] iArr3 = (int[]) this.b;
            Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
            ArrayList arrayList = (ArrayList) this.c;
            if (arrayList != null) {
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    x20 x20Var = (x20) ((ArrayList) this.c).get(size);
                    int i4 = x20Var.a;
                    if (i4 >= i) {
                        if (i4 < i3) {
                            ((ArrayList) this.c).remove(size);
                        } else {
                            x20Var.a = i4 - i2;
                        }
                    }
                }
            }
        }
    }

    public wd C(InputConnection inputConnection, EditorInfo editorInfo) {
        InputConnection inputConnection2;
        c9 c9Var = (c9) this.c;
        if (inputConnection == null) {
            c9Var.getClass();
            inputConnection2 = null;
        } else {
            ko koVar = (ko) c9Var.b;
            koVar.getClass();
            if (!(inputConnection instanceof wd)) {
                inputConnection = new wd(editorInfo, inputConnection, (EditText) koVar.b);
            }
            inputConnection2 = inputConnection;
        }
        return (wd) inputConnection2;
    }

    public void D(i1 i1Var) {
        vp vpVar = (vp) this.b;
        ((ActionMode.Callback) vpVar.a).onDestroyActionMode(vpVar.b(i1Var));
        w3 w3Var = (w3) this.c;
        if (w3Var.w != null) {
            w3Var.l.getDecorView().removeCallbacks(w3Var.x);
        }
        if (w3Var.v != null) {
            h80 h80Var = w3Var.y;
            if (h80Var != null) {
                h80Var.b();
            }
            h80 a = u70.a(w3Var.v);
            a.a(0.0f);
            w3Var.y = a;
            a.d(new m3(2, this));
        }
        w3Var.u = null;
        ViewGroup viewGroup = w3Var.A;
        WeakHashMap weakHashMap = u70.a;
        h70.c(viewGroup);
        w3Var.K();
    }

    public boolean E(i1 i1Var, Menu menu) {
        ViewGroup viewGroup = ((w3) this.c).A;
        WeakHashMap weakHashMap = u70.a;
        h70.c(viewGroup);
        vp vpVar = (vp) this.b;
        ActionMode.Callback callback = (ActionMode.Callback) vpVar.a;
        o30 b = vpVar.b(i1Var);
        j20 j20Var = (j20) vpVar.d;
        Menu menu2 = (Menu) j20Var.getOrDefault(menu, null);
        if (menu2 == null) {
            menu2 = new op((Context) vpVar.b, (so) menu);
            j20Var.put(menu, menu2);
        }
        return callback.onPrepareActionMode(b, menu2);
    }

    public void F(hf hfVar) {
        Handler handler = (Handler) this.c;
        c9 c9Var = (c9) this.b;
        int i = hfVar.b;
        if (i == 0) {
            handler.post(new c1(c9Var, hfVar.a, 4, false));
        } else {
            handler.post(new d8(c9Var, i));
        }
    }

    public dr G(nu nuVar, int i) {
        y70 y70Var;
        dr drVar;
        j20 j20Var = (j20) this.b;
        int d2 = j20Var.d(nuVar);
        if (d2 >= 0 && (y70Var = (y70) j20Var.i(d2)) != null) {
            int i2 = y70Var.a;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                y70Var.a = i3;
                if (i == 4) {
                    drVar = y70Var.b;
                } else if (i == 8) {
                    drVar = y70Var.c;
                } else {
                    c2.n("Must provide flag PRE or POST");
                }
                if ((i3 & 12) == 0) {
                    j20Var.h(d2);
                    y70Var.a = 0;
                    y70Var.b = null;
                    y70Var.c = null;
                    y70.d.c(y70Var);
                }
                return drVar;
            }
        }
        return null;
    }

    public void H(nu nuVar) {
        y70 y70Var = (y70) ((j20) this.b).getOrDefault(nuVar, null);
        if (y70Var == null) {
            return;
        }
        y70Var.a &= -2;
    }

    public void I(nu nuVar) {
        am amVar = (am) this.c;
        int e2 = amVar.e() - 1;
        while (true) {
            if (e2 < 0) {
                break;
            } else if (nuVar == amVar.f(e2)) {
                Object[] objArr = amVar.c;
                Object obj = objArr[e2];
                Object obj2 = am.e;
                if (obj != obj2) {
                    objArr[e2] = obj2;
                    amVar.a = true;
                }
            } else {
                e2--;
            }
        }
        y70 y70Var = (y70) ((j20) this.b).remove(nuVar);
        if (y70Var != null) {
            y70Var.a = 0;
            y70Var.b = null;
            y70Var.c = null;
            y70.d.c(y70Var);
        }
    }

    public void J(boolean z) {
        ((go) this.b).a.setActive(z);
        Iterator it = ((ArrayList) this.c).iterator();
        if (!it.hasNext()) {
            return;
        }
        it.next().getClass();
        c2.l();
    }

    public void K(boolean z) {
        fe feVar = (fe) ((ko) ((c9) this.c).b).c;
        if (feVar.c != z) {
            if (feVar.b != null) {
                td a = td.a();
                ee eeVar = feVar.b;
                a.getClass();
                qj.d(eeVar, "initCallback cannot be null");
                ReentrantReadWriteLock reentrantReadWriteLock = a.a;
                reentrantReadWriteLock.writeLock().lock();
                try {
                    a.b.remove(eeVar);
                } finally {
                    reentrantReadWriteLock.writeLock().unlock();
                }
            }
            feVar.c = z;
            if (z) {
                fe.a(feVar.a, td.a().b());
            }
        }
    }

    public void L(MediaMetadataCompat mediaMetadataCompat) {
        MediaMetadata mediaMetadata;
        go goVar = (go) this.b;
        goVar.h = mediaMetadataCompat;
        MediaSession mediaSession = goVar.a;
        if (mediaMetadataCompat == null) {
            mediaMetadata = null;
        } else {
            if (mediaMetadataCompat.b == null) {
                Parcel obtain = Parcel.obtain();
                mediaMetadataCompat.writeToParcel(obtain, 0);
                obtain.setDataPosition(0);
                mediaMetadataCompat.b = (MediaMetadata) MediaMetadata.CREATOR.createFromParcel(obtain);
                obtain.recycle();
            }
            mediaMetadata = mediaMetadataCompat.b;
        }
        mediaSession.setMetadata(mediaMetadata);
    }

    /*  JADX ERROR: NullPointerException in pass: BlockProcessor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.nodes.BlockNode.getPredecessors()" because "to" is null
        	at jadx.core.dex.visitors.blocks.BlockSplitter.connect(BlockSplitter.java:150)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectSplittersAndHandlers(BlockExceptionHandler.java:457)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.wrapBlocksWithTryCatch(BlockExceptionHandler.java:358)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.connectExcHandlers(BlockExceptionHandler.java:84)
        	at jadx.core.dex.visitors.blocks.BlockExceptionHandler.process(BlockExceptionHandler.java:59)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.independentBlockTreeMod(BlockProcessor.java:318)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:46)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:39)
        */
    public void M(android.support.v4.media.session.PlaybackStateCompat r9) {
        /*
            r8 = this;
            java.lang.Object r8 = r8.b
            go r8 = (defpackage.go) r8
            r8.f = r9
            java.lang.Object r1 = r8.d
            monitor-enter(r1)
            android.os.RemoteCallbackList r0 = r8.e     // Catch: java.lang.Throwable -> L1f
            int r0 = r0.beginBroadcast()     // Catch: java.lang.Throwable -> L1f
            int r0 = r0 + (-1)
        L11:
            android.os.RemoteCallbackList r2 = r8.e
            if (r0 < 0) goto L25
            android.os.IInterface r2 = r2.getBroadcastItem(r0)     // Catch: java.lang.Throwable -> L1f
            hi r2 = (defpackage.hi) r2     // Catch: java.lang.Throwable -> L1f
            r2.c(r9)     // Catch: java.lang.Throwable -> L1f android.os.RemoteException -> L22
            goto L22
        L1f:
            r0 = move-exception
            r8 = r0
            goto L8b
        L22:
            int r0 = r0 + (-1)
            goto L11
        L25:
            r2.finishBroadcast()     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            android.media.session.MediaSession r8 = r8.a
            android.media.session.PlaybackState r0 = r9.l
            if (r0 != 0) goto L85
            android.media.session.PlaybackState$Builder r1 = defpackage.tt.d()
            int r2 = r9.a
            long r3 = r9.b
            float r5 = r9.d
            long r6 = r9.h
            defpackage.tt.x(r1, r2, r3, r5, r6)
            long r2 = r9.c
            defpackage.tt.u(r1, r2)
            long r2 = r9.e
            defpackage.tt.s(r1, r2)
            java.lang.CharSequence r0 = r9.g
            defpackage.tt.v(r1, r0)
            java.util.ArrayList r0 = r9.i
            int r2 = r0.size()
            r3 = 0
        L54:
            if (r3 >= r2) goto L75
            java.lang.Object r4 = r0.get(r3)
            int r3 = r3 + 1
            android.support.v4.media.session.PlaybackStateCompat$CustomAction r4 = (android.support.v4.media.session.PlaybackStateCompat.CustomAction) r4
            java.lang.String r5 = r4.a
            java.lang.CharSequence r6 = r4.b
            int r7 = r4.c
            android.media.session.PlaybackState$CustomAction$Builder r5 = defpackage.tt.e(r5, r6, r7)
            android.os.Bundle r4 = r4.d
            defpackage.tt.w(r5, r4)
            android.media.session.PlaybackState$CustomAction r4 = defpackage.tt.b(r5)
            defpackage.tt.a(r1, r4)
            goto L54
        L75:
            long r2 = r9.j
            defpackage.tt.t(r1, r2)
            android.os.Bundle r0 = r9.k
            defpackage.ut.b(r1, r0)
            android.media.session.PlaybackState r0 = defpackage.tt.c(r1)
            r9.l = r0
        L85:
            android.media.session.PlaybackState r9 = r9.l
            r8.setPlaybackState(r9)
            return
        L8b:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ko.M(android.support.v4.media.session.PlaybackStateCompat):void");
    }

    public void N(ArrayList arrayList) {
        int i = 0;
        if (arrayList != null) {
            HashSet hashSet = new HashSet();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                i2++;
                MediaSessionCompat$QueueItem mediaSessionCompat$QueueItem = (MediaSessionCompat$QueueItem) obj;
                if (mediaSessionCompat$QueueItem != null) {
                    long j = mediaSessionCompat$QueueItem.b;
                    if (hashSet.contains(Long.valueOf(j))) {
                        Log.e("MediaSessionCompat", "Found duplicate queue id: " + j, new IllegalArgumentException("id of each queue item should be unique"));
                    }
                    hashSet.add(Long.valueOf(j));
                } else {
                    c2.n("queue shouldn't have null items");
                    return;
                }
            }
        }
        go goVar = (go) this.b;
        MediaSession mediaSession = goVar.a;
        goVar.g = arrayList;
        if (arrayList == null) {
            mediaSession.setQueue(null);
            return;
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        while (i < size2) {
            Object obj2 = arrayList.get(i);
            i++;
            MediaSessionCompat$QueueItem mediaSessionCompat$QueueItem2 = (MediaSessionCompat$QueueItem) obj2;
            MediaSession.QueueItem queueItem = mediaSessionCompat$QueueItem2.c;
            if (queueItem == null) {
                queueItem = jo.a(mediaSessionCompat$QueueItem2.a.a(), mediaSessionCompat$QueueItem2.b);
                mediaSessionCompat$QueueItem2.c = queueItem;
            }
            arrayList2.add(queueItem);
        }
        mediaSession.setQueue(arrayList2);
    }

    public Drawable O(Drawable drawable, boolean z) {
        boolean z2;
        if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            Drawable[] drawableArr = new Drawable[numberOfLayers];
            for (int i = 0; i < numberOfLayers; i++) {
                int id = layerDrawable.getId(i);
                Drawable drawable2 = layerDrawable.getDrawable(i);
                if (id != 16908301 && id != 16908303) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                drawableArr[i] = O(drawable2, z2);
            }
            LayerDrawable layerDrawable2 = new LayerDrawable(drawableArr);
            for (int i2 = 0; i2 < numberOfLayers; i2++) {
                layerDrawable2.setId(i2, layerDrawable.getId(i2));
                layerDrawable2.setLayerGravity(i2, layerDrawable.getLayerGravity(i2));
                layerDrawable2.setLayerWidth(i2, layerDrawable.getLayerWidth(i2));
                layerDrawable2.setLayerHeight(i2, layerDrawable.getLayerHeight(i2));
                layerDrawable2.setLayerInsetLeft(i2, layerDrawable.getLayerInsetLeft(i2));
                layerDrawable2.setLayerInsetRight(i2, layerDrawable.getLayerInsetRight(i2));
                layerDrawable2.setLayerInsetTop(i2, layerDrawable.getLayerInsetTop(i2));
                layerDrawable2.setLayerInsetBottom(i2, layerDrawable.getLayerInsetBottom(i2));
                layerDrawable2.setLayerInsetStart(i2, layerDrawable.getLayerInsetStart(i2));
                layerDrawable2.setLayerInsetEnd(i2, layerDrawable.getLayerInsetEnd(i2));
            }
            return layerDrawable2;
        } else if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            Bitmap bitmap = bitmapDrawable.getBitmap();
            if (((Bitmap) this.c) == null) {
                this.c = bitmap;
            }
            ShapeDrawable shapeDrawable = new ShapeDrawable(new RoundRectShape(new float[]{5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f, 5.0f}, null, null));
            shapeDrawable.getPaint().setShader(new BitmapShader(bitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP));
            shapeDrawable.getPaint().setColorFilter(bitmapDrawable.getPaint().getColorFilter());
            if (z) {
                return new ClipDrawable(shapeDrawable, 3, 1);
            }
            return shapeDrawable;
        } else {
            return drawable;
        }
    }

    public void a(nu nuVar, dr drVar) {
        j20 j20Var = (j20) this.b;
        y70 y70Var = (y70) j20Var.getOrDefault(nuVar, null);
        if (y70Var == null) {
            y70Var = y70.a();
            j20Var.put(nuVar, y70Var);
        }
        y70Var.c = drVar;
        y70Var.a |= 8;
    }

    @Override // defpackage.bu
    public void b(Preference preference) {
        ((PreferenceGroup) this.b).T = Alert.DURATION_SHOW_INDEFINITELY;
        ju juVar = (ju) this.c;
        Handler handler = juVar.g;
        c7 c7Var = juVar.h;
        handler.removeCallbacks(c7Var);
        handler.post(c7Var);
    }

    public void d(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.d(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void e(boolean z) {
        androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.c;
        aVar.o.getClass();
        vf vfVar = aVar.q;
        if (vfVar != null) {
            vfVar.j().l.e(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void f(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.f(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void g(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.g(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void h(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.h(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void i(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.i(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void j(boolean z) {
        androidx.fragment.app.a aVar = (androidx.fragment.app.a) this.c;
        aVar.o.getClass();
        vf vfVar = aVar.q;
        if (vfVar != null) {
            vfVar.j().l.j(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void k(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.k(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void l(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.l(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void m(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.m(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void n(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.n(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void o(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.o(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void p(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.p(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void q(boolean z) {
        vf vfVar = ((androidx.fragment.app.a) this.c).q;
        if (vfVar != null) {
            vfVar.j().l.q(true);
        }
        Iterator it = ((CopyOnWriteArrayList) this.b).iterator();
        if (it.hasNext()) {
            if (it.next() == null) {
                if (z) {
                    throw null;
                }
                throw null;
            }
            c2.l();
        }
    }

    public void s(int i) {
        int[] iArr = (int[]) this.b;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.b = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i >= iArr.length) {
            int length = iArr.length;
            while (length <= i) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.b = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.b;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    public View t(int i, int i2, int i3, int i4) {
        int i5;
        View t;
        z60 z60Var = (z60) this.c;
        jw jwVar = (jw) this.b;
        int d2 = jwVar.d();
        int c = jwVar.c();
        if (i2 > i) {
            i5 = 1;
        } else {
            i5 = -1;
        }
        View view = null;
        while (i != i2) {
            switch (jwVar.a) {
                case 0:
                    t = jwVar.b.t(i);
                    break;
                default:
                    t = jwVar.b.t(i);
                    break;
            }
            int b = jwVar.b(t);
            int a = jwVar.a(t);
            z60Var.b = d2;
            z60Var.c = c;
            z60Var.d = b;
            z60Var.e = a;
            if (i3 != 0) {
                z60Var.a = i3;
                if (z60Var.a()) {
                    return t;
                }
            }
            if (i4 != 0) {
                z60Var.a = i4;
                if (z60Var.a()) {
                    view = t;
                }
            }
            i += i5;
        }
        return view;
    }

    public KeyListener u(KeyListener keyListener) {
        if (!(keyListener instanceof NumberKeyListener)) {
            ((ko) ((c9) this.c).b).getClass();
            if (keyListener instanceof zd) {
                return keyListener;
            }
            if (keyListener == null) {
                return null;
            }
            if (keyListener instanceof NumberKeyListener) {
                return keyListener;
            }
            return new zd(keyListener);
        }
        return keyListener;
    }

    public boolean w(CharSequence charSequence, int i, int i2, ae aeVar) {
        int i3;
        if (aeVar.c == 0) {
            sb sbVar = (sb) this.c;
            sp b = aeVar.b();
            int a = b.a(8);
            if (a != 0) {
                ((ByteBuffer) b.d).getShort(a + b.a);
            }
            sbVar.getClass();
            ThreadLocal threadLocal = sb.b;
            if (threadLocal.get() == null) {
                threadLocal.set(new StringBuilder());
            }
            StringBuilder sb = (StringBuilder) threadLocal.get();
            sb.setLength(0);
            while (i < i2) {
                sb.append(charSequence.charAt(i));
                i++;
            }
            TextPaint textPaint = sbVar.a;
            String sb2 = sb.toString();
            int i4 = zs.a;
            if (ys.a(textPaint, sb2)) {
                i3 = 2;
            } else {
                i3 = 1;
            }
            aeVar.c = i3;
        }
        if (aeVar.c != 2) {
            return false;
        }
        return true;
    }

    public void x() {
        ((SparseIntArray) this.b).clear();
    }

    public boolean y(View view) {
        z60 z60Var = (z60) this.c;
        jw jwVar = (jw) this.b;
        int d2 = jwVar.d();
        int c = jwVar.c();
        int b = jwVar.b(view);
        int a = jwVar.a(view);
        z60Var.b = d2;
        z60Var.c = c;
        z60Var.d = b;
        z60Var.e = a;
        z60Var.a = 24579;
        return z60Var.a();
    }

    public void z(AttributeSet attributeSet, int i) {
        boolean z = true;
        switch (this.a) {
            case 1:
                AbsSeekBar absSeekBar = (AbsSeekBar) this.b;
                v5 C = v5.C(absSeekBar.getContext(), attributeSet, e, i);
                Drawable s = C.s(0);
                if (s != null) {
                    if (s instanceof AnimationDrawable) {
                        AnimationDrawable animationDrawable = (AnimationDrawable) s;
                        int numberOfFrames = animationDrawable.getNumberOfFrames();
                        AnimationDrawable animationDrawable2 = new AnimationDrawable();
                        animationDrawable2.setOneShot(animationDrawable.isOneShot());
                        for (int i2 = 0; i2 < numberOfFrames; i2++) {
                            Drawable O = O(animationDrawable.getFrame(i2), true);
                            O.setLevel(10000);
                            animationDrawable2.addFrame(O, animationDrawable.getDuration(i2));
                        }
                        animationDrawable2.setLevel(10000);
                        s = animationDrawable2;
                    }
                    absSeekBar.setIndeterminateDrawable(s);
                }
                Drawable s2 = C.s(1);
                if (s2 != null) {
                    absSeekBar.setProgressDrawable(O(s2, false));
                }
                C.E();
                return;
            default:
                TypedArray obtainStyledAttributes = ((EditText) this.b).getContext().obtainStyledAttributes(attributeSet, vv.i, i, 0);
                try {
                    if (obtainStyledAttributes.hasValue(14)) {
                        z = obtainStyledAttributes.getBoolean(14, true);
                    }
                    obtainStyledAttributes.recycle();
                    K(z);
                    return;
                } catch (Throwable th) {
                    obtainStyledAttributes.recycle();
                    throw th;
                }
        }
    }

    public /* synthetic */ ko(Object obj, int i, Object obj2) {
        this.a = i;
        this.c = obj;
        this.b = obj2;
    }

    public /* synthetic */ ko(Object obj, Object obj2, int i, boolean z) {
        this.a = i;
        this.b = obj;
        this.c = obj2;
    }

    public ko(AbsSeekBar absSeekBar) {
        this.a = 1;
        this.b = absSeekBar;
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [android.text.Editable$Factory, vd] */
    public ko(EditText editText, int i) {
        this.a = i;
        switch (i) {
            case 8:
                this.b = editText;
                fe feVar = new fe(editText);
                this.c = feVar;
                editText.addTextChangedListener(feVar);
                if (vd.b == null) {
                    synchronized (vd.a) {
                        try {
                            if (vd.b == null) {
                                ?? factory = new Editable.Factory();
                                try {
                                    vd.c = Class.forName("android.text.DynamicLayout$ChangeWatcher", false, vd.class.getClassLoader());
                                } catch (Throwable unused) {
                                }
                                vd.b = factory;
                            }
                        } finally {
                        }
                    }
                }
                editText.setEditableFactory(vd.b);
                return;
            default:
                this.b = editText;
                this.c = new c9(editText);
                return;
        }
    }

    public ko(androidx.fragment.app.a aVar) {
        this.a = 11;
        this.b = new CopyOnWriteArrayList();
        this.c = aVar;
    }

    public ko(Runnable runnable) {
        this.a = 14;
        this.c = new CopyOnWriteArrayList();
        new HashMap();
        this.b = runnable;
    }

    public ko(vp vpVar, hd hdVar, sb sbVar) {
        this.a = 9;
        this.b = vpVar;
        this.c = sbVar;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [z60, java.lang.Object] */
    public ko(jw jwVar) {
        this.a = 18;
        this.b = jwVar;
        ?? obj = new Object();
        obj.a = 0;
        this.c = obj;
    }

    public ko(ArrayList arrayList, ArrayList arrayList2) {
        this.a = 12;
        int size = arrayList.size();
        this.b = new int[size];
        this.c = new float[size];
        for (int i = 0; i < size; i++) {
            ((int[]) this.b)[i] = ((Integer) arrayList.get(i)).intValue();
            ((float[]) this.c)[i] = ((Float) arrayList2.get(i)).floatValue();
        }
    }

    public ko(int i, int i2) {
        this.a = 12;
        this.b = new int[]{i, i2};
        this.c = new float[]{0.0f, 1.0f};
    }

    public ko(int i, int i2, int i3) {
        this.a = 12;
        this.b = new int[]{i, i2, i3};
        this.c = new float[]{0.0f, 0.5f, 1.0f};
    }

    public ko(Animation animation) {
        this.a = 10;
        this.b = animation;
        this.c = null;
    }

    public ko(Animator animator) {
        this.a = 10;
        this.b = null;
        this.c = animator;
    }

    public /* synthetic */ ko(int i, boolean z) {
        this.a = i;
    }

    public ko(int i) {
        this.a = i;
        switch (i) {
            case 19:
                this.b = new j20();
                this.c = new am();
                return;
            default:
                this.b = new SparseIntArray();
                this.c = new SparseIntArray();
                return;
        }
    }
}
