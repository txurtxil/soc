.class public final synthetic Lqu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/io/Serializable;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lax;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lqu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqu;->c:Ljava/lang/Object;

    iput p2, p0, Lqu;->b:I

    iput-object p3, p0, Lqu;->d:Ljava/io/Serializable;

    iput-object p4, p0, Lqu;->e:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lyy;[Landroid/os/IBinder;ILandroid/content/Intent;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lqu;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqu;->c:Ljava/lang/Object;

    iput-object p2, p0, Lqu;->d:Ljava/io/Serializable;

    iput p3, p0, Lqu;->b:I

    iput-object p4, p0, Lqu;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lqu;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lqu;->e:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lqu;->b:I

    .line 6
    .line 7
    iget-object v3, p0, Lqu;->d:Ljava/io/Serializable;

    .line 8
    .line 9
    iget-object p0, p0, Lqu;->c:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast p0, Lyy;

    .line 15
    .line 16
    check-cast v3, [Landroid/os/IBinder;

    .line 17
    .line 18
    check-cast v1, Landroid/content/Intent;

    .line 19
    .line 20
    :try_start_0
    invoke-virtual {p0, v1, v2}, Lyy;->g(Landroid/content/Intent;I)Landroid/os/IBinder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const/4 v0, 0x0

    .line 25
    aput-object p0, v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    const-string v0, "IPC"

    .line 30
    .line 31
    invoke-static {v0, p0}, Lk60;->o(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    :goto_0
    return-void

    .line 35
    :pswitch_0
    check-cast p0, Lax;

    .line 36
    .line 37
    check-cast v3, Lidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;

    .line 38
    .line 39
    check-cast v1, Lch;

    .line 40
    .line 41
    invoke-static {p0, v2, v3, v1}, Lidv/lzn/screenonauto/privileged/PrivilegedManager;->e(Lax;ILidv/lzn/screenonauto/privileged/PrivilegedManager$Kind;Lch;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
