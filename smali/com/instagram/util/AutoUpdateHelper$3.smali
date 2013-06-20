.class Lcom/instagram/util/AutoUpdateHelper$3;
.super Ljava/lang/Object;
.source "AutoUpdateHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/instagram/util/AutoUpdateHelper;


# direct methods
.method constructor <init>(Lcom/instagram/util/AutoUpdateHelper;)V
    .locals 0
    .parameter

    .prologue
    .line 134
    iput-object p1, p0, Lcom/instagram/util/AutoUpdateHelper$3;->this$0:Lcom/instagram/util/AutoUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 137
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 138
    return-void
.end method
