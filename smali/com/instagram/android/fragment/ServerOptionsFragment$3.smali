.class Lcom/instagram/android/fragment/ServerOptionsFragment$3;
.super Ljava/lang/Object;
.source "ServerOptionsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/android/fragment/ServerOptionsFragment;


# direct methods
.method constructor <init>(Lcom/instagram/android/fragment/ServerOptionsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/instagram/android/fragment/ServerOptionsFragment$3;->this$0:Lcom/instagram/android/fragment/ServerOptionsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 91
    invoke-static {}, Lcom/instagram/android/prefs/DevPreferences;->getInstance()Lcom/instagram/android/prefs/DevPreferences;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/instagram/android/prefs/DevPreferences;->setUsingDevServer(Z)V

    .line 92
    return-void
.end method
