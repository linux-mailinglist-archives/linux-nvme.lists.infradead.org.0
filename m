Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF958BD62
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 17:40:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=02GB3gtRWxBtXtFuQdBZ22Lde+1SwFZcrcczD3v/YH8=; b=VE3vPMF3arzlzd
	46VtzZJL/jJYh3iY5/alh87A35WyfWTrkk3wyL0Df2zLFPTdm3orWuc9I84qwOmWaZbnAgJT99mBP
	BRgBgfYFsv/RbwaSIsaYaFvNgnTnTvbaP9eeCf9+2YSJFoFa0to4Yg12zXZ9XD581DD3MB9sB+LJF
	LsCcCPR87IDTpS4uMYMwS/RAIkCzOu5AAMu7lwOs/3ANuxevDrBRmZoQbRk5R7RhJ64Cuu+5asfja
	GANalZqE/cDb4v/Ao9TOF6YKSNQFLgAGXilgjR3/HabRZlpfKnp2iidSe8Zd3HXgXejjpTVH/nrVR
	Rs7eTgpjeDbv4ZfZNaMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxYuQ-0002a2-UG; Tue, 13 Aug 2019 15:40:27 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxYuG-0002Wz-8L
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 15:40:17 +0000
Received: by mail-pl1-x644.google.com with SMTP id a93so49381817pla.7
 for <linux-nvme@lists.infradead.org>; Tue, 13 Aug 2019 08:40:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=IFpHEZmO8P8ibZrjmbskVYzECLFyHY2hgPRhajuorfs=;
 b=sGF94uH4H9+S8YPc2Ukpi/1ZXz9Nz5ogn48iUe10002eaQGeW9R76QEXvloVxsJ8O5
 HHftRakxcyAtdpvm67SMNg/n8Ms24pXF0JFkGxKiA9TSjLsTxHN4KiK1qDDaENtFYpBt
 pmPZipPh5fmh3J6IRmnn807Dr6BBZ6KL4t3OwWfjNFfSGg/FtMNgrTbl42hETtN6zrxc
 XR3dq0hBHLWzqTvDFUd7bvaxJ20xYbY6J6UGBaoyO/YfbNb7xjWwF/yuUSlnsoywXPkN
 fTJ2EQilg187cc0fxhxA7//cI8yhQ83tgZtcbR/xaZDvN63r5FpSi9ydJ1D3w7zAenm+
 iedA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=IFpHEZmO8P8ibZrjmbskVYzECLFyHY2hgPRhajuorfs=;
 b=Ur4izfgUh+/Z9QJBQHqpyX7dGziaKQ79wia2Yy5mK//TMVmythgdkqsOjjwE92xyFK
 ka+Fh4hyOZ/37SlBJ0oRT2VE4dsORQefk0hjrcbPRQNM1xKHPL94N4OXe6v78ALWEqzo
 df3knj+ewmXvjYGC3K+2phAocDtH6+6bSTatL4/CmrNdHVH5qOf7maVLFtxKxhIFHUXz
 rNdeJHh/twzS6xv3a85V/8gJNxQO9SQ/VV7BMveX65AgCMaFJjEGWX9edHX7/vdECjLI
 Q1eWqjUaSsYBApYiN/8581oM5gBGbJ/16FuYA1WInj4e+9eIFrUVzmywaGD3XZayr7l1
 I7sg==
X-Gm-Message-State: APjAAAUgXaM2fq7OFe4zGnW52XGTaaPsaSfV9rTT5QuxycH/eytXLnLO
 oJLlS0qRAZaowguUH6SfI79AfaqzCf5x5Jaxr1I=
X-Google-Smtp-Source: APXvYqyi5GZcial+3zjrwPbvHTkx2yuaQQdgUEbv9P1uEG6WC3VBx9CpmJ5hPZttqtau7i2XXxydh7GEOMuGWFo/Izc=
X-Received: by 2002:a17:902:44f:: with SMTP id
 73mr38874274ple.192.1565710815744; 
 Tue, 13 Aug 2019 08:40:15 -0700 (PDT)
