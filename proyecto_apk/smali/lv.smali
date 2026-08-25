.class public final synthetic Llv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lidv/lzn/screenonauto/projection/ProjectionCarActivity;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Llv;->a:I

    iput-object p1, p0, Llv;->b:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    iput-object p2, p0, Llv;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget p1, p0, Llv;->a:I

    .line 2
    .line 3
    iget-object v0, p0, Llv;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Llv;->b:Lidv/lzn/screenonauto/projection/ProjectionCarActivity;

    .line 6
    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    iget-boolean p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->D:Z

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    invoke-static {p1, v0}, Lz5;->c(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o()V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void

    .line 34
    :pswitch_0
    check-cast v0, Lmt;

    .line 35
    .line 36
    iget-boolean p1, p0, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->D:Z

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o()V

    .line 41
    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_1
    sget-object p1, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->INSTANCE:Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;

    .line 45
    .line 46
    iget v1, v0, Lmt;->a:I

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedInputInjector;->sendGlobalKey(I)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_2
    sget-object p1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->s:Lidv/lzn/screenonauto/MirrorAccessibilityService;

    .line 56
    .line 57
    const/4 v1, 0x1

    .line 58
    if-nez p1, :cond_3

    .line 59
    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const v0, 0x7f1000b5

    .line 65
    .line 66
    .line 67
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    iget-object v2, p1, Lidv/lzn/screenonauto/MirrorAccessibilityService;->a:Landroid/os/Handler;

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_6

    .line 82
    .line 83
    if-eq v0, v1, :cond_5

    .line 84
    .line 85
    const/4 v1, 0x2

    .line 86
    if-ne v0, v1, :cond_4

    .line 87
    .line 88
    new-instance v0, Lxp;

    .line 89
    .line 90
    invoke-direct {v0, p1, v1}, Lxp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;I)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_4
    new-instance p0, Luf;

    .line 98
    .line 99
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 100
    .line 101
    .line 102
    throw p0

    .line 103
    :cond_5
    new-instance v0, Lxp;

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-direct {v0, p1, v1}, Lxp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    new-instance v0, Lxp;

    .line 114
    .line 115
    invoke-direct {v0, p1, v1}, Lxp;-><init>(Lidv/lzn/screenonauto/MirrorAccessibilityService;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 119
    .line 120
    .line 121
    :goto_1
    invoke-virtual {p0}, Lidv/lzn/screenonauto/projection/ProjectionCarActivity;->o()V

    .line 122
    .line 123
    .line 124
    :goto_2
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
