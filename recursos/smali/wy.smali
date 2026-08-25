.class public final Lwy;
.super Lq7;
.source "SourceFile"


# instance fields
.field public final b:Landroid/os/Messenger;

.field public final c:I

.field public final synthetic d:Lyy;


# direct methods
.method public constructor <init>(Lyy;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwy;->d:Lyy;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lq7;-><init>(Landroid/os/IBinder;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroid/os/Messenger;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lwy;->b:Landroid/os/Messenger;

    .line 12
    .line 13
    iput p3, p0, Lwy;->c:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lwy;->d:Lyy;

    .line 2
    .line 3
    iget-object v1, v0, Lyy;->c:Landroid/util/SparseArray;

    .line 4
    .line 5
    iget p0, p0, Lwy;->c:I

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lyy;->b:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lxy;

    .line 37
    .line 38
    if-gez p0, :cond_0

    .line 39
    .line 40
    iget-object v3, v2, Lxy;->b:Landroid/util/ArraySet;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 43
    .line 44
    .line 45
    :cond_0
    new-instance v3, Lm1;

    .line 46
    .line 47
    const/16 v4, 0xc

    .line 48
    .line 49
    invoke-direct {v3, v4, v1}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2, p0, v3}, Lyy;->i(Lxy;ILjava/lang/Runnable;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-void
.end method
