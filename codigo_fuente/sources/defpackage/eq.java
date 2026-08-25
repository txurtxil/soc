package defpackage;

import android.graphics.SurfaceTexture;
import android.opengl.EGL14;
import android.opengl.EGLConfig;
import android.opengl.EGLContext;
import android.opengl.EGLDisplay;
import android.opengl.EGLSurface;
import android.opengl.GLES20;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.Log;
import android.view.Surface;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: eq  reason: default package */
/* loaded from: classes.dex */
public final class eq {
    public final FloatBuffer A;
    public volatile int B;
    public volatile Surface C;
    public Surface D;
    public int E;
    public final HandlerThread a;
    public final Handler b;
    public EGLDisplay c;
    public EGLContext d;
    public EGLConfig e;
    public EGLSurface f;
    public EGLSurface g;
    public Surface h;
    public int i;
    public int j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public SurfaceTexture p;
    public int q;
    public int r;
    public int s;
    public int t;
    public int u;
    public int v;
    public boolean w;
    public boolean x;
    public final float[] y;
    public final FloatBuffer z;

    public eq() {
        HandlerThread handlerThread = new HandlerThread("MirrorCompositor");
        handlerThread.start();
        this.a = handlerThread;
        this.b = new Handler(handlerThread.getLooper());
        EGLDisplay eGLDisplay = EGL14.EGL_NO_DISPLAY;
        eGLDisplay.getClass();
        this.c = eGLDisplay;
        EGLContext eGLContext = EGL14.EGL_NO_CONTEXT;
        eGLContext.getClass();
        this.d = eGLContext;
        EGLSurface eGLSurface = EGL14.EGL_NO_SURFACE;
        eGLSurface.getClass();
        this.f = eGLSurface;
        EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
        eGLSurface2.getClass();
        this.g = eGLSurface2;
        this.y = new float[16];
        FloatBuffer asFloatBuffer = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer.getClass();
        this.z = asFloatBuffer;
        FloatBuffer asFloatBuffer2 = ByteBuffer.allocateDirect(32).order(ByteOrder.nativeOrder()).asFloatBuffer();
        asFloatBuffer2.getClass();
        this.A = asFloatBuffer2;
    }

    public static Integer b(int i, String str) {
        int glCreateShader = GLES20.glCreateShader(i);
        if (glCreateShader == 0) {
            return null;
        }
        GLES20.glShaderSource(glCreateShader, str);
        GLES20.glCompileShader(glCreateShader);
        int[] iArr = new int[1];
        GLES20.glGetShaderiv(glCreateShader, 35713, iArr, 0);
        if (iArr[0] != 1) {
            String glGetShaderInfoLog = GLES20.glGetShaderInfoLog(glCreateShader);
            Log.w("MirrorCompositor", "compile: shader failed: " + glGetShaderInfoLog);
            GLES20.glDeleteShader(glCreateShader);
            return null;
        }
        return Integer.valueOf(glCreateShader);
    }

