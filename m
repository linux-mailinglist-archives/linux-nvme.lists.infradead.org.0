Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FC237D2E
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 21:24:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f8yhCnJEqkVD/d6mBg+UsrwSNumgZOa30FitlbOGAqE=; b=hGuGRAh47UDROF
	p5ZKtGeqDwhnYXU79K7mD91J5YTldHK/5KhOTqRoGmjAhd0CkDB5R08LMqqf97qdFsDoJCjE0WCJp
	tHSi+zN/qa3W+CnZ9FL1ge7FkUXwh0ZwMn0NNU2T0hT01XwhktQ2Pfkh5fuiOG6n/SLND9VFm3X+X
	RJ8bvcVYipbTb9Soss2fkW0fEcJ0R2/kDgWRI/aMRtznoEYEvoAA+x9RqyUvahp0PW1nhE0+zVN4J
	Qk/52eMxwFUMCRFCQVSfwdcmL2YZjwSuSJwfeA6+wO9klJw7FTEKVjO2wf+mza1yOecBnBpgRniK0
	cZN6yrlJcUPAPkFXRTow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYxzx-0001cH-GB; Thu, 06 Jun 2019 19:24:29 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYxzs-0001bw-9Y
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 19:24:25 +0000
Received: by mail-pg1-x541.google.com with SMTP id n2so1882056pgp.11
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 12:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=uYy6TV7xZsgRFFioRcwG6qxmO1G9R4lSnSQJXJTDDzw=;
 b=ukMYivPQsxhLS9GR0hfCQCpM3nP59V16K0bFTWw5bKS95lllWkePgK/dM54WBhqh86
 aXjwD0AIcRNhCTOcCPYDkckYRM26HqweEUKMUdzB8W886XefLZmys7oc1HqLxwzXABSr
 ayzSreBbllRhJ4iuIvsXv5uwyOPRnX+Nfij5TzTM6vDfGfq5Wwq7k5/ekbxoZwi8KLaS
 oec/p13TqsmbBfWd7koLzREppQ722zSkptskUW6TtrjyPhNpXrd86rbGYQyD0T+hsVc1
 JtPG6VLrFrvEYfOmkLnBRgZOXBSg55h9sGy3sL32snb1uAzgHSwSJD8bOpjBlLhgWRQQ
 38pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=uYy6TV7xZsgRFFioRcwG6qxmO1G9R4lSnSQJXJTDDzw=;
 b=MsrfLYptovpiu+wP63lqBtwYBraScWWGMT9B4misR+bUzBfgrPevvRS7IkZ5SbZuNp
 IlIBkRHXutlInxlYjSLYhHYHRyaFOIWHALg38R4M5rjxCrUy+vOwG+ZnnXOt+PS+h0t/
 IG39ynJVp3JrsnHLll9XR/ldi+7n38BDqZ0fgn6ZT9dKoWWPEFQpsF/KjSQkvqOBliwy
 tdroBSOpaxIIDr19FOTe0fPYmvRGefA+eDUL7OPG1z/sXZFdzCAK4Mzt6sCUATJizxAa
 NOKmgl5AdtrAuxXsy+w9e+Qr3DW6VTs510hxPNLNxRooFdzZTRWhtP5UDjSH2UpINQkT
 atiQ==
X-Gm-Message-State: APjAAAU9Ay8pB0PY1dZh2i3tZcE9F8u/9Bhj7nWz1R0NMCl5jJ/gB7Lj
 IGcUumFKYbsxvQM/wfj2VGr3PYMC1So=
X-Google-Smtp-Source: APXvYqzmg4VFVNX0+VMI4yenYmPlKSwZt99z7Zs5UxqDhCBq5mrDYQ7KAvJEiHpTKncCCNpk750KNQ==
X-Received: by 2002:a62:63c6:: with SMTP id x189mr42595199pfb.31.1559849063296; 
 Thu, 06 Jun 2019 12:24:23 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id k8sm3190182pfi.168.2019.06.06.12.24.21
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 06 Jun 2019 12:24:22 -0700 (PDT)
Date: Fri, 7 Jun 2019 04:24:20 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: Re: nvme: build failure report for nvme_sync_queues()
Message-ID: <20190606192420.GA17774@minwooim-desktop>
References: <20190606184620.GA1676@minwooim-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190606184620.GA1676@minwooim-desktop>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_122424_329977_C03756DD 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <kbusch@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gMTktMDYtMDcgMDM6NDY6MjAsIE1pbndvbyBJbSB3cm90ZToKPiBIaSBhbGwsCj4gCj4gSSdk
IGhhdmUgdG8gcmVwb3J0IGEgYnVpbGQgZmFpbHVyZSBkdWUgdG8gdGhlIGZvbGxvd2luZyBjb21t
aXQ6Cj4gQ29tbWl0IGU3YWU2ZDFlN2M1ZiAoIm52bWUtcGNpOiBVc2UgaG9zdCBtYW5hZ2VkIHBv
d2VyIHN0YXRlIGZvciBzdXNwZW5kIikKPiAKPiBNZXNzYWdlOgo+IGRyaXZlcnMvbnZtZS9ob3N0
L3BjaS5jOjI4NzY6MjogZXJyb3I6IGltcGxpY2l0IGRlY2xhcmF0aW9uIG9mIGZ1bmN0aW9uIOKA
mG52bWVfc3luY19xdWV1ZXPigJk7IGRpZCB5b3UgbWVhbiDigJhudm1lX3N0b3BfcXVldWVz4oCZ
PyBbLVdlcnJvcj1pbXBsaWNpdC1mdW5jdGlvbi1kZWNsYXJhdGlvbl0KPiAgIG52bWVfc3luY19x
dWV1ZXMoY3RybCk7Cj4gICAgIF5+fn5+fn5+fn5+fn5+fn4KPiAKPiBJcyB0aGUgZm9sbG93aW5n
IHBhdGNoIGFwcGxpZWQgdG8gdGhpcyBicmFuY2ggPwo+ICAgW1BBVENIdjQgMS80XSBudm1lOiBT
eW5jIHJlcXVlc3QgcXVldWVzIG9uIHJlc2V0Ogo+ICAgaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvcGlwZXJtYWlsL2xpbnV4LW52bWUvMjAxOC1KdWx5LzAxOTE2Ni5odG1sCj4gCj4gSWYgSSBt
aXNzIHNvbWV0aGluZyBoZXJlLCBwbGVhc2UgbGV0IG13IGtub3cuCj4gCj4gVGhhbmtzLAoKU29y
cnkgSSBmb3Jnb3QgdG8gbWVudGlvbiB0aGUgYnJhbmNoIG5hbWU6IG52bWUtNS4zCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxp
bmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
