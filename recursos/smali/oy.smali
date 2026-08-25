.class public final Loy;
.super Lq7;
.source "SourceFile"


# instance fields
.field public final b:Lni;

.field public final synthetic c:Lsy;


# direct methods
.method public constructor <init>(Lsy;Lni;)V
    .locals 0

    .line 1
    iput-object p1, p0, Loy;->c:Lsy;

    .line 2
    .line 3
    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1}, Lq7;-><init>(Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Loy;->b:Lni;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Loy;->c:Lsy;

    .line 2
    .line 3
    iget-object v1, v0, Lsy;->a:Loy;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v1, p0, :cond_0

    .line 7
    .line 8
    iput-object v2, v0, Lsy;->a:Loy;

    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Lsy;->b:Loy;

    .line 11
    .line 12
    if-ne v1, p0, :cond_1

    .line 13
    .line 14
    iput-object v2, v0, Lsy;->b:Loy;

    .line 15
    .line 16
    :cond_1
    iget-object v1, v0, Lsy;->e:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lpy;

    .line 37
    .line 38
    iget-object v2, v2, Lpy;->c:Loy;

    .line 39
    .line 40
    if-ne v2, p0, :cond_2

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget-object v0, v0, Lsy;->f:Landroid/util/ArrayMap;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_5

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Ljava/util/Map$Entry;

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    check-cast v2, Lny;

    .line 73
    .line 74
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v3, Lpy;

    .line 77
    .line 78
    iget-object v3, v3, Lpy;->c:Loy;

    .line 79
    .line 80
    if-ne v3, p0, :cond_4

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/content/ServiceConnection;

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Lny;->a(Landroid/content/ServiceConnection;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_5
    return-void
.end method
