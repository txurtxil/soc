.class public final synthetic Landroidx/car/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhx;


# instance fields
.field public final synthetic a:Landroidx/car/app/CarAppBinder;

.field public final synthetic b:Landroidx/car/app/ICarHost;

.field public final synthetic c:Landroid/content/res/Configuration;

.field public final synthetic d:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroidx/car/app/CarAppBinder;Landroidx/car/app/ICarHost;Landroid/content/res/Configuration;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/car/app/e;->a:Landroidx/car/app/CarAppBinder;

    iput-object p2, p0, Landroidx/car/app/e;->b:Landroidx/car/app/ICarHost;

    iput-object p3, p0, Landroidx/car/app/e;->c:Landroid/content/res/Configuration;

    iput-object p4, p0, Landroidx/car/app/e;->d:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/e;->c:Landroid/content/res/Configuration;

    iget-object v1, p0, Landroidx/car/app/e;->d:Landroid/content/Intent;

    iget-object v2, p0, Landroidx/car/app/e;->a:Landroidx/car/app/CarAppBinder;

    iget-object p0, p0, Landroidx/car/app/e;->b:Landroidx/car/app/ICarHost;

    invoke-static {v2, p0, v0, v1}, Landroidx/car/app/CarAppBinder;->m(Landroidx/car/app/CarAppBinder;Landroidx/car/app/ICarHost;Landroid/content/res/Configuration;Landroid/content/Intent;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
