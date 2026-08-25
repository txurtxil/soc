.class public final synthetic Lcm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lch;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lidv/lzn/screenonauto/SettingsFragment;


# direct methods
.method public synthetic constructor <init>(Lidv/lzn/screenonauto/SettingsFragment;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcm;->a:I

    iput-object p1, p0, Lcm;->b:Lidv/lzn/screenonauto/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcm;->a:I

    .line 2
    .line 3
    sget-object v1, Lf60;->a:Lf60;

    .line 4
    .line 5
    iget-object p0, p0, Lcm;->b:Lidv/lzn/screenonauto/SettingsFragment;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 11
    .line 12
    invoke-virtual {p0}, Lvf;->o()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object p0, p0, Lidv/lzn/screenonauto/SettingsFragment;->g0:Landroidx/preference/Preference;

    .line 19
    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->w(Landroid/graphics/drawable/Drawable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-object v1

    .line 26
    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lidv/lzn/screenonauto/SettingsFragment;->U()V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    sget v0, Lidv/lzn/screenonauto/MainActivity;->E:I

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lidv/lzn/screenonauto/SettingsFragment;->S(Z)V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-object v1

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
