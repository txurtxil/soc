.class public final Lidv/lzn/screenonauto/MirrorNotificationListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onListenerConnected()V
    .locals 0

    .line 1
    sget-object p0, Lidv/lzn/screenonauto/MirrorMediaService;->q:Lidv/lzn/screenonauto/MirrorMediaService;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lidv/lzn/screenonauto/MirrorMediaService;->k()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public final onListenerDisconnected()V
    .locals 0

    return-void
.end method
