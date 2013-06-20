.class final enum Lcom/instagram/android/activity/MainTabActivity$TabTag;
.super Ljava/lang/Enum;
.source "MainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/instagram/android/activity/MainTabActivity$TabTag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/instagram/android/activity/MainTabActivity$TabTag;

.field public static final enum FEED:Lcom/instagram/android/activity/MainTabActivity$TabTag;

.field public static final enum NEWS:Lcom/instagram/android/activity/MainTabActivity$TabTag;

.field public static final enum POPULAR:Lcom/instagram/android/activity/MainTabActivity$TabTag;

.field public static final enum PROFILE:Lcom/instagram/android/activity/MainTabActivity$TabTag;

.field public static final enum SHARE:Lcom/instagram/android/activity/MainTabActivity$TabTag;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    new-instance v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;

    const-string v1, "FEED"

    invoke-direct {v0, v1, v2}, Lcom/instagram/android/activity/MainTabActivity$TabTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;->FEED:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    .line 106
    new-instance v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;

    const-string v1, "NEWS"

    invoke-direct {v0, v1, v3}, Lcom/instagram/android/activity/MainTabActivity$TabTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;->NEWS:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    .line 107
    new-instance v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;

    const-string v1, "SHARE"

    invoke-direct {v0, v1, v4}, Lcom/instagram/android/activity/MainTabActivity$TabTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;->SHARE:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    .line 108
    new-instance v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;

    const-string v1, "POPULAR"

    invoke-direct {v0, v1, v5}, Lcom/instagram/android/activity/MainTabActivity$TabTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;->POPULAR:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    .line 109
    new-instance v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v6}, Lcom/instagram/android/activity/MainTabActivity$TabTag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;->PROFILE:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    .line 104
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/instagram/android/activity/MainTabActivity$TabTag;

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->FEED:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->NEWS:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->SHARE:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->POPULAR:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/instagram/android/activity/MainTabActivity$TabTag;->PROFILE:Lcom/instagram/android/activity/MainTabActivity$TabTag;

    aput-object v1, v0, v6

    sput-object v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;->$VALUES:[Lcom/instagram/android/activity/MainTabActivity$TabTag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/instagram/android/activity/MainTabActivity$TabTag;
    .locals 1
    .parameter "name"

    .prologue
    .line 104
    const-class v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;

    return-object v0
.end method

.method public static values()[Lcom/instagram/android/activity/MainTabActivity$TabTag;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/instagram/android/activity/MainTabActivity$TabTag;->$VALUES:[Lcom/instagram/android/activity/MainTabActivity$TabTag;

    invoke-virtual {v0}, [Lcom/instagram/android/activity/MainTabActivity$TabTag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/instagram/android/activity/MainTabActivity$TabTag;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .locals 2

    .prologue
    .line 112
    sget-object v0, Lcom/instagram/android/activity/MainTabActivity$8;->$SwitchMap$com$instagram$android$activity$MainTabActivity$TabTag:[I

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 123
    sget v0, Lcom/facebook/h;->tab_bar_button_profile:I

    :goto_0
    return v0

    .line 114
    :pswitch_0
    sget v0, Lcom/facebook/h;->tab_bar_button_camera:I

    goto :goto_0

    .line 116
    :pswitch_1
    sget v0, Lcom/facebook/h;->tab_bar_button_feed:I

    goto :goto_0

    .line 118
    :pswitch_2
    sget v0, Lcom/facebook/h;->tab_bar_button_news:I

    goto :goto_0

    .line 120
    :pswitch_3
    sget v0, Lcom/facebook/h;->tab_bar_button_popular:I

    goto :goto_0

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 128
    sget-object v0, Lcom/instagram/android/activity/MainTabActivity$8;->$SwitchMap$com$instagram$android$activity$MainTabActivity$TabTag:[I

    invoke-virtual {p0}, Lcom/instagram/android/activity/MainTabActivity$TabTag;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 139
    const-string v0, "profile"

    :goto_0
    return-object v0

    .line 130
    :pswitch_0
    const-string v0, "share"

    goto :goto_0

    .line 132
    :pswitch_1
    const-string v0, "feed"

    goto :goto_0

    .line 134
    :pswitch_2
    const-string v0, "news"

    goto :goto_0

    .line 136
    :pswitch_3
    const-string v0, "popular"

    goto :goto_0

    .line 128
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
