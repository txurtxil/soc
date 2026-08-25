.class public final Landroidx/car/app/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm;


# instance fields
.field public final a:Landroidx/car/app/i;

.field public final b:Landroidx/car/app/IAppManager$Stub;

.field public final c:Landroidx/car/app/j;

.field public final d:Landroidx/lifecycle/a;

.field public final e:Lf6;

.field public final f:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/car/app/b;->a:Landroidx/car/app/i;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/car/app/b;->c:Landroidx/car/app/j;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/car/app/b;->d:Landroidx/lifecycle/a;

    .line 9
    .line 10
    new-instance p2, Landroidx/car/app/AppManager$1;

    .line 11
    .line 12
    invoke-direct {p2, p0, p1}, Landroidx/car/app/AppManager$1;-><init>(Landroidx/car/app/b;Landroidx/car/app/i;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Landroidx/car/app/b;->b:Landroidx/car/app/IAppManager$Stub;

    .line 16
    .line 17
    new-instance p1, Landroid/os/HandlerThread;

    .line 18
    .line 19
    const-string p2, "LocationUpdateThread"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/car/app/b;->f:Landroid/os/HandlerThread;

    .line 25
    .line 26
    new-instance p1, Lf6;

    .line 27
    .line 28
    invoke-direct {p1, p0}, Lf6;-><init>(Landroidx/car/app/b;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Landroidx/car/app/b;->e:Lf6;

    .line 32
    .line 33
    return-void
.end method
