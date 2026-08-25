.class public final synthetic Lbi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lix;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/IOnDoneCallback;Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iput p4, p0, Lbi;->a:I

    iput-object p1, p0, Lbi;->c:Ljava/lang/Object;

    iput-object p2, p0, Lbi;->d:Ljava/lang/Object;

    iput-object p3, p0, Lbi;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/car/app/j;Ljava/lang/String;Lai;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lbi;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbi;->c:Ljava/lang/Object;

    iput-object p2, p0, Lbi;->b:Ljava/lang/String;

    iput-object p3, p0, Lbi;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lbi;->a:I

    .line 2
    .line 3
    const-string v1, "CarApp.Dispatch"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lbi;->b:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v4, p0, Lbi;->d:Ljava/lang/Object;

    .line 9
    .line 10
    iget-object p0, p0, Lbi;->c:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Landroidx/car/app/IOnDoneCallback;

    .line 16
    .line 17
    check-cast v4, Ljava/lang/Exception;

    .line 18
    .line 19
    :try_start_0
    new-instance v0, Landroidx/car/app/FailureResponse;

    .line 20
    .line 21
    invoke-direct {v0, v4}, Landroidx/car/app/FailureResponse;-><init>(Ljava/lang/Throwable;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lx7;

    .line 25
    .line 26
    invoke-direct {v4, v0}, Lx7;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {p0, v4}, Landroidx/car/app/IOnDoneCallback;->onFailure(Lx7;)V
    :try_end_0
    .catch Lb8; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    const-string v0, "Serialization failure in "

    .line 35
    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    .line 42
    .line 43
    :goto_0
    return-object v2

    .line 44
    :pswitch_0
    check-cast p0, Landroidx/car/app/IOnDoneCallback;

    .line 45
    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    move-object v0, v2

    .line 49
    goto :goto_1

    .line 50
    :cond_0
    :try_start_1
    new-instance v0, Lx7;

    .line 51
    .line 52
    invoke-direct {v0, v4}, Lx7;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    :goto_1
    invoke-interface {p0, v0}, Landroidx/car/app/IOnDoneCallback;->onSuccess(Lx7;)V
    :try_end_1
    .catch Lb8; {:try_start_1 .. :try_end_1} :catch_1

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :catch_1
    move-exception v0

    .line 60
    invoke-static {p0, v3, v0}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    return-object v2

    .line 64
    :pswitch_1
    check-cast p0, Landroidx/car/app/j;

    .line 65
    .line 66
    check-cast v4, Lai;

    .line 67
    .line 68
    iget-object v0, p0, Landroidx/car/app/j;->a:Landroidx/car/app/ICarHost;

    .line 69
    .line 70
    if-nez v0, :cond_1

    .line 71
    .line 72
    const-string p0, "Host is not bound when attempting to retrieve host service"

    .line 73
    .line 74
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    :goto_3
    move-object p0, v2

    .line 78
    goto :goto_4

    .line 79
    :cond_1
    :try_start_2
    iget-object v0, p0, Landroidx/car/app/j;->b:Landroidx/car/app/IAppHost;

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    const-string v0, "getHost(App)"

    .line 84
    .line 85
    new-instance v5, Lb2;

    .line 86
    .line 87
    invoke-direct {v5, p0}, Lb2;-><init>(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v0, v5}, Landroidx/car/app/utils/e;->e(Ljava/lang/String;Lix;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroidx/car/app/IAppHost;

    .line 95
    .line 96
    iput-object v0, p0, Landroidx/car/app/j;->b:Landroidx/car/app/IAppHost;

    .line 97
    .line 98
    :cond_2
    iget-object p0, p0, Landroidx/car/app/j;->b:Landroidx/car/app/IAppHost;
    :try_end_2
    .catch Lci; {:try_start_2 .. :try_end_2} :catch_2

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :catch_2
    const-string p0, "Host threw an exception when attempting to retrieve host service"

    .line 102
    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :goto_4
    if-nez p0, :cond_3

    .line 108
    .line 109
    const-string p0, "Could not retrieve host while dispatching call "

    .line 110
    .line 111
    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_3
    invoke-interface {v4, p0}, Lai;->e(Landroid/os/IInterface;)V

    .line 120
    .line 121
    .line 122
    :goto_5
    return-object v2

    .line 123
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
