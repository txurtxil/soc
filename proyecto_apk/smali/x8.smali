.class public final synthetic Lx8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgm;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/car/app/i;

.field public final synthetic c:Landroidx/car/app/j;

.field public final synthetic d:Landroidx/lifecycle/a;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;I)V
    .locals 0

    .line 1
    iput p4, p0, Lx8;->a:I

    iput-object p1, p0, Lx8;->b:Landroidx/car/app/i;

    iput-object p2, p0, Lx8;->c:Landroidx/car/app/j;

    iput-object p3, p0, Lx8;->d:Landroidx/lifecycle/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lfm;
    .locals 3

    .line 1
    iget v0, p0, Lx8;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lx8;->d:Landroidx/lifecycle/a;

    .line 4
    .line 5
    iget-object v2, p0, Lx8;->c:Landroidx/car/app/j;

    .line 6
    .line 7
    iget-object p0, p0, Lx8;->b:Landroidx/car/app/i;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v2, v1}, Landroidx/car/app/media/a;->a(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;)Landroidx/car/app/media/a;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    invoke-static {p0, v2, v1}, Landroidx/car/app/suggestion/a;->a(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;)Landroidx/car/app/suggestion/a;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :pswitch_1
    new-instance v0, Landroidx/car/app/navigation/b;

    .line 23
    .line 24
    invoke-direct {v0, p0, v2, v1}, Landroidx/car/app/navigation/b;-><init>(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;)V

    .line 25
    .line 26
    .line 27
    return-object v0

    .line 28
    :pswitch_2
    new-instance v0, Landroidx/car/app/b;

    .line 29
    .line 30
    invoke-direct {v0, p0, v2, v1}, Landroidx/car/app/b;-><init>(Landroidx/car/app/i;Landroidx/car/app/j;Landroidx/lifecycle/a;)V

    .line 31
    .line 32
    .line 33
    return-object v0

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
