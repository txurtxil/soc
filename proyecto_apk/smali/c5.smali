.class public final Lc5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc5;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lc5;->c:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p2, p0, Lc5;->d:Ljava/lang/Object;

    .line 10
    .line 11
    iput p3, p0, Lc5;->b:I

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Lga;ILjava/lang/Object;I)V
    .locals 0

    .line 14
    iput p4, p0, Lc5;->a:I

    iput-object p1, p0, Lc5;->d:Ljava/lang/Object;

    iput p2, p0, Lc5;->b:I

    iput-object p3, p0, Lc5;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lc5;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lc5;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lc5;->b:I

    .line 6
    .line 7
    iget-object p0, p0, Lc5;->d:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lga;

    .line 13
    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v3, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 20
    .line 21
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 26
    .line 27
    check-cast v1, Landroid/content/IntentSender$SendIntentException;

    .line 28
    .line 29
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p0, v2, v1, v0}, Landroidx/activity/result/a;->a(IILandroid/content/Intent;)Z

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_0
    check-cast p0, Lga;

    .line 39
    .line 40
    check-cast v1, Lc9;

    .line 41
    .line 42
    iget-object v0, v1, Lc9;->b:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Ljava/io/Serializable;

    .line 45
    .line 46
    iget-object v1, p0, Landroidx/activity/result/a;->a:Ljava/util/HashMap;

    .line 47
    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Ljava/lang/String;

    .line 57
    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v2, p0, Landroidx/activity/result/a;->e:Ljava/util/HashMap;

    .line 62
    .line 63
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    check-cast v2, Lw1;

    .line 68
    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    iget-object v2, v2, Lw1;->a:Ls1;

    .line 72
    .line 73
    iget-object p0, p0, Landroidx/activity/result/a;->d:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    if-eqz p0, :cond_2

    .line 80
    .line 81
    invoke-interface {v2, v0}, Ls1;->a(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    iget-object v2, p0, Landroidx/activity/result/a;->g:Landroid/os/Bundle;

    .line 86
    .line 87
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Landroidx/activity/result/a;->f:Ljava/util/HashMap;

    .line 91
    .line 92
    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    return-void

    .line 96
    :pswitch_1
    check-cast v1, Landroid/widget/TextView;

    .line 97
    .line 98
    check-cast p0, Landroid/graphics/Typeface;

    .line 99
    .line 100
    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    nop

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
