Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 969575529B
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 16:55:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bl0WJbafXiK94COKazquUzeIcANPbvUkHeE1o2ZHJp4=; b=HqhgglD9+q2AnV
	0uWfczT6Tz6zunikyeytSmWtqCn1iCRsfxoB25bGf3jMKrTxsJoZCtjJHyxdn32q7kpjkJQcKdVoB
	AawR3eAZC+XUKKzXhDI0aY2Ar9J2GiIkO+04WHUF7N3vu2FH9Uz6hUsxnL1yCzkG12y/4EbHf03Jw
	VD58lruwiauyzCsgPyomFZdYHm/++WffxJRcs5SUx0xoImQrMNEFoR6WjP1w0oHKDFAK9VTCv3v76
	vK8nWzqupv0fbO/kx0ynwHtmM+izfqzIQSAzvRY3hImr6GagYAO/aB+6TCno5yxQGqUEjhgknIEjp
	Xl/5XqJUEzi18/HaA05A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfmr3-0008OZ-0e; Tue, 25 Jun 2019 14:55:29 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfmqv-0008O0-Fq
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 14:55:22 +0000
Received: by mail-wr1-x443.google.com with SMTP id p11so18234774wre.7
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 07:55:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=nQl+kry098BAN4ziHwHdwhs+dskL6lReHJUDAXsmPwM=;
 b=d8kFT8Uefh9+6U+HQxiWM6eBbwSmgwiJDtX31TzyClbisj7GCdOkXoDPDoUEkghrJV
 gpG+dPSFaMwHFAVoh+lsnYJutX2SijP5xJs4s/tNgJ6IWEg/wFdyhLBYVzpR8LtoNdiu
 mjnv4MYLek7bg1cdUoGvGDrhMY+Yn6YpbA/HyZjSPA7pJT6rBo9FC7XhTvvcq/8N9rnt
 0/PP+PAVc/QicS8Vet7YQBzhf7ikc9+MoRqVoiIcnY8zJCnVbKnkoEl9k6UpuoAhFWDW
 UletLRN3Omc8qy9UTXp0WTmUdy3XNXG4WHVpJvwsU+KeA/3OsMb4l2J69GRAjEIta3HG
 qbgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=nQl+kry098BAN4ziHwHdwhs+dskL6lReHJUDAXsmPwM=;
 b=bpVeZJXuaM3O7RU9OJJyX6CzaliYZRZ2/Az+pX5SyYAU7Rk8NyzaocraYCufBK6zbY
 VirD/dtgOut51dYe7Cdl73ifHAJvfjb5xzstjEFG94GTRumk4FNGJMs+WWbESdP2oYE5
 6vzM7C2+SeVAacuaWhbATaC+dRXqAIFNIrex0dN8HTBuUpSOkNtdtskYhuf68Fm4X3NC
 0t1J6dIjTkNha4gbNl0SNGWPL6IyEvzlZOz4MaCcU9eq0S9rOPCwAxZ6DWoqcN0q9fDa
 Yql3RxFEu6rmxG/merYbA97gmHCxK6ZVQDHglV9QnozxjINNAy3a3OcVAWzDTKfzg+3R
 i9rQ==
X-Gm-Message-State: APjAAAXFkn9mFcWc7GkgZD1NVDhG3Nb9PkBJ/mHoQFABr7xG+W+EaRqI
 pKYq8vUWEMTvXrqFTfbGykGFgv5mKGsRvWkXmLo=
X-Google-Smtp-Source: APXvYqxrlHSWu1Sck5rxhiHDWTpobNGP630f6OXNYuENXzSYApE9EChSGqtoEftG3W1tObIPS5KaGNsMVyxeVqmItcI=
X-Received: by 2002:adf:ec4c:: with SMTP id w12mr38064132wrn.160.1561474519785; 
 Tue, 25 Jun 2019 07:55:19 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <1ead341c6d603cf138aed62e31091f257cb19981.1561385989.git.zhangweiping@didiglobal.com>
 <alpine.DEB.2.21.1906241740320.32342@nanos.tec.linutronix.de>
 <20190625021411.GD23777@ming.t460p>
 <alpine.DEB.2.21.1906250811150.32342@nanos.tec.linutronix.de>
In-Reply-To: <alpine.DEB.2.21.1906250811150.32342@nanos.tec.linutronix.de>
From: Weiping Zhang <zwp10758@gmail.com>
Date: Tue, 25 Jun 2019 22:55:10 +0800
Message-ID: <CAA70yB7xNf14-Ex1zq3mbBm_EEtLspmDDYBjOXibrMZS8r7ODQ@mail.gmail.com>
Subject: Re: [PATCH v3 4/5] genirq/affinity: allow driver's discontigous
 affinity set
