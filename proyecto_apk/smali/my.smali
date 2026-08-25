.class public final synthetic Lmy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/ServiceConnection;

.field public final synthetic c:Lqy;

.field public final synthetic d:Landroid/os/IBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/content/ServiceConnection;Lqy;Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    iput p4, p0, Lmy;->a:I

    iput-object p1, p0, Lmy;->b:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lmy;->c:Lqy;

    iput-object p3, p0, Lmy;->d:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget v0, p0, Lmy;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lmy;->d:Landroid/os/IBinder;

    .line 4
    .line 5
    iget-object v2, p0, Lmy;->c:Lqy;

    .line 6
    .line 7
    iget-object p0, p0, Lmy;->b:Landroid/content/ServiceConnection;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroid/content/ComponentName;

    .line 15
    .line 16
    invoke-interface {p0, v0, v1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :pswitch_0
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroid/content/ComponentName;

    .line 23
    .line 24
    invoke-interface {p0, v0, v1}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    nop

    .line 29
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
