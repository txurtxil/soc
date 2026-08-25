.class public final synthetic Lkq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgs;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lmq;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lmq;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lkq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkq;->b:Lmq;

    iput-object p2, p0, Lkq;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lmt;Lmq;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lkq;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkq;->c:Ljava/lang/Object;

    iput-object p2, p0, Lkq;->b:Lmq;

    return-void
.end method


# virtual methods
.method public final onClick()V
    .locals 3

    .line 1
    iget v0, p0, Lkq;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lkq;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Lkq;->b:Lmq;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Ljava/lang/String;

    .line 11
    .line 12
    iget-object p0, p0, Lmq;->a:Landroidx/car/app/i;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    .line 20
    .line 21
    invoke-static {p0, v1}, Lz5;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :pswitch_0
    check-cast v1, Lmt;

    .line 26
    .line 27
    sget-object v0, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 28
    .line 29
    iget v2, v1, Lmt;->a:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendGlobalKey(I)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lmq;->a:Landroidx/car/app/i;

    .line 43
    .line 44
    const v0, 0x7f1000b5

    .line 45
    .line 46
    .line 47
    invoke-static {p0, v0}, Le4;->e(Landroidx/car/app/i;I)Le4;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    invoke-virtual {p0}, Le4;->f()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    iget-object p0, v0, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    const/4 v2, 0x1

    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    if-eq v1, v2, :cond_3

    .line 65
    .line 66
    const/4 v2, 0x2

    .line 67
    if-ne v1, v2, :cond_2

    .line 68
    .line 69
    new-instance v1, Lxp;

    .line 70
    .line 71
    invoke-direct {v1, v0, v2}, Lxp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_2
    new-instance p0, Luf;

    .line 79
    .line 80
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_3
    new-instance v1, Lxp;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    invoke-direct {v1, v0, v2}, Lxp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    new-instance v1, Lxp;

    .line 95
    .line 96
    invoke-direct {v1, v0, v2}, Lxp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    .line 101
    .line 102
    :goto_0
    return-void

    .line 103
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
