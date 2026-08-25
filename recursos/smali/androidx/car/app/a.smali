.class public final synthetic Landroidx/car/app/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/car/app/i;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/i;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/car/app/a;->a:I

    iput-object p1, p0, Landroidx/car/app/a;->b:Landroidx/car/app/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Landroidx/car/app/a;->a:I

    iget-object p0, p0, Landroidx/car/app/a;->b:Landroidx/car/app/i;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Landroidx/car/app/AppManager$1;->i(Landroidx/car/app/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0}, Landroidx/car/app/AppManager$1;->h(Landroidx/car/app/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-static {p0}, Landroidx/car/app/AppManager$1;->g(Landroidx/car/app/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
