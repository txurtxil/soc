.class public final Lnx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 0

    .line 1
    new-instance p0, Lmx;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lmx;-><init>(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method
