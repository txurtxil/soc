.class Landroidx/car/app/AppManager$1;
.super Landroidx/car/app/IAppManager$Stub;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Landroidx/car/app/b;

.field final synthetic val$carContext:Landroidx/car/app/i;


# direct methods
.method public constructor <init>(Landroidx/car/app/b;Landroidx/car/app/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/car/app/AppManager$1;->this$0:Landroidx/car/app/b;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/i;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/car/app/IAppManager$Stub;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic g(Landroidx/car/app/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/car/app/AppManager$1;->lambda$onBackPressed$0(Landroidx/car/app/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Landroidx/car/app/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/car/app/AppManager$1;->lambda$stopLocationUpdates$2(Landroidx/car/app/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroidx/car/app/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/car/app/AppManager$1;->lambda$startLocationUpdates$1(Landroidx/car/app/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static lambda$onBackPressed$0(Landroidx/car/app/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/car/app/i;->a:Landroidx/activity/b;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/activity/b;->b()V

    .line 4
    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return-object p0
.end method

.method private static lambda$startLocationUpdates$1(Landroidx/car/app/i;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-class v0, Landroidx/car/app/b;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/car/app/b;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/car/app/b;->a:Landroidx/car/app/i;

    .line 10
    .line 11
    const-string v1, "location"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/location/LocationManager;

    .line 18
    .line 19
    iget-object v2, p0, Landroidx/car/app/b;->e:Lf6;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/car/app/b;->a:Landroidx/car/app/i;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    move-object v1, v0

    .line 31
    check-cast v1, Landroid/location/LocationManager;

    .line 32
    .line 33
    iget-object v6, p0, Landroidx/car/app/b;->e:Lf6;

    .line 34
    .line 35
    iget-object p0, p0, Landroidx/car/app/b;->f:Landroid/os/HandlerThread;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    const-string v2, "fused"

    .line 42
    .line 43
    const-wide/16 v3, 0x3e8

    .line 44
    .line 45
    const/high16 v5, 0x3f800000    # 1.0f

    .line 46
    .line 47
    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 48
    .line 49
    .line 50
    const/4 p0, 0x0

    .line 51
    return-object p0
.end method

.method private static lambda$stopLocationUpdates$2(Landroidx/car/app/i;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-class v0, Landroidx/car/app/b;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/car/app/b;

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/car/app/b;->a:Landroidx/car/app/i;

    .line 10
    .line 11
    const-string v1, "location"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/location/LocationManager;

    .line 18
    .line 19
    iget-object p0, p0, Landroidx/car/app/b;->e:Lf6;

    .line 20
    .line 21
    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 22
    .line 23
    .line 24
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method


# virtual methods
.method public getTemplate(Landroidx/car/app/IOnDoneCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/car/app/AppManager$1;->this$0:Landroidx/car/app/b;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/car/app/b;->d:Landroidx/lifecycle/a;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/i;

    .line 6
    .line 7
    const-class v1, Landroidx/car/app/k;

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Landroidx/car/app/i;->b(Ljava/lang/Class;)Lfm;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    check-cast p0, Landroidx/car/app/k;

    .line 14
    .line 15
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    new-instance v1, Lb2;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lb2;-><init>(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    const-string p0, "getTemplate"

    .line 24
    .line 25
    invoke-static {v0, p1, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onBackPressed(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/AppManager$1;->this$0:Landroidx/car/app/b;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/car/app/b;->d:Landroidx/lifecycle/a;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/i;

    .line 6
    .line 7
    new-instance v1, Landroidx/car/app/a;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {v1, p0, v2}, Landroidx/car/app/a;-><init>(Landroidx/car/app/i;I)V

    .line 11
    .line 12
    .line 13
    const-string p0, "onBackPressed"

    .line 14
    .line 15
    invoke-static {v0, p1, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public startLocationUpdates(Landroidx/car/app/IOnDoneCallback;)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/i;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, -0x1

    .line 22
    if-ne v1, v4, :cond_0

    .line 23
    .line 24
    move v1, v3

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move v1, v2

    .line 27
    :goto_0
    iget-object v5, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/i;

    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    .line 34
    .line 35
    invoke-virtual {v0, v6, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-ne v0, v4, :cond_1

    .line 40
    .line 41
    move v2, v3

    .line 42
    :cond_1
    const-string v0, "startLocationUpdates"

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    if-eqz v2, :cond_2

    .line 47
    .line 48
    new-instance v1, Ljava/lang/SecurityException;

    .line 49
    .line 50
    const-string v2, "Location permission(s) not granted."

    .line 51
    .line 52
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0, v1}, Landroidx/car/app/utils/e;->f(Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    iget-object v1, p0, Landroidx/car/app/AppManager$1;->this$0:Landroidx/car/app/b;

    .line 59
    .line 60
    iget-object v1, v1, Landroidx/car/app/b;->d:Landroidx/lifecycle/a;

    .line 61
    .line 62
    iget-object p0, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/i;

    .line 63
    .line 64
    new-instance v2, Landroidx/car/app/a;

    .line 65
    .line 66
    const/4 v3, 0x2

    .line 67
    invoke-direct {v2, p0, v3}, Landroidx/car/app/a;-><init>(Landroidx/car/app/i;I)V

    .line 68
    .line 69
    .line 70
    invoke-static {v1, p1, v0, v2}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public stopLocationUpdates(Landroidx/car/app/IOnDoneCallback;)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/car/app/AppManager$1;->this$0:Landroidx/car/app/b;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/car/app/b;->d:Landroidx/lifecycle/a;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/car/app/AppManager$1;->val$carContext:Landroidx/car/app/i;

    .line 6
    .line 7
    new-instance v1, Landroidx/car/app/a;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, p0, v2}, Landroidx/car/app/a;-><init>(Landroidx/car/app/i;I)V

    .line 11
    .line 12
    .line 13
    const-string p0, "stopLocationUpdates"

    .line 14
    .line 15
    invoke-static {v0, p1, p0, v1}, Landroidx/car/app/utils/e;->b(Lnk;Landroidx/car/app/IOnDoneCallback;Ljava/lang/String;Lhx;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
