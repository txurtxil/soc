.class public final Lin;
.super Lqn;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p2, p0, Lin;->d:I

    iput-object p3, p0, Lin;->e:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lqn;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Lin;->d:I

    .line 2
    .line 3
    iget-object v1, p0, Lin;->e:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Ljava/util/List;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-direct {v3, p0}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 39
    .line 40
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaItem;->writeToParcel(Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    :goto_1
    check-cast v1, Lc9;

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Lc9;->w(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    return-void

    .line 57
    :pswitch_0
    check-cast p1, Ljava/util/List;

    .line 58
    .line 59
    check-cast v1, Lgy;

    .line 60
    .line 61
    iget p0, p0, Lqn;->c:I

    .line 62
    .line 63
    and-int/lit8 p0, p0, 0x4

    .line 64
    .line 65
    if-nez p0, :cond_3

    .line 66
    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_2
    new-instance p0, Landroid/os/Bundle;

    .line 71
    .line 72
    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 73
    .line 74
    .line 75
    new-array v0, v2, [Landroid/support/v4/media/MediaBrowserCompat$MediaItem;

    .line 76
    .line 77
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, [Landroid/os/Parcelable;

    .line 82
    .line 83
    const-string v0, "search_results"

    .line 84
    .line 85
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2, p0}, Lgy;->b(ILandroid/os/Bundle;)V

    .line 89
    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_3
    :goto_2
    const/4 p0, -0x1

    .line 93
    invoke-virtual {v1, p0, v3}, Lgy;->b(ILandroid/os/Bundle;)V

    .line 94
    .line 95
    .line 96
    :goto_3
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
