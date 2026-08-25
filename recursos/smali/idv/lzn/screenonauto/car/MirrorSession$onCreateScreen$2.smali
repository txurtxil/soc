.class public final Lidv/lzn/screenonauto/car/MirrorSession$onCreateScreen$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lac;


# instance fields
.field public final synthetic a:Lnq;


# direct methods
.method public constructor <init>(Lnq;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lidv/lzn/screenonauto/car/MirrorSession$onCreateScreen$2;->a:Lnq;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lsk;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final b(Lsk;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final c(Lsk;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(Lsk;)V
    .locals 2

    .line 1
    const/4 p1, 0x0

    .line 2
    sput-object p1, Lb00;->i:Lx6;

    .line 3
    .line 4
    invoke-static {}, Lhd;->d()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    const/4 v0, 0x0

    .line 9
    sput-boolean v0, Lnq;->d:Z

    .line 10
    .line 11
    invoke-static {}, Lhd;->d()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eq p1, v1, :cond_0

    .line 16
    .line 17
    sget-object p1, Lnq;->f:Lx6;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    invoke-static {}, Lhd;->d()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1, v1}, Lx6;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object p0, p0, Lidv/lzn/screenonauto/car/MirrorSession$onCreateScreen$2;->a:Lnq;

    .line 33
    .line 34
    iget-object p0, p0, Landroidx/car/app/l;->c:Landroidx/car/app/i;

    .line 35
    .line 36
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    new-instance p1, Landroid/content/Intent;

    .line 40
    .line 41
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-class v1, Lidv/lzn/screenonauto/MirrorMediaService;

    .line 45
    .line 46
    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 50
    .line 51
    .line 52
    invoke-static {}, Lhd;->d()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    invoke-static {p0}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    const-string v0, "stop_on_disconnect"

    .line 70
    .line 71
    const/4 v1, 0x1

    .line 72
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    new-instance p1, Landroid/content/Intent;

    .line 82
    .line 83
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    const-class v0, Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 87
    .line 88
    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 92
    .line 93
    .line 94
    :cond_1
    return-void
.end method

.method public final e(Lsk;)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f(Lsk;)V
    .locals 0

    .line 1
    return-void
.end method
