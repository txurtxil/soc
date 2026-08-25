.class public final Lga0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lna0;


# direct methods
.method public synthetic constructor <init>(Lna0;Ljava/util/ArrayList;I)V
    .locals 0

    .line 1
    iput p3, p0, Lga0;->a:I

    iput-object p1, p0, Lga0;->c:Lna0;

    iput-object p2, p0, Lga0;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lga0;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lga0;->b:Ljava/util/ArrayList;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    :goto_0
    iget-object v3, p0, Lga0;->c:Lna0;

    .line 14
    .line 15
    if-ge v1, v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    check-cast v4, Lla0;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Lna0;->animateChangeImpl(Lla0;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 30
    .line 31
    .line 32
    iget-object p0, v3, Lna0;->mChangesList:Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    :goto_1
    iget-object v3, p0, Lga0;->c:Lna0;

    .line 43
    .line 44
    if-ge v1, v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    check-cast v4, Lma0;

    .line 53
    .line 54
    move-object v5, v4

    .line 55
    iget-object v4, v5, Lma0;->a:Landroid/support/v7/widget/RecyclerView$u;

    .line 56
    .line 57
    move-object v6, v5

    .line 58
    iget v5, v6, Lma0;->b:I

    .line 59
    .line 60
    move-object v7, v6

    .line 61
    iget v6, v7, Lma0;->c:I

    .line 62
    .line 63
    move-object v8, v7

    .line 64
    iget v7, v8, Lma0;->d:I

    .line 65
    .line 66
    iget v8, v8, Lma0;->e:I

    .line 67
    .line 68
    invoke-virtual/range {v3 .. v8}, Lna0;->animateMoveImpl(Landroid/support/v7/widget/RecyclerView$u;IIII)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 73
    .line 74
    .line 75
    iget-object p0, v3, Lna0;->mMovesList:Ljava/util/ArrayList;

    .line 76
    .line 77
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