MIME-Version: 1.0
References: <1565459703-30513-1-git-send-email-akinobu.mita@gmail.com>
 <1565459703-30513-5-git-send-email-akinobu.mita@gmail.com>
 <20190813103313.GC26337@amd>
In-Reply-To: <20190813103313.GC26337@amd>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Wed, 14 Aug 2019 00:40:04 +0900
Message-ID: <CAC5umyhpVdMwrm_U7RGq=q4F+mrgGJC01rLvjs4HbF5_C-kXQw@mail.gmail.com>
Subject: Re: [PATCH v3 4/6] block: introduce LED block device activity trigger
To: Pavel Machek <pavel@ucw.cz>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_084016_345355_BC9FE874 
X-CRM114-Status: UNSURE (   9.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Hannes Reinecke <hare@suse.com>,
 "Martin K. Petersen" <martin.petersen@oracle.com>, linux-scsi@vger.kernel.org,
 "James E.J. Bottomley" <jejb@linux.ibm.com>,
 Frank Steiner <fsteiner-mail1@bio.ifi.lmu.de>, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, Jacek Anaszewski <jacek.anaszewski@gmail.com>,
 linux-leds@vger.kernel.org, Dan Murphy <dmurphy@ti.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDjmnIgxM+aXpSjngaspIDE5OjMzIFBhdmVsIE1hY2hlayA8cGF2ZWxAdWN3LmN6PjoK
Pgo+IE9uIFN1biAyMDE5LTA4LTExIDAyOjU1OjAxLCBBa2lub2J1IE1pdGEgd3JvdGU6Cj4gPiBU
aGlzIGFsbG93cyBMRURzIHRvIGJlIGNvbnRyb2xsZWQgYnkgYmxvY2sgZGV2aWNlIGFjdGl2aXR5
Lgo+ID4KPiA+IFdlIGFscmVhZHkgaGF2ZSBsZWR0cmlnLWRpc2sgKExFRCBkaXNrIGFjdGl2aXR5
IHRyaWdnZXIpLCBidXQgdGhlIGxvd2VyCj4gPiBsZXZlbCBkaXNrIGRyaXZlcnMgbmVlZCB0byB1
dGlsaXplIGxlZHRyaWdfZGlza19hY3Rpdml0eSgpIHRvIG1ha2UgdGhlCj4gPiBMRUQgYmxpbmsu
Cj4gPgo+ID4gVGhlIExFRCBibG9jayBkZXZpY2UgdHJpZ2dlciBkb2Vzbid0IHJlcXVpcmUgdGhl
IGxvd2VyIGxldmVsIGRyaXZlcnMgdG8KPiA+IGhhdmUgYW55IGluc3RydW1lbnRhdGlvbi4gVGhl
IGFjdGl2aXR5IGlzIGNvbGxlY3RlZCBieSBwb2xsaW5nIHRoZSBkaXNrCj4gPiBzdGF0cy4KPiA+
Cj4gPiBFeGFtcGxlOgo+ID4KPiA+IGVjaG8gYmxvY2stbnZtZTBuMSA+IC9zeXMvY2xhc3MvbGVk
cy9kaXkvdHJpZ2dlcgo+Cj4gU29tZSBtYWNoaW5lcyBoYXZlIGxvdHMgb2YgYmxvY2sgZGV2aWNl
cy4uLiBTaG91bGQgd2UgcGVyaGFwcyBoYXZlCj4gImVjaG8gYmxvY2sgPiB0cmlnZ2VyOyBlY2hv
IG52bWUwbjEgPiBkZXZpY2UiPwoKSSBvcmlnaW5hbGx5IGNvbnNpZGVyZWQgZG9pbmcgc28sIGp1
c3QgbGlrZSBsZWR0cmlnLW5ldGRldi4gSG93ZXZlciwgaXQKdHVybmVkIG91dCB0aGF0IHdlIG5l
ZWRlZCBhbiBhZGRpdGlvbmFsIG1lY2hhbmlzbSB0byBtZWRpYXRlIGJldHdlZW4KdGhlIGxlZCB0
cmlnZ2VyIHJlZ2lzdHJhdGlvbiBhbmQgdGhlIGJsb2NrIGRldmljZSB1bnJlZ2lzdHJhdGlvbi4K
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52
bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlz
dHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
