.class public final synthetic Landroidx/car/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/car/app/CarAppBinder;

.field public final synthetic c:Landroid/os/Parcelable;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/CarAppBinder;Landroid/os/Parcelable;I)V
    .locals 0

    .line 1
    iput p3, p0, Landroidx/car/app/c;->a:I

    iput-object p1, p0, Landroidx/car/app/c;->b:Landroidx/car/app/CarAppBinder;

    iput-object p2, p0, Landroidx/car/app/c;->c:Landroid/os/Parcelable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Landroidx/car/app/c;->a:I

    iget-object v1, p0, Landroidx/car/app/c;->c:Landroid/os/Parcelable;

    iget-object p0, p0, Landroidx/car/app/c;->b:Landroidx/car/app/CarAppBinder;

    packed-switch v0, :pswitch_data_0

    check-cast v1, Landroid/content/Intent;

    invoke-static {p0, v1}, Landroidx/car/app/CarAppBinder;->n(Landroidx/car/app/CarAppBinder;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast v1, Landroid/content/res/Configuration;

    invoke-static {p0, v1}, Landroidx/car/app/CarAppBinder;->l(Landroidx/car/app/CarAppBinder;Landroid/content/res/Configuration;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
