.class public final Landroidx/car/app/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfm;


# instance fields
.field public final a:Ljava/util/ArrayDeque;

.field public final b:Landroidx/car/app/i;

.field public final c:Landroidx/lifecycle/a;


# direct methods
.method public constructor <init>(Landroidx/car/app/i;Landroidx/lifecycle/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/car/app/k;->b:Landroidx/car/app/i;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/car/app/k;->c:Landroidx/lifecycle/a;

    .line 14
    .line 15
    new-instance p1, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Landroidx/car/app/ScreenManager$LifecycleObserverImpl;-><init>(Landroidx/car/app/k;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroidx/lifecycle/a;->a(Lrk;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static b(Lmq;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lmq;->b:Landroidx/lifecycle/a;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/lifecycle/a;->c:Lmk;

    .line 4
    .line 5
    sget-object v1, Lmk;->e:Lmk;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    sget-object v1, Llk;->ON_PAUSE:Llk;

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Lmq;->c(Llk;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object v1, Lmk;->d:Lmk;

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-ltz v0, :cond_1

    .line 25
    .line 26
    sget-object v0, Llk;->ON_STOP:Llk;

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lmq;->c(Llk;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    if-eqz p1, :cond_2

    .line 32
    .line 33
    sget-object p1, Llk;->ON_DESTROY:Llk;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lmq;->c(Llk;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lmq;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/car/app/k;->a:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lmk;->c:Lmk;

    .line 7
    .line 8
    iget-object v1, p0, Landroidx/car/app/k;->c:Landroidx/lifecycle/a;

    .line 9
    .line 10
    if-eqz p2, :cond_0

    .line 11
    .line 12
    iget-object p2, v1, Landroidx/lifecycle/a;->c:Lmk;

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-ltz p2, :cond_0

    .line 19
    .line 20
    sget-object p2, Llk;->ON_CREATE:Llk;

    .line 21
    .line 22
    invoke-virtual {p1, p2}, Lmq;->c(Llk;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    iget-object p2, p1, Lmq;->b:Landroidx/lifecycle/a;

    .line 26
    .line 27
    iget-object p2, p2, Landroidx/lifecycle/a;->c:Lmk;

    .line 28
    .line 29
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-ltz p2, :cond_1

    .line 34
    .line 35
    iget-object p2, v1, Landroidx/lifecycle/a;->c:Lmk;

    .line 36
    .line 37
    sget-object v0, Lmk;->d:Lmk;

    .line 38
    .line 39
    invoke-virtual {p2, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-ltz p2, :cond_1

    .line 44
    .line 45
    iget-object p0, p0, Landroidx/car/app/k;->b:Landroidx/car/app/i;

    .line 46
    .line 47
    const-class p2, Landroidx/car/app/b;

    .line 48
    .line 49
    invoke-virtual {p0, p2}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Landroidx/car/app/b;

    .line 54
    .line 55
    iget-object p0, p0, Landroidx/car/app/b;->c:Landroidx/car/app/j;

    .line 56
    .line 57
    new-instance p2, Lc2;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lbi;

    .line 63
    .line 64
    const-string v1, "invalidate"

    .line 65
    .line 66
    invoke-direct {v0, p0, v1, p2}, Lbi;-><init>(Landroidx/car/app/j;Ljava/lang/String;Lai;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v1, v0}, Landroidx/car/app/utils/e;->d(Ljava/lang/String;Lix;)V

    .line 70
    .line 71
    .line 72
    sget-object p0, Llk;->ON_START:Llk;

    .line 73
    .line 74
    invoke-virtual {p1, p0}, Lmq;->c(Llk;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method
