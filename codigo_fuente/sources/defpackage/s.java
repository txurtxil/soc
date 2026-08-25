package defpackage;

import java.util.Locale;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: s  reason: default package */
/* loaded from: classes.dex */
public abstract class s implements Future {
    public static final boolean d = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
    public static final Logger e = Logger.getLogger(s.class.getName());
    public static final gn f;
    public static final Object g;
    public volatile Object a;
    public volatile o b;
    public volatile r c;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v1, types: [gn] */
    /* JADX WARN: Type inference failed for: r5v3 */
    static {
        p pVar;
        try {
            th = null;
            pVar = new p(AtomicReferenceFieldUpdater.newUpdater(r.class, Thread.class, "a"), AtomicReferenceFieldUpdater.newUpdater(r.class, r.class, "b"), AtomicReferenceFieldUpdater.newUpdater(s.class, r.class, "c"), AtomicReferenceFieldUpdater.newUpdater(s.class, o.class, "b"), AtomicReferenceFieldUpdater.newUpdater(s.class, Object.class, "a"));
        } catch (Throwable th) {
            th = th;
            pVar = new Object();
        }
        f = pVar;
        if (th != null) {
            e.log(Level.SEVERE, "SafeAtomicHelper is broken!", th);
        }
        g = new Object();
    }

    public static void b(s sVar) {
        r rVar;
        o oVar;
        do {
            rVar = sVar.c;
        } while (!f.f(sVar, rVar, r.c));
        while (rVar != null) {
            Thread thread = rVar.a;
            if (thread != null) {
                rVar.a = null;
                LockSupport.unpark(thread);
            }
            rVar = rVar.b;
        }
        do {
            oVar = sVar.b;
        } while (!f.d(sVar, oVar));
        o oVar2 = null;
        while (oVar != null) {
            o oVar3 = oVar.a;
            oVar.a = oVar2;
            oVar2 = oVar;
            oVar = oVar3;
        }
        while (oVar2 != null) {
            oVar2 = oVar2.a;
            try {
                throw null;
                break;
            } catch (RuntimeException e2) {
                e.log(Level.SEVERE, "RuntimeException while executing runnable null with executor null", (Throwable) e2);
            }
        }
    }

    public static Object c(Object obj) {
        if (!(obj instanceof m)) {
            if (!(obj instanceof n)) {
                if (obj == g) {
                    return null;
                }
                return obj;
            }
            throw new ExecutionException((Throwable) null);
        }
        Throwable th = ((m) obj).a;
        CancellationException cancellationException = new CancellationException("Task was cancelled.");
        cancellationException.initCause(th);
        throw cancellationException;
    }

