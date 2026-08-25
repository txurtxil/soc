.class public final Lsn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc9;

.field public final synthetic c:Lc9;


# direct methods
.method public synthetic constructor <init>(Lc9;Lc9;I)V
    .locals 0

    .line 1
    iput p3, p0, Lsn;->a:I

    iput-object p1, p0, Lsn;->c:Lc9;

    iput-object p2, p0, Lsn;->b:Lc9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lsn;->a:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iget-object v2, p0, Lsn;->c:Lc9;

    .line 5
    .line 6
    iget-object p0, p0, Lsn;->b:Lc9;

    .line 7
    .line 8
    packed-switch v0, :pswitch_data_0

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroid/os/Messenger;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    iget-object v0, v2, Lc9;->b:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v0, Lvn;

    .line 22
    .line 23
    iget-object v0, v0, Lvn;->d:Lu6;

    .line 24
    .line 25
    invoke-virtual {v0, p0}, Lj20;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lkn;

    .line 30
    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    invoke-interface {p0, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void

    .line 37
    :pswitch_0
    iget-object p0, p0, Lc9;->b:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p0, Landroid/os/Messenger;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    iget-object v0, v2, Lc9;->b:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast v0, Lvn;

    .line 48
    .line 49
    iget-object v0, v0, Lvn;->d:Lu6;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lj20;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Lkn;

    .line 56
    .line 57
    if-eqz p0, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lkn;->d:Lc9;

    .line 60
    .line 61
    iget-object v0, v0, Lc9;->b:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v0, Landroid/os/Messenger;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 70
    .line 71
    .line 72
    :cond_1
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
