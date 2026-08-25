.class public final synthetic Lyu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/os/Binder;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Binder;I)V
    .locals 0

    .line 1
    iput p2, p0, Lyu;->a:I

    iput-object p1, p0, Lyu;->b:Landroid/os/Binder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    .line 1
    iget v0, p0, Lyu;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lyu;->b:Landroid/os/Binder;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Ld20;

    .line 9
    .line 10
    iget-boolean v0, p0, Ld20;->c:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Ld20;->c:Z

    .line 17
    .line 18
    sget-object v0, Ld20;->d:Landroid/os/Handler;

    .line 19
    .line 20
    new-instance v1, Lm1;

    .line 21
    .line 22
    const/16 v2, 0x12

    .line 23
    .line 24
    invoke-direct {v1, v2, p0}, Lm1;-><init>(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void

    .line 31
    :pswitch_0
    check-cast p0, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;

    .line 32
    .line 33
    invoke-static {p0}, Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;->j(Lidv/lzn/screenonauto/privileged/PrivilegedServiceImpl;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
