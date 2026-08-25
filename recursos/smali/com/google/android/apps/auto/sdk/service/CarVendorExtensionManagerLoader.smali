.class public Lcom/google/android/apps/auto/sdk/service/CarVendorExtensionManagerLoader;
.super Ljava/lang/Object;


# static fields
.field public static final VENDOR_EXTENSION_LOADER_SERVICE:Ljava/lang/String; = "vec_loader"


# instance fields
.field private a:Lcom/google/android/gms/car/CarApi;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/car/CarApi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/apps/auto/sdk/service/CarVendorExtensionManagerLoader;->a:Lcom/google/android/gms/car/CarApi;

    return-void
.end method


# virtual methods
.method public getManager(Ljava/lang/String;)Lcom/google/android/apps/auto/sdk/service/vec/CarVendorExtensionManager;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/google/android/apps/auto/sdk/service/vec/a;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/google/android/apps/auto/sdk/service/CarVendorExtensionManagerLoader;->a:Lcom/google/android/gms/car/CarApi;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lcom/google/android/gms/car/CarApi;->getVendorExtensionManager(Ljava/lang/String;)Lcom/google/android/gms/car/CarVendorExtensionManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/google/android/apps/auto/sdk/service/vec/a;-><init>(Lcom/google/android/gms/car/CarVendorExtensionManager;)V
    :try_end_0
    .catch Lcom/google/android/gms/car/CarNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/car/CarNotConnectedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Lt90;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    throw p1

    .line 20
    :catch_1
    const/4 p0, 0x0

    .line 21
    return-object p0
.end method
