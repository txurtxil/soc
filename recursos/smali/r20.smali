.class public final Lr20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ls20;

.field public final synthetic c:Lgc;


# direct methods
.method public synthetic constructor <init>(Lgc;Ls20;I)V
    .locals 0

    .line 1
    iput p3, p0, Lr20;->a:I

    iput-object p1, p0, Lr20;->c:Lgc;

    iput-object p2, p0, Lr20;->b:Ls20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lr20;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lr20;->b:Ls20;

    .line 4
    .line 5
    iget-object p0, p0, Lr20;->c:Lgc;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    iget-object p0, p0, Lgc;->c:Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :pswitch_0
    iget-object p0, p0, Lgc;->b:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    .line 29
    iget p0, v1, Ls20;->a:I

    .line 30
    .line 31
    iget-object v0, v1, Ls20;->c:Lvf;

    .line 32
    .line 33
    iget-object v0, v0, Lvf;->F:Landroid/view/View;

    .line 34
    .line 35
    invoke-static {v0, p0}, Lt20;->a(Landroid/view/View;I)V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