To: Thomas Gleixner <tglx@linutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_075521_557798_BBC545F9 
X-CRM114-Status: GOOD (  17.42  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (zwp10758[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (zwp10758[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Bart Van Assche <bvanassche@acm.org>,
 Weiping Zhang <zhangweiping@didiglobal.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, keith.busch@intel.com,
 Minwoo Im <minwoo.im.dev@gmail.com>, Tejun Heo <tj@kernel.org>,
 cgroups@vger.kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

VGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0cm9uaXguZGU+IOS6jjIwMTnlubQ25pyIMjXml6Xl
kajkuowg5LiL5Y2IMzozNuWGmemBk++8mgo+Cj4gTUluZywKPgo+IE9uIFR1ZSwgMjUgSnVuIDIw
MTksIE1pbmcgTGVpIHdyb3RlOgo+ID4gT24gTW9uLCBKdW4gMjQsIDIwMTkgYXQgMDU6NDI6MzlQ
TSArMDIwMCwgVGhvbWFzIEdsZWl4bmVyIHdyb3RlOgo+ID4gPiBPbiBNb24sIDI0IEp1biAyMDE5
LCBXZWlwaW5nIFpoYW5nIHdyb3RlOgo+ID4gPgo+ID4gPiA+IFRoZSBkcml2ZXIgbWF5IGltcGxl
bWVudCBtdWx0aXBsZSBhZmZpbml0eSBzZXQsIGFuZCBzb21lIG9mCj4gPiA+ID4gYXJlIGVtcHR5
LCBmb3IgdGhpcyBjYXNlIHdlIGp1c3Qgc2tpcCB0aGVtLgo+ID4gPgo+ID4gPiBXaHk/IFdoYXQn
cyB0aGUgcG9pbnQgb2YgY3JlYXRpbmcgZW1wdHkgc2V0cz8gSnVzdCBiZWNhdXNlIGlzIG5vdCBh
IHJlYWwKPiA+ID4gZ29vZCBqdXN0aWZpY2F0aW9uLgo+ID4KPiA+IFBhdGNoIDUgd2lsbCBhZGQg
NCBuZXcgc2V0cyBmb3Igc3VwcG9ydGluZyBOVk1lJ3Mgd2VpZ2h0ZWQgcm91bmQgcm9iaW4KPiA+
IGFyYml0cmF0aW9uLiBJdCBjYW4gYmUgYSBoZWFkYWNoZSB0byBtYW5hZ2Ugc28gbWFueSBpcnEg
c2V0cyhub3cgdGhlIHRvdGFsCj4gPiBzZXRzIGNhbiBiZWNvbWUgNikgZHluYW1pY2FsbHkgc2lu
Y2Ugc2l6ZSBvZiBhbnlvbmUgaW4gdGhlIG5ldyA0IHNldHMgY2FuCj4gPiBiZSB6ZXJvLCBzbyBl
YWNoIHBhcnRpY3VsYXIgc2V0IGlzIGFzc2lnbmVkIG9uZSBzdGF0aWMgaW5kZXggZm9yIGF2b2lk
aW5nCj4gPiB0aGUgbWFuYWdlbWVudCB0cm91YmxlLCB0aGVuIGVtcHR5IHNldCB3aWxsIGJlIHNl
ZW4gYnkKPiA+IGlycV9jcmVhdGVfYWZmaW5pdHlfbWFza3MoKS4KPiA+Cj4gPiBTbyBsb29rcyBz
a2lwcGluZyB0aGUgZW1wdHkgc2V0IG1ha2VzIHNlbnNlIGJlY2F1c2UgdGhlIEFQSSB3aWxsIGJl
Y29tZQo+ID4gZWFzaWVyIHRvIHVzZSB0aGFuIGJlZm9yZS4KPgpIZWxsbyBNaW5nLApUaGFua3Mg
eW91ciBkZXRhaWwgZXhwbGFuYXRpb24uCgo+IFRoYXQgbWFrZXMgc2Vuc2UsIGJ1dCBhdCBsZWFz
dCBzb21lIG9mIHRoYXQgaW5mb3JtYXRpb24gd2FudHMgdG8gYmUgaW4gdGhlCj4gY2hhbmdlIGxv
ZyBhbmQgbm90IHNvbWUgdW5pbmZvcm1hdGl2ZSBkZXNjcmlwdGlvbiBvZiB3aGF0IHRoZSBwYXRj
aCBkb2VzLgo+Cj4gSSB3YXMgbm90IENjJ2VkIG9uIHRoZSByZXN0IG9mIHRoZSBwYXRjaGVzIHNv
IEkgaGFkIGV4YWN0bHkgemVybyBjb250ZXh0Lgo+CkhlbGxvIFRob21hcywKCkkgYW0gc29ycnkg
SSBkaWRuJ3QgY2MgeW91IHRoZSBmdWxsIHBhdGNoc2V0LCBJIHdpbGwgYWRkIG1vcmUgZGV0YWls
CmRlc2NyaXB0aW9uIGluCmNvbW1pdCBtZXNzYWdlIGF0IFY0LgoKPiBUaGFua3MsCj4KPiAgICAg
ICAgIHRnbHgKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
