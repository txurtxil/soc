package defpackage;

import android.text.TextUtils;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
/* renamed from: q10  reason: default package */
/* loaded from: classes.dex */
public final class q10 implements Closeable {
    public static final ExecutorService j = Executors.newCachedThreadPool();
    public volatile int a;
    public final Process b;
    public final o10 c;
    public final n10 d;
    public final n10 e;
    public final ReentrantLock f;
    public final Condition g;
    public final ArrayDeque h;
    public boolean i;

    /* JADX WARN: Type inference failed for: r0v5, types: [java.io.FilterOutputStream, o10] */
    public q10(u7 u7Var, Process process) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.f = reentrantLock;
        this.g = reentrantLock.newCondition();
        this.h = new ArrayDeque();
        this.i = false;
        this.a = -1;
        this.b = process;
        OutputStream outputStream = process.getOutputStream();
        this.c = new FilterOutputStream(outputStream instanceof BufferedOutputStream ? outputStream : new BufferedOutputStream(outputStream));
        this.d = new n10(process.getInputStream());
        this.e = new n10(process.getErrorStream());
        FutureTask futureTask = new FutureTask(new Callable() { // from class: m10
            @Override // java.util.concurrent.Callable
            public final Object call() {
                q10 q10Var = q10.this;
                n10 n10Var = q10Var.d;
                o10 o10Var = q10Var.c;
                try {
                    q10Var.b.exitValue();
                    throw new IOException("Created process has terminated");
                } catch (IllegalThreadStateException unused) {
                    qj.f(n10Var);
                    qj.f(q10Var.e);
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(n10Var));
                    try {
                        Charset charset = StandardCharsets.UTF_8;
                        o10Var.write("echo SHELL_TEST\n".getBytes(charset));
                        o10Var.flush();
                        String readLine = bufferedReader.readLine();
                        if (!TextUtils.isEmpty(readLine) && readLine.contains("SHELL_TEST")) {
                            o10Var.write("id\n".getBytes(charset));
                            o10Var.flush();
                            String readLine2 = bufferedReader.readLine();
                            int i = 0;
                            if (!TextUtils.isEmpty(readLine2) && readLine2.contains("uid=0")) {
                                synchronized (k60.class) {
                                    k60.a = 2;
                                    String property = System.getProperty("user.dir");
                                    StringBuilder sb = new StringBuilder("'");
                                    int length = property.length();
                                    while (i < length) {
                                        char charAt = property.charAt(i);
                                        if (charAt == '\'') {
                                            sb.append("'\\''");
                                        } else {
                                            sb.append(charAt);
                                        }
                                        i++;
                                    }
                                    sb.append('\'');
                                    String sb2 = sb.toString();
                                    o10Var.write(("cd " + sb2 + "\n").getBytes(StandardCharsets.UTF_8));
                                    o10Var.flush();
                                    i = 1;
                                }
                            }
                            bufferedReader.close();
                            return Integer.valueOf(i);
                        }
                        throw new IOException("Created process is not a shell");
                    } catch (Throwable th) {
                        try {
                            bufferedReader.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            }
        });
        j.execute(futureTask);
        try {
            try {
                this.a = ((Integer) futureTask.get(u7Var.a, TimeUnit.SECONDS)).intValue();
            } catch (InterruptedException e) {
                throw new IOException("Shell check interrupted", e);
            } catch (ExecutionException e2) {
                Throwable cause = e2.getCause();
                if (cause instanceof IOException) {
                    throw ((IOException) cause);
                }
                throw new IOException("Unknown ExecutionException", cause);
            } catch (TimeoutException e3) {
                throw new IOException("Shell check timeout", e3);
            }
        } catch (IOException e4) {
            e();
            throw e4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0047, code lost:
        if (r1 == false) goto L28;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0062  */
    /* JADX WARN: Type inference failed for: r3v8, types: [u7, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.q10 c() {
        /*
            java.lang.Class<em> r0 = defpackage.em.class
            monitor-enter(r0)
            q10[] r1 = defpackage.em.a     // Catch: java.lang.Throwable -> L30
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L30
            r2 = 0
            r3 = r1[r2]     // Catch: java.lang.Throwable -> L14
            r4 = 0
            if (r3 == 0) goto L16
            int r5 = r3.a     // Catch: java.lang.Throwable -> L14
            if (r5 >= 0) goto L16
            r1[r2] = r4     // Catch: java.lang.Throwable -> L14
            r3 = r4
            goto L16
        L14:
            r2 = move-exception
            goto L70
        L16:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L14
            if (r3 != 0) goto L6e
            boolean r1 = defpackage.em.b     // Catch: java.lang.Throwable -> L30
            if (r1 != 0) goto L66
            r1 = 1
            defpackage.em.b = r1     // Catch: java.lang.Throwable -> L30
            u7 r3 = defpackage.em.c     // Catch: java.lang.Throwable -> L30
            if (r3 != 0) goto L32
            u7 r3 = new u7     // Catch: java.lang.Throwable -> L30
            r3.<init>()     // Catch: java.lang.Throwable -> L30
            r5 = 20
            r3.a = r5     // Catch: java.lang.Throwable -> L30
            defpackage.em.c = r3     // Catch: java.lang.Throwable -> L30
            goto L32
        L30:
            r1 = move-exception
            goto L72
        L32:
            u7 r3 = defpackage.em.c     // Catch: java.lang.Throwable -> L30
            r3.getClass()     // Catch: java.lang.Throwable -> L30
            java.lang.String r5 = "su"
            java.lang.String[] r5 = new java.lang.String[]{r5}     // Catch: java.lang.Throwable -> L30 defpackage.er -> L4b
            q10 r5 = r3.b(r5)     // Catch: java.lang.Throwable -> L30 defpackage.er -> L4b
            int r6 = r5.a     // Catch: java.lang.Throwable -> L30 defpackage.er -> L4a
            if (r6 < r1) goto L46
            goto L47
        L46:
            r1 = r2
        L47:
            if (r1 != 0) goto L4a
            goto L4b
        L4a:
            r4 = r5
        L4b:
            if (r4 != 0) goto L62
            java.lang.Class<k60> r1 = defpackage.k60.class
            monitor-enter(r1)     // Catch: java.lang.Throwable -> L30
            defpackage.k60.a = r2     // Catch: java.lang.Throwable -> L5f
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L30
            java.lang.String r1 = "sh"
            java.lang.String[] r1 = new java.lang.String[]{r1}     // Catch: java.lang.Throwable -> L30
            q10 r1 = r3.b(r1)     // Catch: java.lang.Throwable -> L30
            r3 = r1
            goto L63
        L5f:
            r2 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L5f
            throw r2     // Catch: java.lang.Throwable -> L30
        L62:
            r3 = r4
        L63:
            defpackage.em.b = r2     // Catch: java.lang.Throwable -> L30
            goto L6e
        L66:
            er r1 = new er     // Catch: java.lang.Throwable -> L30
            java.lang.String r2 = "The main shell died during initialization"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L30
            throw r1     // Catch: java.lang.Throwable -> L30
        L6e:
            monitor-exit(r0)
            return r3
        L70:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L14
            throw r2     // Catch: java.lang.Throwable -> L30
        L72:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L30
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.q10.c():q10");
    }

    public final synchronized void a(l10 l10Var) {
        if (this.a < 0) {
            return;
        }
        qj.f(this.d);
        qj.f(this.e);
        try {
            this.c.write(10);
            this.c.flush();
            l10Var.a(this.c);
        } catch (IOException unused) {
            e();
        }
    }

    public final void b(l10 l10Var) {
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        try {
            if (this.i) {
                p10 p10Var = new p10(reentrantLock.newCondition());
                this.h.offer(p10Var);
                while (!p10Var.b) {
                    try {
                        p10Var.a.await();
                    } catch (InterruptedException unused) {
                    }
                }
            }
            this.i = true;
            reentrantLock.unlock();
            a(l10Var);
            d(true);
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.a < 0) {
            return;
        }
        e();
    }

    public final l10 d(boolean z) {
        ArrayDeque arrayDeque = this.h;
        ReentrantLock reentrantLock = this.f;
        reentrantLock.lock();
        try {
            l10 l10Var = (l10) arrayDeque.poll();
            if (l10Var == null) {
                this.i = false;
                this.g.signalAll();
                return null;
            } else if (l10Var instanceof p10) {
                p10 p10Var = (p10) l10Var;
                p10Var.b = true;
                p10Var.a.signal();
                return null;
            } else if (z) {
                arrayDeque.offerFirst(l10Var);
                reentrantLock.unlock();
                j.execute(new m1(15, this));
                return null;
            } else {
                return l10Var;
            }
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void e() {
        this.a = -1;
        try {
            this.c.a();
        } catch (IOException unused) {
        }
        try {
            this.e.a();
        } catch (IOException unused2) {
        }
        try {
            this.d.a();
        } catch (IOException unused3) {
        }
        this.b.destroy();
    }
}