    public final void a(Surface surface) {
        EGLConfig eGLConfig;
        EGLSurface eGLSurface;
        if (surface == this.h && (surface == null || !qj.c(this.g, EGL14.EGL_NO_SURFACE))) {
            if (surface != null) {
                int g = g(12375);
                int g2 = g(12374);
                if (g > 0 && g2 > 0) {
                    int i = this.i;
                    if (g != i || g2 != this.j) {
                        StringBuilder g3 = t20.g("refreshOutSize: car surface ", i, "x", this.j, " -> ");
                        g3.append(g);
                        g3.append("x");
                        g3.append(g2);
                        Log.d("MirrorCompositor", g3.toString());
                        this.i = g;
                        this.j = g2;
                        return;
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!qj.c(this.g, EGL14.EGL_NO_SURFACE)) {
            EGLDisplay eGLDisplay = this.c;
            EGLSurface eGLSurface2 = EGL14.EGL_NO_SURFACE;
            EGL14.eglMakeCurrent(eGLDisplay, eGLSurface2, eGLSurface2, EGL14.EGL_NO_CONTEXT);
            EGL14.eglDestroySurface(this.c, this.g);
            EGLSurface eGLSurface3 = EGL14.EGL_NO_SURFACE;
            eGLSurface3.getClass();
            this.g = eGLSurface3;
        }
        this.h = surface;
        this.i = 0;
        this.j = 0;
        if (surface != null && surface.isValid() && (eGLConfig = this.e) != null) {
            try {
                eGLSurface = EGL14.eglCreateWindowSurface(this.c, eGLConfig, surface, new int[]{12344}, 0);
            } catch (Throwable th) {
                Log.w("MirrorCompositor", "applyOutput: eglCreateWindowSurface failed", th);
                eGLSurface = EGL14.EGL_NO_SURFACE;
            }
            eGLSurface.getClass();
            this.g = eGLSurface;
            if (eGLSurface.equals(EGL14.EGL_NO_SURFACE)) {
                this.h = null;
                if (this.D != surface) {
                    this.D = surface;
                    this.E = 10;
                }
                int i2 = this.E;
                if (i2 <= 0) {
                    Log.w("MirrorCompositor", "applyOutput: giving up on the car surface after 10 attempts");
                    return;
                }
                this.E = i2 - 1;
                this.b.postDelayed(new y5(this, 3, surface), 50L);
                return;
            }
            this.E = 0;
            this.i = g(12375);
            int g4 = g(12374);
            this.j = g4;
            int i3 = this.i;
            int i4 = this.u;
            int i5 = this.v;
            StringBuilder g5 = t20.g("applyOutput: car surface ", i3, "x", g4, " box ");
            g5.append(i4);
            g5.append("x");
            g5.append(i5);
            Log.d("MirrorCompositor", g5.toString());
        }
    }

    public final void c(int i, int i2) {
        int max = Math.max(i, i2);
        if (max > 2048) {
            max = 2048;
        }
        SurfaceTexture surfaceTexture = new SurfaceTexture(this.o);
        surfaceTexture.setDefaultBufferSize(max, max);
        surfaceTexture.setOnFrameAvailableListener(new SurfaceTexture.OnFrameAvailableListener() { // from class: dq
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(SurfaceTexture surfaceTexture2) {
                eq.this.e(false);
            }
        }, this.b);
        this.p = surfaceTexture;
        this.B = max;
        this.s = max;
        this.t = max;
        this.q = i;
        this.r = i2;
        this.C = new Surface(surfaceTexture);
        StringBuilder g = t20.g("createInput: phone ", i, "x", i2, " in ");
        g.append(max);
        g.append("² buffer");
        Log.d("MirrorCompositor", g.toString());
    }

    public final void d() {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.b.post(new y5(this, 2, countDownLatch));
        if (!countDownLatch.await(500L, TimeUnit.MILLISECONDS)) {
            Log.w("MirrorCompositor", "detachOutput: timed out, the VD swap may find the surface still taken");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void e(boolean r19) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.eq.e(boolean):void");
    }

    public final boolean f() {
        EGLDisplay eglGetDisplay = EGL14.eglGetDisplay(0);
        eglGetDisplay.getClass();
        this.c = eglGetDisplay;
        if (!eglGetDisplay.equals(EGL14.EGL_NO_DISPLAY)) {
            int[] iArr = new int[2];
            if (EGL14.eglInitialize(this.c, iArr, 0, iArr, 1)) {
                EGLConfig[] eGLConfigArr = new EGLConfig[1];
                int[] iArr2 = new int[1];
                if (EGL14.eglChooseConfig(this.c, new int[]{12324, 8, 12323, 8, 12322, 8, 12321, 8, 12352, 4, 12339, 5, 12344}, 0, eGLConfigArr, 0, 1, iArr2, 0) && iArr2[0] > 0) {
                    EGLConfig eGLConfig = eGLConfigArr[0];
                    this.e = eGLConfig;
                    EGLContext eglCreateContext = EGL14.eglCreateContext(this.c, eGLConfig, EGL14.EGL_NO_CONTEXT, new int[]{12440, 2, 12344}, 0);
                    eglCreateContext.getClass();
                    this.d = eglCreateContext;
                    if (!eglCreateContext.equals(EGL14.EGL_NO_CONTEXT)) {
                        EGLSurface eglCreatePbufferSurface = EGL14.eglCreatePbufferSurface(this.c, this.e, new int[]{12375, 1, 12374, 1, 12344}, 0);
                        eglCreatePbufferSurface.getClass();
                        this.f = eglCreatePbufferSurface;
                        if (!eglCreatePbufferSurface.equals(EGL14.EGL_NO_SURFACE)) {
                            EGLDisplay eGLDisplay = this.c;
                            EGLSurface eGLSurface = this.f;
                            if (EGL14.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface, this.d)) {
                                Integer b = b(35633, "\nuniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTexCoord;\nvarying vec2 vTexCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTexCoord = (uTexMatrix * aTexCoord).xy;\n}\n");
                                Integer num = null;
                                if (b != null) {
                                    int intValue = b.intValue();
                                    Integer b2 = b(35632, "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTexCoord;\nuniform samplerExternalOES sTexture;\nvoid main() {\n    gl_FragColor = texture2D(sTexture, vTexCoord);\n}\n");
                                    if (b2 != null) {
                                        int intValue2 = b2.intValue();
                                        int glCreateProgram = GLES20.glCreateProgram();
                                        if (glCreateProgram != 0) {
                                            GLES20.glAttachShader(glCreateProgram, intValue);
                                            GLES20.glAttachShader(glCreateProgram, intValue2);
                                            GLES20.glLinkProgram(glCreateProgram);
                                            GLES20.glDeleteShader(intValue);
                                            GLES20.glDeleteShader(intValue2);
                                            int[] iArr3 = new int[1];
                                            GLES20.glGetProgramiv(glCreateProgram, 35714, iArr3, 0);
                                            if (iArr3[0] != 1) {
                                                Log.w("MirrorCompositor", "buildProgram: link failed: " + GLES20.glGetProgramInfoLog(glCreateProgram));
                                                GLES20.glDeleteProgram(glCreateProgram);
                                            } else {
                                                num = Integer.valueOf(glCreateProgram);
                                            }
                                        }
                                    }
                                }
                                if (num != null) {
                                    int intValue3 = num.intValue();
                                    this.k = intValue3;
                                    this.l = GLES20.glGetAttribLocation(intValue3, "aPosition");
                                    this.m = GLES20.glGetAttribLocation(this.k, "aTexCoord");
                                    this.n = GLES20.glGetUniformLocation(this.k, "uTexMatrix");
                                    int[] iArr4 = new int[1];
                                    GLES20.glGenTextures(1, iArr4, 0);
                                    int i = iArr4[0];
                                    if (i == 0) {
                                        i = 0;
                                    } else {
                                        GLES20.glBindTexture(36197, i);
                                        GLES20.glTexParameteri(36197, 10241, 9729);
                                        GLES20.glTexParameteri(36197, 10240, 9729);
                                        GLES20.glTexParameteri(36197, 10242, 33071);
                                        GLES20.glTexParameteri(36197, 10243, 33071);
                                        GLES20.glBindTexture(36197, 0);
                                    }
                                    this.o = i;
                                    if (i != 0) {
                                        return true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int g(int i) {
        int[] iArr = new int[1];
        if (!EGL14.eglQuerySurface(this.c, this.g, i, iArr, 0)) {
            return 0;
        }
        return iArr[0];
    }
}
