.class public final synthetic Lkc;
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
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lkc;->a:I

    iput-object p1, p0, Lkc;->c:Ljava/lang/Object;

    iput p2, p0, Lkc;->b:I

    iput-object p3, p0, Lkc;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lkc;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lkc;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lkc;->b:I

    .line 6
    .line 7
    iget-object p0, p0, Lkc;->c:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lyy;

    .line 13
    .line 14
    check-cast v1, Landroid/os/IBinder;

    .line 15
    .line 16
    iget-object v0, p0, Lyy;->c:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    :try_start_0
    new-instance v3, Lwy;

    .line 26
    .line 27
    invoke-direct {v3, p0, v1, v2}, Lwy;-><init>(Lyy;Landroid/os/IBinder;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Le60;->a:Landroid/os/Handler;

    .line 34
    .line 35
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    const-string v0, "IPC"

    .line 41
    .line 42
    invoke-static {v0, p0}, Lk60;->o(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :pswitch_0
    check-cast p0, Llc;

    .line 47
    .line 48
    iget-object p0, p0, Llc;->b:Ldv;

    .line 49
    .line 50
    invoke-interface {p0, v2, v1}, Ldv;->l(ILjava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
