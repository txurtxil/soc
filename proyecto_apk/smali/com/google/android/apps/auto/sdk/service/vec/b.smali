.class final Lcom/google/android/apps/auto/sdk/service/vec/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/apps/auto/sdk/service/a/c/a;
.implements Lcom/google/android/gms/car/CarVendorExtensionManager$CarVendorExtensionListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/apps/auto/sdk/service/a/c/a<",
        "Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;",
        ">;",
        "Lcom/google/android/gms/car/CarVendorExtensionManager$CarVendorExtensionListener;"
    }
.end annotation


# instance fields
.field a:Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;

.field private b:Lcom/google/android/apps/auto/sdk/service/vec/a;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/auto/sdk/service/vec/a;Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/auto/sdk/service/vec/b;->a:Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/vec/b;->b:Lcom/google/android/apps/auto/sdk/service/vec/a;

    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/vec/b;->a:Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;

    return-object p0
.end method

.method public final onData([B)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/auto/sdk/service/vec/b;->a:Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;

    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/vec/b;->b:Lcom/google/android/apps/auto/sdk/service/vec/a;

    invoke-interface {v0, p0, p1}, Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager$CarVendorExtensionListener;->onData(Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager;[B)V

    return-void
.end method