    public static Object d(s sVar) {
        Object obj;
        boolean z = false;
        while (true) {
            try {
                obj = sVar.get();
                break;
            } catch (InterruptedException unused) {
                z = true;
            } catch (Throwable th) {
                if (z) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        return obj;
    }

    public final void a(StringBuilder sb) {
        String valueOf;
        try {
            Object d2 = d(this);
            sb.append("SUCCESS, result=[");
            if (d2 == this) {
                valueOf = "this future";
            } else {
                valueOf = String.valueOf(d2);
            }
            sb.append(valueOf);
            sb.append("]");
        } catch (CancellationException unused) {
            sb.append("CANCELLED");
        } catch (RuntimeException e2) {
            sb.append("UNKNOWN, cause=[");
            sb.append(e2.getClass());
            sb.append(" thrown from get()]");
        } catch (ExecutionException e3) {
            sb.append("FAILURE, cause=[");
            sb.append(e3.getCause());
            sb.append("]");
        }
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        m mVar;
        Object obj = this.a;
        if (obj == null) {
            if (d) {
                mVar = new m(z, new CancellationException("Future.cancel() was called."));
            } else if (z) {
                mVar = m.b;
            } else {
                mVar = m.c;
            }
            if (f.e(this, obj, mVar)) {
                b(this);
                return true;
            }
            return false;
        }
        return false;
    }

    public final void e(r rVar) {
        rVar.a = null;
        while (true) {
            r rVar2 = this.c;
            if (rVar2 != r.c) {
                r rVar3 = null;
                while (rVar2 != null) {
                    r rVar4 = rVar2.b;
                    if (rVar2.a != null) {
                        rVar3 = rVar2;
                    } else if (rVar3 != null) {
                        rVar3.b = rVar4;
                        if (rVar3.a == null) {
                            break;
                        }
                    } else if (!f.f(this, rVar2, rVar4)) {
                        break;
                    }
                    rVar2 = rVar4;
                }
                return;
            }
            return;
        }
    }

    @Override // java.util.concurrent.Future
    public final Object get(long j, TimeUnit timeUnit) {
        long j2;
        Locale locale;
        boolean z;
        r rVar = r.c;
        long nanos = timeUnit.toNanos(j);
        if (!Thread.interrupted()) {
            Object obj = this.a;
            if (obj != null) {
                return c(obj);
            }
            if (nanos > 0) {
                j2 = System.nanoTime() + nanos;
            } else {
                j2 = 0;
            }
            if (nanos >= 1000) {
                r rVar2 = this.c;
                if (rVar2 != rVar) {
                    r rVar3 = new r();
                    do {
                        gn gnVar = f;
                        gnVar.u(rVar3, rVar2);
                        if (gnVar.f(this, rVar2, rVar3)) {
                            do {
                                LockSupport.parkNanos(this, nanos);
                                if (!Thread.interrupted()) {
                                    Object obj2 = this.a;
                                    if (obj2 != null) {
                                        return c(obj2);
                                    }
                                    nanos = j2 - System.nanoTime();
                                } else {
                                    e(rVar3);
                                    throw new InterruptedException();
                                }
                            } while (nanos >= 1000);
                            e(rVar3);
                        } else {
                            rVar2 = this.c;
                        }
                    } while (rVar2 != rVar);
                    return c(this.a);
                }
                return c(this.a);
            }
            while (nanos > 0) {
                Object obj3 = this.a;
                if (obj3 != null) {
                    return c(obj3);
                }
                if (!Thread.interrupted()) {
                    nanos = j2 - System.nanoTime();
                } else {
                    throw new InterruptedException();
                }
            }
            String sVar = toString();
            String lowerCase = timeUnit.toString().toLowerCase(Locale.ROOT);
            String str = "Waited " + j + " " + timeUnit.toString().toLowerCase(locale);
            if (nanos + 1000 < 0) {
                String concat = str.concat(" (plus ");
                long j3 = -nanos;
                long convert = timeUnit.convert(j3, TimeUnit.NANOSECONDS);
                long nanos2 = j3 - timeUnit.toNanos(convert);
                int i = (convert > 0L ? 1 : (convert == 0L ? 0 : -1));
                if (i != 0 && nanos2 <= 1000) {
                    z = false;
                } else {
                    z = true;
                }
                if (i > 0) {
                    String str2 = concat + convert + " " + lowerCase;
                    if (z) {
                        str2 = str2.concat(",");
                    }
                    concat = str2.concat(" ");
                }
                if (z) {
                    concat = concat + nanos2 + " nanoseconds ";
                }
                str = concat.concat("delay)");
            }
            if (isDone()) {
                throw new TimeoutException(str.concat(" but future completed as timeout expired"));
            }
            throw new TimeoutException(str + " for " + sVar);
        }
        throw new InterruptedException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.a instanceof m;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        if (this.a != null) {
            return true;
        }
        return false;
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("[status=");
        if (this.a instanceof m) {
            sb.append("CANCELLED");
        } else if (isDone()) {
            a(sb);
        } else {
            try {
                if (this instanceof ScheduledFuture) {
                    str = "remaining delay=[" + ((ScheduledFuture) this).getDelay(TimeUnit.MILLISECONDS) + " ms]";
                } else {
                    str = null;
                }
            } catch (RuntimeException e2) {
                str = "Exception thrown from implementation: " + e2.getClass();
            }
            if (str != null && !str.isEmpty()) {
                sb.append("PENDING, info=[");
                sb.append(str);
                sb.append("]");
            } else if (isDone()) {
                a(sb);
            } else {
                sb.append("PENDING");
            }
        }
        sb.append("]");
        return sb.toString();
    }

    @Override // java.util.concurrent.Future
    public final Object get() {
        Object obj;
        r rVar = r.c;
        if (!Thread.interrupted()) {
            Object obj2 = this.a;
            if (obj2 != null) {
                return c(obj2);
            }
            r rVar2 = this.c;
            if (rVar2 != rVar) {
                r rVar3 = new r();
                do {
                    gn gnVar = f;
                    gnVar.u(rVar3, rVar2);
                    if (gnVar.f(this, rVar2, rVar3)) {
                        do {
                            LockSupport.park(this);
                            if (!Thread.interrupted()) {
                                obj = this.a;
                            } else {
                                e(rVar3);
                                throw new InterruptedException();
                            }
                        } while (obj == null);
                        return c(obj);
                    }
                    rVar2 = this.c;
                } while (rVar2 != rVar);
                return c(this.a);
            }
            return c(this.a);
        }
        throw new InterruptedException();
    }
}
