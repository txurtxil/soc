.class public final synthetic Lw00;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lau;
.implements Lbu;
.implements Lmg;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lidv/lzn/screenonauto/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lidv/lzn/screenonauto/SettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw00;->a:I

    iput-object p1, p0, Lw00;->b:Lidv/lzn/screenonauto/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 1
    iget p1, p0, Lw00;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const v1, 0x7f100030

    .line 5
    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    iget-object p0, p0, Lw00;->b:Lidv/lzn/screenonauto/SettingsFragment;

    .line 9
    .line 10
    sparse-switch p1, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    check-cast p2, Ljava/lang/Boolean;

    .line 17
    .line 18
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    iget-object p0, p0, Lvf;->F:Landroid/view/View;

    .line 35
    .line 36
    if-eqz p0, :cond_0

    .line 37
    .line 38
    sget-object p1, Ll20;->z:[I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Ll20;->e(Landroid/view/View;Ljava/lang/CharSequence;)Ll20;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p0}, Ll20;->f()V

    .line 53
    .line 54
    .line 55
    :cond_0
    move v0, v2

    .line 56
    :cond_1
    return v0

    .line 57
    :sswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    check-cast p2, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    .line 78
    iget-object p0, p0, Lvf;->F:Landroid/view/View;

    .line 79
    .line 80
    if-eqz p0, :cond_2

    .line 81
    .line 82
    sget-object p1, Ll20;->z:[I

    .line 83
    .line 84
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p0, p1}, Ll20;->e(Landroid/view/View;Ljava/lang/CharSequence;)Ll20;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {p0}, Ll20;->f()V

    .line 97
    .line 98
    .line 99
    :cond_2
    move v0, v2

    .line 100
    :cond_3
    return v0

    .line 101
    :sswitch_1
    iget-object p0, p0, Lvf;->t:Lwf;

    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    if-nez p0, :cond_4

    .line 105
    .line 106
    move-object p0, p1

    .line 107
    goto :goto_0

    .line 108
    :cond_4
    iget-object p0, p0, Lwf;->j:Lz2;

    .line 109
    .line 110
    :goto_0
    instance-of v0, p0, Lidv/lzn/screenonauto/MainActivity;

    .line 111
    .line 112
    if-eqz v0, :cond_5

    .line 113
    .line 114
    check-cast p0, Lidv/lzn/screenonauto/MainActivity;

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_5
    move-object p0, p1

    .line 118
    :goto_1
    if-eqz p0, :cond_9

    .line 119
    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    check-cast p2, Ljava/lang/Boolean;

    .line 124
    .line 125
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-eqz p2, :cond_8

    .line 130
    .line 131
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 132
    .line 133
    const/16 v0, 0x21

    .line 134
    .line 135
    if-lt p2, v0, :cond_6

    .line 136
    .line 137
    const-string p2, "android.permission.POST_NOTIFICATIONS"

    .line 138
    .line 139
    invoke-static {p0, p2}, Lgn;->g(Landroid/content/Context;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-eqz v0, :cond_6

    .line 144
    .line 145
    iget-object p0, p0, Lidv/lzn/screenonauto/MainActivity;->D:Lu1;

    .line 146
    .line 147
    invoke-virtual {p0, p2}, Lu1;->G(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto :goto_2

    .line 151
    :cond_6
    iget-object p2, p0, Lidv/lzn/screenonauto/MainActivity;->C:Lu1;

    .line 152
    .line 153
    iget-object p0, p0, Lidv/lzn/screenonauto/MainActivity;->z:Landroid/media/projection/MediaProjectionManager;

    .line 154
    .line 155
    if-eqz p0, :cond_7

    .line 156
    .line 157
    invoke-virtual {p0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    .line 158
    .line 159
    .line 160
    move-result-object p0

    .line 161
    invoke-virtual {p2, p0}, Lu1;->G(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_7
    const-string p0, "projectionManager"

    .line 166
    .line 167
    invoke-static {p0}, Lqj;->v(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_8
    new-instance p1, Landroid/content/Intent;

    .line 172
    .line 173
    const-class p2, Lidv/lzn/screenonauto/ScreenCaptureService;

    .line 174
    .line 175
    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, p1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 179
    .line 180
    .line 181
    sput-boolean v2, Lb00;->f:Z

    .line 182
    .line 183
    sget-object p1, Lb00;->k:Landroid/os/Handler;

    .line 184
    .line 185
    new-instance p2, Lou;

    .line 186
    .line 187
    const/4 v0, 0x4

    .line 188
    invoke-direct {p2, v0}, Lou;-><init>(I)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0}, Lidv/lzn/screenonauto/MainActivity;->y()Lidv/lzn/screenonauto/SettingsFragment;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    if-eqz p0, :cond_9

    .line 199
    .line 200
    invoke-virtual {p0, v2}, Lidv/lzn/screenonauto/SettingsFragment;->S(Z)V

    .line 201
    .line 202
    .line 203
    :cond_9
    :goto_2
    return v2

    .line 204
    nop

    .line 205
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Landroidx/preference/Preference;)V
    .locals 3

    .line 1
    iget p1, p0, Lw00;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lw00;->b:Lidv/lzn/screenonauto/SettingsFragment;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    .line 9
    .line 10
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    const-string v2, "package:"

    .line 21
    .line 22
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    .line 37
    .line 38
    invoke-direct {p1, v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lvf;->L(Landroid/content/Intent;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :pswitch_1
    new-instance p1, Landroid/content/Intent;

    .line 46
    .line 47
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-class v1, Lidv/lzn/screenonauto/RootSettingsActivity;

    .line 52
    .line 53
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lvf;->L(Landroid/content/Intent;)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :pswitch_2
    new-instance p1, Landroid/content/Intent;

    .line 61
    .line 62
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const-class v1, Lidv/lzn/screenonauto/AdvancedSettingsActivity;

    .line 67
    .line 68
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, p1}, Lvf;->L(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :pswitch_3
    new-instance p1, Landroid/content/Intent;

    .line 76
    .line 77
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-class v1, Lidv/lzn/screenonauto/LaunchShortcutsActivity;

    .line 82
    .line 83
    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, p1}, Lvf;->L(Landroid/content/Intent;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :pswitch_4
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {p1}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    const/4 v1, 0x0

    .line 99
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v0, "auto_launch_package"

    .line 104
    .line 105
    const/4 v1, 0x0

    .line 106
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    new-instance v0, Lq6;

    .line 111
    .line 112
    invoke-direct {v0}, Lq6;-><init>()V

    .line 113
    .line 114
    .line 115
    new-instance v1, Landroid/os/Bundle;

    .line 116
    .line 117
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 118
    .line 119
    .line 120
    if-nez p1, :cond_0

    .line 121
    .line 122
    const-string p1, ""

    .line 123
    .line 124
    :cond_0
    const-string v2, "current_package"

    .line 125
    .line 126
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Lvf;->J(Landroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lvf;->j()Landroidx/fragment/app/a;

    .line 133
    .line 134
    .line 135
    move-result-object p0

    .line 136
    const-string p1, "AppPickerDialog"

    .line 137
    .line 138
    invoke-virtual {v0, p0, p1}, Lqc;->O(Landroidx/fragment/app/a;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :pswitch_5
    new-instance p1, Landroid/content/Intent;

    .line 143
    .line 144
    const-string v0, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    .line 145
    .line 146
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    new-instance v0, Landroid/content/ComponentName;

    .line 150
    .line 151
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-class v2, Lidv/lzn/screenonauto/MirrorNotificationListenerService;

    .line 156
    .line 157
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 158
    .line 159
    .line 160
    const-string v1, "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

    .line 161
    .line 162
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p0, p1}, Lvf;->L(Landroid/content/Intent;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_6
    new-instance p1, Lb;

    .line 174
    .line 175
    invoke-direct {p1}, Lb;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0}, Lvf;->j()Landroidx/fragment/app/a;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    const-string v0, "AboutDialog"

    .line 183
    .line 184
    invoke-virtual {p1, p0, v0}, Lqc;->O(Landroidx/fragment/app/a;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    return-void

    .line 188
    :pswitch_7
    new-instance p1, Landroid/content/Intent;

    .line 189
    .line 190
    const-string v0, "android.settings.ACCESSIBILITY_SETTINGS"

    .line 191
    .line 192
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0, p1}, Lvf;->L(Landroid/content/Intent;)V

    .line 196
    .line 197
    .line 198
    return-void

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public d(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    const-string v0, "package"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    :cond_0
    iget-object p0, p0, Lw00;->b:Lidv/lzn/screenonauto/SettingsFragment;

    .line 12
    .line 13
    invoke-virtual {p0}, Lvf;->G()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Llu;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "auto_launch_package"

    .line 31
    .line 32
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lidv/lzn/screenonauto/SettingsFragment;->R()V

    .line 40
    .line 41
    .line 42
    return-void
.end method
