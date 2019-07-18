Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 407716CEF0
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 15:35:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8QRzMUOiAS/c+2d10of6she0tBVpEHHK+T0HJRbMGPo=; b=NVn9NVzGT9EZOOkS1/OX6t97GM
	eJd60rd3y2sYVqO4Hs337kE6+UKL7CN4MpC+7JJ+SVJq7FZfFFQckfI+uIrMd/KYLgqorXT478+wn
	YpmnX4sTbgHejreOKruwGWOZNb2LXmUTfyZaAd2JzfwyB487oP6DSC4Ckh7NQAGEKE10FtrOlSUcm
	o8OX5hCTt6iel0WAUpoEss2VTT/ll7kMqpUMVnSvx9NqrhQSpf4a6nWhlU0m+6wjRzhjngWbGLdRs
	ir2+xUNC9hZQVGa6u/VdKDTpqyeyQyPR3YV4y1ewUOylDOZrTh6LJxkbZHqNIkQDub9/VNwfocYLJ
	wT0uqbQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho6Z0-0007Iv-PQ; Thu, 18 Jul 2019 13:35:14 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho6Xa-0006jB-Sc
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 13:33:48 +0000
Received: by mail-wm1-x341.google.com with SMTP id s15so4356342wmj.3
 for <linux-nvme@lists.infradead.org>; Thu, 18 Jul 2019 06:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :content-transfer-encoding;
 bh=9w1xxlHb/VEIpzdOOWwd1xtDNvnBNKHtKvEhPQVLgKA=;
 b=KER3JAZGgGC06GRuyr1CVWqVBXWHufbAleZKGNZGccPGsUc8923TZC06WJ7Q44n+OH
 kkYJG01x3l4R0w732S6ZAk5rN5nj9PRZNGALD+0mtDz3NbS0fZMeN2RcER4He5am1l1Q
 A8TTErxagdYj0MT+wCpSwWOG7rqYiRT55HB0SIF7+qgHAQ8IvQF2aLH3Qy/kvWXZ5cto
 bCINuEvt3soVj4k/+9yfMOH9n/aNGoD0KZMuUJ0EohTQ1SoP19K7QSG7BvBu2bzTGMZM
 l7sFvhz3+NZ+9fjqgGtsU9vs+0JacTWBMhuRdkjV8xQTVnaWaed+8ESdJMFZX158zZFA
 b7Lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:content-transfer-encoding;
 bh=9w1xxlHb/VEIpzdOOWwd1xtDNvnBNKHtKvEhPQVLgKA=;
 b=Q2cFvZ8UVJNfi0pw4rgNr32XYE7gbd9urWziAYwZjEgd5BNqsW+aDII5UMjQXl1uYp
 dHasAa4MOcvRhfty0QHy3dTIVtNwAOPiKoU1i3CvqSBNPnDDlyY10mhx2DshaxFnlKux
 lVFvbxN1kL5ipYKqPfhF3W6FKmUhyhLJgHQ+OyVWm91P5VOz8mVqp5/M76nos/UvuQXd
 DwFF7paaKLvNlxHB8HbXXRvCqcD13ixhV1bNU/6cNbafL+hfQ67MYwx9XS2u7cZd6oNn
 T2BfSOSlrBPFnQxdhuRPfHWlgbOJcyGBzl+Rvzvhm2SNmHGg+NnG5UU+X7bmzZtyQGJF
 ln2g==
X-Gm-Message-State: APjAAAXf57wCegW3NqjjJbs2Y+++Ao8McRcMGq/mPMD7rJTdSVtWRLT5
 W4kaN0Mngyn8kVtnR31fGL4wmPeiACgCb8frxhY=
X-Google-Smtp-Source: APXvYqzuJh3Hy3Ru8paI3yEnCV73MOWotWHyH7qILTT7R9V8heWXKM69BvZV/N9oyqTlPgxWoXieY/Os6srlHcmFKRI=
X-Received: by 2002:a1c:4c1a:: with SMTP id z26mr41836156wmf.2.1563456824835; 
 Thu, 18 Jul 2019 06:33:44 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561381826.git.zhangweiping@didiglobal.com>
