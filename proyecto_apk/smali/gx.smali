.class public final synthetic Lgx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lnk;

.field public final synthetic b:Landroidx/car/app/IOnDoneCallback;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Lhx;


# direct methods
.method public synthetic constructor <init>(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgx;->a:Lnk;

    iput-object p2, p0, Lgx;->b:Landroidx/car/app/IOnDoneCallback;

    iput-object p3, p0, Lgx;->c:Ljava/lang/String;

    iput-object p4, p0, Lgx;->d:Lhx;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lgx;->a:Lnk;

    .line 2
    .line 3
    iget-object v1, p0, Lgx;->b:Landroidx/car/app/IOnDoneCallback;

    .line 4
    .line 5
    iget-object v2, p0, Lgx;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p0, p0, Lgx;->d:Lhx;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/lifecycle/a;

    .line 12
    .line 13
    iget-object v0, v0, Landroidx/lifecycle/a;->c:Lmk;

    .line 14
    .line 15
    sget-object v3, Lmk;->c:Lmk;

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-ltz v0, :cond_0

    .line 22
    .line 23
    invoke-static {v1, v2, p0}, Landroidx/car/app/utils/e;->c(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 28
    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    const-string v4, "Lifecycle is not at least created when dispatching "

    .line 32
    .line 33
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v2, v0}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
