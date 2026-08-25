.class public final synthetic Ldm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lidv/lzn/screenonauto/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lidv/lzn/screenonauto/MainActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Ldm;->a:I

    iput-object p1, p0, Ldm;->b:Lidv/lzn/screenonauto/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Ldm;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Ldm;->b:Lidv/lzn/screenonauto/MainActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Boolean;

    .line 9
    .line 10
    sget p1, Lidv/lzn/screenonauto/MainActivity;->E:I

    .line 11
    .line 12
    iget-object p1, p0, Lidv/lzn/screenonauto/MainActivity;->C:Lu1;

    .line 13
    .line 14
    iget-object p0, p0, Lidv/lzn/screenonauto/MainActivity;->z:Landroid/media/projection/MediaProjectionManager;

    .line 15
    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Lu1;->G(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const-string p0, "projectionManager"

    .line 27
    .line 28
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 p0, 0x0

    .line 32
    throw p0

    .line 33
    :pswitch_0
    check-cast p1, Lr1;

    .line 34
    .line 35
    sget v0, Lidv/lzn/screenonauto/MainActivity;->E:I

    .line 36
    .line 37
    iget v0, p1, Lr1;->a:I

    .line 38
    .line 39
    const/4 v1, -0x1

    .line 40
    if-ne v0, v1, :cond_2

    .line 41
    .line 42
    iget-object p1, p1, Lr1;->b:Landroid/content/Intent;

    .line 43
    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    sput-boolean v1, Lb00;->f:Z

    .line 48
    .line 49
    sput v0, Lb00;->a:I

    .line 50
    .line 51
    sput-object p1, Lb00;->b:Landroid/content/Intent;

    .line 52
    .line 53
    new-instance p1, Landroid/content/Intent;

    .line 54
    .line 55
    const-class v0, Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 56
    .line 57
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 58
    .line 59
    .line 60
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 61
    .line 62
    const/16 v2, 0x1a

    .line 63
    .line 64
    if-lt v0, v2, :cond_1

    .line 65
    .line 66
    invoke-static {p0, p1}, Lab;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-virtual {p0}, Lidv/lzn/screenonauto/MainActivity;->y()Lidv/lzn/screenonauto/SettingsFragment;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-eqz p0, :cond_3

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lidv/lzn/screenonauto/SettingsFragment;->S(Z)V

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    invoke-virtual {p0}, Lidv/lzn/screenonauto/MainActivity;->y()Lidv/lzn/screenonauto/SettingsFragment;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    .line 89
    const/4 p1, 0x0

    .line 90
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/SettingsFragment;->S(Z)V

    .line 91
    .line 92
    .line 93
    :cond_3
    :goto_1
    return-void

    .line 94
    nop

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
