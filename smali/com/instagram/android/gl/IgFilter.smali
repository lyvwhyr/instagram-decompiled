.class public abstract Lcom/instagram/android/gl/IgFilter;
.super Ljava/lang/Object;
.source "IgFilter.java"


# instance fields
.field private mId:I

.field private mName:Ljava/lang/String;

.field private mResInfix:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "name"
    .parameter "resInfix"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/instagram/android/gl/IgFilter;->mId:I

    .line 13
    iput-object p2, p0, Lcom/instagram/android/gl/IgFilter;->mName:Ljava/lang/String;

    .line 14
    iput-object p3, p0, Lcom/instagram/android/gl/IgFilter;->mResInfix:Ljava/lang/String;

    .line 15
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 22
    iget v0, p0, Lcom/instagram/android/gl/IgFilter;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/instagram/android/gl/IgFilter;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getResInfix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/instagram/android/gl/IgFilter;->mResInfix:Ljava/lang/String;

    return-object v0
.end method
