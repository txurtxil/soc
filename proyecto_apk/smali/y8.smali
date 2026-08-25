.class public final synthetic Ly8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgm;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/car/app/i;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/i;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Ly8;->a:I

    iput-object p1, p0, Ly8;->b:Landroidx/car/app/i;

    iput-object p2, p0, Ly8;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lfm;
    .locals 5

    .line 1
    iget v0, p0, Ly8;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ly8;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Ly8;->b:Landroidx/car/app/i;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast v1, Landroidx/car/app/j;

    .line 11
    .line 12
    iget v0, p0, Landroidx/car/app/i;->d:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v0, :cond_4

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    if-lt v0, v3, :cond_3

    .line 19
    .line 20
    :try_start_0
    sget v0, Lt8;->a:I

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    new-instance v3, Landroid/content/ComponentName;

    .line 27
    .line 28
    const-class v4, Lt8;

    .line 29
    .line 30
    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    const/16 v4, 0x280

    .line 34
    .line 35
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 40
    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    const-string v3, "androidx.car.app.CarAppMetadataHolderService.CAR_HARDWARE_MANAGER"

    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v0, v2

    .line 51
    :goto_0
    if-eqz v0, :cond_2

    .line 52
    .line 53
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const-class v3, Landroidx/car/app/i;

    .line 58
    .line 59
    const-class v4, Landroidx/car/app/j;

    .line 60
    .line 61
    filled-new-array {v3, v4}, [Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    filled-new-array {p0, v1}, [Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    if-nez p0, :cond_1

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_1
    new-instance p0, Ljava/lang/ClassCastException;

    .line 81
    .line 82
    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_2
    new-instance p0, Ljava/lang/ClassNotFoundException;

    .line 87
    .line 88
    const-string v0, "CarHardwareManager metadata could not be found"

    .line 89
    .line 90
    invoke-direct {p0, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :catch_0
    const-string p0, "CarHardwareManager not configured. Did you forget to add a dependency on app-automotive or app-projected artifacts?"

    .line 95
    .line 96
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_3
    new-instance p0, Lci;

    .line 101
    .line 102
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 103
    .line 104
    const-string v1, "Attempted to retrieve CarHardwareManager service, but the host is less than 3"

    .line 105
    .line 106
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v1, "Create CarHardwareManager failed"

    .line 110
    .line 111
    invoke-direct {p0, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 112
    .line 113
    .line 114
    throw p0

    .line 115
    :cond_4
    const-string p0, "Car App API level hasn\'t been established yet"

    .line 116
    .line 117
    invoke-static {p0}, Lc2;->g(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    :goto_1
    return-object v2

    .line 121
    :pswitch_0
    check-cast v1, Landroidx/lifecycle/a;

    .line 122
    .line 123
    new-instance v0, Landroidx/car/app/k;

    .line 124
    .line 125
    invoke-direct {v0, p0, v1}, Landroidx/car/app/k;-><init>(Landroidx/car/app/i;Landroidx/lifecycle/a;)V

    .line 126
    .line 127
    .line 128
    return-object v0

    .line 129
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