In-Reply-To: <cover.1561381826.git.zhangweiping@didiglobal.com>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Thu, 18 Jul 2019 21:33:07 +0800
Message-ID: <CAA70yB5wsa9+Tb5AYvvq9YHUm79PVhQDcq_amYKjt2WwGqCc_g@mail.gmail.com>
Subject: Re: [PATCH v3 0/5] Add support Weighted Round Robin for blkcg and nvme
To: Jens Axboe <axboe@kernel.dk>, Tejun Heo <tj@kernel.org>,
 Christoph Hellwig <hch@lst.de>, 
 Bart Van Assche <bvanassche@acm.org>, keith.busch@intel.com, 
 Minwoo Im <minwoo.im.dev@gmail.com>, linux-block@vger.kernel.org, 
 cgroups@vger.kernel.org, linux-nvme@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_063346_968792_7FA8B30E 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zwp10758[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zwp10758[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

V2VpcGluZyBaaGFuZyA8emhhbmd3ZWlwaW5nQGRpZGlnbG9iYWwuY29tPiDkuo4yMDE55bm0Nuac
iDI05pel5ZGo5LiAIOS4i+WNiDEwOjM05YaZ6YGT77yaCj4KPiBIaSwKPgo+IFRoaXMgc2VyaWVz
IHRyeSB0byBhZGQgV2VpZ2h0ZWQgUm91bmQgUm9iaW4gZm9yIGJsb2NrIGNncm91cCBhbmQgbnZt
ZQo+IGRyaXZlci4gV2hlbiBtdWx0aXBsZSBjb250YWluZXJzIHNoYXJlIGEgc2luZ2xlIG52bWUg
ZGV2aWNlLCB3ZSB3YW50Cj4gdG8gcHJvdGVjdCBJTyBjcml0aWNhbCBjb250YWluZXIgZnJvbSBu
b3QgYmUgaW50ZXJmZXJuY2VkIGJ5IG90aGVyCj4gY29udGFpbmVycy4gV2UgYWRkIGJsa2lvLndy
ciBpbnRlcmZhY2UgdG8gdXNlciB0byBjb250cm9sIHRoZWlyIElPCj4gcHJpb3JpdHkuIFRoZSBi
bGtpby53cnIgYWNjZXB0IGZpdmUgbGV2ZWwgcHJpb3JpdGllcywgd2hpY2ggY29udGFpbnMKPiAi
dXJnZW50IiwgImhpZ2giLCAibWVkaXVtIiwgImxvdyIgYW5kICJub25lIiwgdGhlICJub25lIiBp
cyB1c2VkIGZvcgo+IGRpc2FibGUgV1JSIGZvciB0aGlzIGNncm91cC4KPgo+IFRoZSBmaXJzdCBw
YXRjaCBhZGQgYW4gV1JSIGluZnJhc3R1Y3R1cmUgZm9yIGJsb2NrIGNncm91cC4KPgo+IFdlIGFk
ZCBleHRyYSBmb3VyIGhhcmV3YXJlIGNvbnRleHRzIGF0IGJsay1tcSBsYXllciwKPiBIQ1RYX1RZ
UEVfV1JSX1VSR0VUTi9ISUdIL01FRElVTS9MT1cgdG8gYWxsb3cgZGV2aWNlIGRyaXZlciBtYXBz
Cj4gZGlmZmVyZW50IGhhcmRzd2FyZSBxdWV1ZXMgdG8gZGlycmVuY3QgaGFyZHdhcmUgY29udGV4
dC4KPgo+IFRoZSBzZWNvbmQgcGF0Y2ggYWRkIGEgbnZtZV9jdHJsX29wcyBuYW1lZCBnZXRfYW1z
IHRvIGdldCB0aGUgZXhwZWN0Cj4gQXJiaXRyYXRpb24gTWVjaGFuaXNtIFNlbGVjdGVkLCBub3cg
dGhpcyBzZXJpZXMgb25seSBzdXBwb3J0IG52bWUtcGNpLgo+IFRoaXMgb3BlcmF0aW9ucyB3aWxs
IGNoZWNrIGJvdGggQ0FQLkFNUyBhbmQgbnZtZS1wY2kgd3JyIHF1ZXVlIGNvdW50LAo+IHRvIGRl
Y2lkZSBlbmFibGUgV1JSIG9yIFJSLgo+Cj4gVGhlIHRoaXJkIHBhdGNoIHJlbmFtZSB3cml0ZV9x
dWV1ZXMgbW9kdWxlIHBhcmFtZXRlciB0byByZWFkX3F1ZXVlcywKPiB0aGF0IGNhbiBzaW1wbGlm
eSB0aGUgY2FsY3VsYXRpb24gdGhlIG51bWJlciBvZiBkZWZhdXQscmVhZCxwb2xsLHdycgo+IHF1
ZXVlLgo+Cj4gVGhlIGZvdXJ0aCBwYXRjaCBza2lwIHRoZSBlbXB0eSBhZmZpbml0eSBzZXQsIGJl
Y2F1c2UgbnZtZSBtYXkgaGF2ZQo+IDcgYWZmaW5pdHkgc2V0cywgYW5kIHNvbWUgYWZmaW5pdHkg
c2V0IG1heSBiZSBlbXB0eS4KPgo+IFRoZSBsYXN0IHBhdGNoIGFkZCBzdXBwb3J0IG52bWUtcGNp
IFdlaWdodGVkIFJvdW5kIFJvYmluIHdpdGggVXJnZW50Cj4gUHJpb3JpdHkgQ2xhc3MsIHdlIGFk
ZCBmb3VyIG1vZHVsZSBwYXJhbm1ldGVycyBhcyBmb2xsb3c6Cj4gICAgICAgICB3cnJfdXJnZW50
X3F1ZXVlcwo+ICAgICAgICAgd3JyX2hpZ2hfcXVldWVzCj4gICAgICAgICB3cnJfbWVkaXVtX3F1
ZXVlcwo+ICAgICAgICAgd3JyX2xvd19xdWV1ZXMKPiBudm1lLXBjaSB3aWxsIHNldCBDQy5BTVM9
MDAxYiwgaWYgQ0FQLkFNU1sxN109MSBhbmQgd3JyX3h4eF9xdWV1ZXMKPiBsYXJnZXIgdGhhbiAw
LiBudm1lIGRyaXZlciB3aWxsIHNwbGl0IGhhcmR3YXJlIHF1ZXVlcyBiYXNlIG9uIHRoZQo+IHJl
YWQvcG9vbC93cnJfeHh4X3F1ZXVlcywgdGhlbiBzZXQgcHJvcGVyIHZhbHVlIGZvciBRdWV1ZSBQ
cmlvcml0eQo+IChRUFJJTykgaW4gRFdPUkQxMS4KPgo+IGZpbyB0ZXN0Ogo+Cj4gQ1BVOiAgICBJ
bnRlbChSKSBYZW9uKFIpIFBsYXRpbnVtIDgxNjAgQ1BVIEAgMi4xMEdIego+IE5WTUU6ICAgSW50
ZWwgU1NEUEUyS1gwMjBUOCBQNDUxMCAyVEIKPgo+IFtyb290QHRtcC0yMDE4MTItZDE4MDItODE4
Mzk2MTczIGxvd10jIG52bWUgc2hvdy1yZWdzIC9kZXYvbnZtZTBuMQo+IGNhcCAgICAgOiAyMDc4
MDMwZmZmCj4gdmVyc2lvbiA6IDEwMjAwCj4gaW50bXMgICA6IDAKPiBpbnRtYyAgIDogMAo+IGNj
ICAgICAgOiA0NjA4MDEKPiBjc3RzICAgIDogMQo+IG5zc3IgICAgOiAwCj4gYXFhICAgICA6IDFm
MDAxZgo+IGFzcSAgICAgOiA1ZjdjYzA4MDAwCj4gYWNxICAgICA6IDVmNWFjMjMwMDAKPiBjbWJs
b2MgIDogMAo+IGNtYnN6ICAgOiAwCj4KPiBSdW4gZmlvLTEsIGZpby0yLCBmaW8tMyBpbiBwYXJh
bGxlbCwKPgo+IEZvciBSUihyb3VuZCByb2JpbikgdGhlc2UgdGhyZWUgZmlvIG5lYXJseSBnZXQg
c2FtZSBpb3BzIG9yIGJwcywKPiBpZiB3ZSBzZXQgYmxraW8ud3JyIGZvciBkaWZmZXJlbnQgcHJp
b3JpdHksIHRoZSBXUlIgImhpZ2giIHdpbGwKPiBnZXQgbW9yZSBpb3BzL2JwcyB0aGFuICJtZWRp
dW0iIGFuZCAibG93Ii4KPgo+Cj4KPiBSUjoKPiBmaW8tMTogZWNobyAiMjU5OjAgbm9uZSIgPiAv
c3lzL2ZzL2Nncm91cC9ibGtpby9oaWdoL2Jsa2lvLndycgo+IGZpby0yOiBlY2hvICIyNTk6MCBu
b25lIiA+IC9zeXMvZnMvY2dyb3VwL2Jsa2lvL21lZGl1bS9ibGtpby53cnIKPiBmaW8tMzogZWNo
byAiMjU5OjAgbm9uZSIgPiAvc3lzL2ZzL2Nncm91cC9ibGtpby9sb3cvYmxraW8ud3JyCj4KPiBX
UlI6Cj4gZmlvLTE6IGVjaG8gIjI1OTowIGhpZ2giID4gL3N5cy9mcy9jZ3JvdXAvYmxraW8vaGln
aC9ibGtpby53cnIKPiBmaW8tMjogZWNobyAiMjU5OjAgbWVkaXVtIiA+IC9zeXMvZnMvY2dyb3Vw
L2Jsa2lvL21lZGl1bS9ibGtpby53cnIKPiBmaW8tMzogZWNobyAiMjU5OjAgbG93IiA+IC9zeXMv
ZnMvY2dyb3VwL2Jsa2lvL2xvdy9ibGtpby53cnIKPgo+IHJ3dGVzdD1yYW5kcmVhZAo+IGZpbyAt
LWJzPTRrIC0taW9lbmdpbmU9bGliYWlvIC0taW9kZXB0aD0zMiAtLWZpbGVuYW1lPS9kZXYvbnZt
ZTBuMSAtLWRpcmVjdD0xIC0tcnVudGltZT02MCAtLW51bWpvYnM9OCAtLXJ3PSRyd3Rlc3QgLS1u
YW1lPXRlc3QkMSAtLWdyb3VwX3JlcG9ydGluZwo+Cj4gUmFuZHJlYWQgNEsgICAgIFJSICAgICAg
ICAgICAgICBXUlIKPiAtLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tCj4gZmlvLTE6ICAgICAgICAgIDIyMCBrICAgICAgICAgICAzOTUgawo+IGZp
by0yOiAgICAgICAgICAyMjAgayAgICAgICAgICAgMTk3IGsKPiBmaW8tMzogICAgICAgICAgMjIw
IGsgICAgICAgICAgIDY2ICBrCj4KPiByd3Rlc3Q9cmFuZHdyaXRlCj4gZmlvIC0tYnM9NGsgLS1p
b2VuZ2luZT1saWJhaW8gLS1pb2RlcHRoPTMyIC0tZmlsZW5hbWU9L2Rldi9udm1lMG4xIC0tZGly
ZWN0PTEgLS1ydW50aW1lPTYwIC0tbnVtam9icz04IC0tcnc9JHJ3dGVzdCAtLW5hbWU9dGVzdCQx
IC0tZ3JvdXBfcmVwb3J0aW5nCj4KPiBSYW5kd3JpdGUgNEsgICAgUlIgICAgICAgICAgICAgIFdS
Ugo+IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0KPiBmaW8tMTogICAgICAgICAgMTUwIGsgICAgICAgICAgIDI5NSBrCj4gZmlvLTI6ICAgICAg
ICAgIDE1MCBrICAgICAgICAgICAxNDggawo+IGZpby0zOiAgICAgICAgICAxNTAgayAgICAgICAg
ICAgNTEgIGsKPgo+IHJ3dGVzdD1yZWFkCj4gZmlvIC0tYnM9NTEyayAtLWlvZW5naW5lPWxpYmFp
byAtLWlvZGVwdGg9MzIgLS1maWxlbmFtZT0vZGV2L252bWUwbjEgLS1kaXJlY3Q9MSAtLXJ1bnRp
bWU9NjAgLS1udW1qb2JzPTggLS1ydz0kcnd0ZXN0IC0tbmFtZT10ZXN0JDEgLS1ncm91cF9yZXBv
cnRpbmcKPgo+IHJlYWQgNTEySyAgICAgICBSUiAgICAgICAgICAgICAgV1JSCj4gLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQo+IGZpby0xOiAg
ICAgICAgICA5NjMgTWlCL3MgICAgICAgMTcwNCBNaUIvcwo+IGZpby0yOiAgICAgICAgICA5NTAg
TWlCL3MgICAgICAgODUwICBNaUIvcwo+IGZpby0zOiAgICAgICAgICA5NjEgTWlCL3MgICAgICAg
Mjg0ICBNaUIvcwo+Cj4gcnd0ZXN0PXJlYWQKPiBmaW8gLS1icz01MTJrIC0taW9lbmdpbmU9bGli
YWlvIC0taW9kZXB0aD0zMiAtLWZpbGVuYW1lPS9kZXYvbnZtZTBuMSAtLWRpcmVjdD0xIC0tcnVu
dGltZT02MCAtLW51bWpvYnM9OCAtLXJ3PSRyd3Rlc3QgLS1uYW1lPXRlc3QkMSAtLWdyb3VwX3Jl
cG9ydGluZwo+Cj4gd3JpdGUgNTEySyAgICAgIFJSICAgICAgICAgICAgICBXUlIKPiAtLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gZmlvLTE6
ICAgICAgICAgIDg5MCBNaUIvcyAgICAgICAxMTUwIE1pQi9zCj4gZmlvLTI6ICAgICAgICAgIDg3
MSBNaUIvcyAgICAgICA1OTUgIE1pQi9zCj4gZmlvLTM6ICAgICAgICAgIDg5NSBNaUIvcyAgICAg
ICAxODggIE1pQi9zCj4KPgo+IENoYW5nZXMgc2luY2UgVjI6Cj4gICogZHJvcCBudWxsX2JsayBy
ZWxhdGVkIHBhdGNoLCB3aGljaCBhZGRzIGEgbmV3IE5VTExfUV9JUlFfV1JSIHRvCj4gICAgICAg
ICBzaW11bHRlIG52bWUgd3JyIHBvbGljeQo+ICAqIGFkZCB1cmdlbnQgdGFnc2V0IG1hcCBmb3Ig
bnZtZSBkcml2ZXIKPiAgKiBmaXggc29tZSBwcm9ibGVtIGluIFYyLCBzdWdnZXN0ZWQgYnkgTWlu
d29vCj4KPiBDaGFuZ2VzIHNpbmNlIFYxOgo+ICAqIHJlb3JkZXIgSENUWF9UWVBFX1BPTEwgdG8g
dGhlIGxhc3Qgb25lIHRvIGFkb3B0IG52bWUgZHJpdmVyIGVhc2lseS4KPiAgKiBhZGQgc3VwcG9y
dCBXUlIoV2VpZ2h0ZWQgUm91bmQgUm9iaW4pIGZvciBudm1lIGRyaXZlcgo+Cj4gV2VpcGluZyBa
aGFuZyAoNSk6Cj4gICBibG9jazogYWRkIHdlaWdodGVkIHJvdW5kIHJvYmluIGZvciBibGtjZ3Jv
dXAKPiAgIG52bWU6IGFkZCBnZXRfYW1zIGZvciBudm1lX2N0cmxfb3BzCj4gICBudm1lLXBjaTog
cmVuYW1lIG1vZHVsZSBwYXJhbWV0ZXIgd3JpdGVfcXVldWVzIHRvIHJlYWRfcXVldWVzCj4gICBn
ZW5pcnEvYWZmaW5pdHk6IGFsbG93IGRyaXZlcidzIGRpc2NvbnRpZ291cyBhZmZpbml0eSBzZXQK
PiAgIG52bWU6IGFkZCBzdXBwb3J0IHdlaWdodGVkIHJvdW5kIHJvYmluIHF1ZXVlCj4KPiAgYmxv
Y2svYmxrLWNncm91cC5jICAgICAgICAgfCAgODkgKysrKysrKysrKysrKysrKwo+ICBibG9jay9i
bGstbXEtZGVidWdmcy5jICAgICB8ICAgNCArCj4gIGJsb2NrL2Jsay1tcS1zY2hlZC5jICAgICAg
IHwgICA2ICstCj4gIGJsb2NrL2Jsay1tcS10YWcuYyAgICAgICAgIHwgICA0ICstCj4gIGJsb2Nr
L2Jsay1tcS10YWcuaCAgICAgICAgIHwgICAyICstCj4gIGJsb2NrL2Jsay1tcS5jICAgICAgICAg
ICAgIHwgIDEyICsrLQo+ICBibG9jay9ibGstbXEuaCAgICAgICAgICAgICB8ICAyMCArKystCj4g
IGJsb2NrL2Jsay5oICAgICAgICAgICAgICAgIHwgICAyICstCj4gIGRyaXZlcnMvbnZtZS9ob3N0
L2NvcmUuYyAgIHwgICA5ICstCj4gIGRyaXZlcnMvbnZtZS9ob3N0L252bWUuaCAgIHwgICAyICsK
PiAgZHJpdmVycy9udm1lL2hvc3QvcGNpLmMgICAgfCAyNDYgKysrKysrKysrKysrKysrKysrKysr
KysrKysrKysrKysrKysrLS0tLS0tLS0tCj4gIGluY2x1ZGUvbGludXgvYmxrLWNncm91cC5oIHwg
ICAyICsKPiAgaW5jbHVkZS9saW51eC9ibGstbXEuaCAgICAgfCAgMTQgKysrCj4gIGluY2x1ZGUv
bGludXgvaW50ZXJydXB0LmggIHwgICAyICstCj4gIGluY2x1ZGUvbGludXgvbnZtZS5oICAgICAg
IHwgICAzICsKPiAga2VybmVsL2lycS9hZmZpbml0eS5jICAgICAgfCAgIDQgKwo+ICAxNiBmaWxl
cyBjaGFuZ2VkLCAzNjIgaW5zZXJ0aW9ucygrKSwgNTkgZGVsZXRpb25zKC0pCj4KCkhpIEplbnMs
CgpXb3VsZCB5b3UgZ2l2ZSBzb21lIGNvbW1lbnRzIGZvciB0aGlzIHNlcmllcy4KClRoYW5rcwoK
Cj4gLS0KPiAyLjE0LjEKPgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRl
YWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
bnZtZQo=
