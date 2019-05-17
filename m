Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB34821A3E
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 17:02:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g2XYcl98spKg4n25RcYJ6yS1vOr67t//6feR4f84vjk=; b=HvP3tUHcarelCU
	gKjKlBNULFGeK18sR9ApKohaiMfMWNlEXeXRlu+qQwo6m2q2o541WjOVL6XV73/qJJ0su1C8KVYEC
	l31HRR0KJMOkn6mBLyK9zABp5mEvAWLfsrCbYhgf+lhnohbN3QN9+nMzExpfMulVl2I9fONGZZC5k
	sdigncl7b7tmR2trSPfh11neKcqAx1bcMqv7EyzahhV1artcoGnI0Dt4txk+6NsGEJT+5BBgDfxxk
	OYexT+OOLvw8737jbQW83dw1jWPPWUCTafwrBX1eXxMMLdHdTlMZxUwZQ3DOFfEfU654kGAKtOsFF
	QlXNTkWA8eEKdiptH/Hg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hReNI-0004Dy-8t; Fri, 17 May 2019 15:02:20 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hReN8-00045P-47
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 15:02:12 +0000
Received: by mail-pl1-x642.google.com with SMTP id r18so3461266pls.13
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 08:02:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=s7B7wWE3RrzKwEWxic7OC8bzl//pottNx24ZlL4GUWw=;
 b=Do2gPjc2pR68y+NaLBOo2f6vzFZO9xcifvUgBNtbnRxe6SSUxV0tm7CFZJqcPduowr
 WVHVI8sX53lUeAzaIf1viLAIS9G5m8xJbbi/INh5XW1Qpo+/TNDh2ZGB+ON0b89dtOBE
 TxNqQlECdTOZoVp/ty63KqYAf1HCFHblskqz6RmSqPo6R5+HRX1t2djXqL6gGNpsCtRM
 Ujd3zLw0M5qSJDRiSmVPZ4HPPgVYcMBflrRw88h7d8I2lqva1WQIxH4sHW6Mcd5LfL04
 JA08QR4Z/paAovFslD5YndhcBu+HX+pJ2D/2Jj5sEoSOLgrXXbjrTVhkeBYPtjpCdfWj
 xNlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=s7B7wWE3RrzKwEWxic7OC8bzl//pottNx24ZlL4GUWw=;
 b=GkwFR946sHJB+XpaPmgMbOFDhZiAvobTrg9niD74iR5oMTcDZSsgB07xsMxAif0GKc
 groYuZ1hxK+te6k6+K+8Nko5sc1AUH7U1Dml8g6hjqp19yPLSAli6vubxHxKVgkHn38R
 Q+rdEPVUKZct7fpzaFtPMO7b/LKhBaYtjZhPDsXcFFej8N0KwZlgjQ8f22MMPepIIUiV
 yVvj+jdEqnTdC4pzjMUGRS8wbaoQ2/Wse2yJXk1r9YCQhLG+dmjFeAIdAGyQ2hcHK3A6
 CLgMukX8m57+h4UZm4pwkL7S42i/N9b89DXswWPszir8mED1BmIl06gjNHiEhTLVR0fz
 RLHg==
X-Gm-Message-State: APjAAAXn6kwstqHO/SRwgvYcY8oQruwCNDLHkwi/6KXKjfE4gXI7FYKh
 V/2RPujEvkMZwhAGEft7RL+gAYqZSnt6Yu6O52E=
X-Google-Smtp-Source: APXvYqzvZjIYhpk+hS1KThgi15JOpBB8AKw1u6tMVoqxNqc+vxfn1E+pCdtKTjkoK1SiqdPQ1Zcowvva9sLKf1j76Ow=
X-Received: by 2002:a17:902:6a83:: with SMTP id
 n3mr58027713plk.109.1558105328823; 
 Fri, 17 May 2019 08:02:08 -0700 (PDT)
MIME-Version: 1.0
References: <1557933437-4693-1-git-send-email-akinobu.mita@gmail.com>
 <1557933437-4693-2-git-send-email-akinobu.mita@gmail.com>
 <2bf1e2cf-b922-d947-c939-375aba75994d@intel.com>
In-Reply-To: <2bf1e2cf-b922-d947-c939-375aba75994d@intel.com>
From: Akinobu Mita <akinobu.mita@gmail.com>
Date: Sat, 18 May 2019 00:01:57 +0900
Message-ID: <CAC5umygRTpq3GktaMKBdC8+-ghkJKCzFME+rm+V6vasrOAyOPw@mail.gmail.com>
Subject: Re: [PATCH 1/2] nvme: add thermal zone infrastructure
To: "Heitke, Kenneth" <kenneth.heitke@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_080210_404673_1A37D680 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

MjAxOeW5tDXmnIgxN+aXpSjph5EpIDY6MjIgSGVpdGtlLCBLZW5uZXRoIDxrZW5uZXRoLmhlaXRr
ZUBpbnRlbC5jb20+Ogo+Cj4KPgo+IE9uIDUvMTUvMjAxOSA5OjE3IEFNLCBBa2lub2J1IE1pdGEg
d3JvdGU6Cj4gPiBUaGUgTlZNZSBjb250cm9sbGVyIHJlcG9ydHMgdXAgdG8gbmluZSB0ZW1wZXJh
dHVyZSB2YWx1ZXMgaW4gdGhlIFNNQVJUIC8KPiA+IEhlYWx0aCBsb2cgcGFnZSAodGhlIGNvbXBv
c2l0ZSB0ZW1wZXJhdHVyZSBhbmQgdGVtcGVyYXR1cmUgc2Vuc29yIDEgdGhyb3VnaAo+ID4gdGVt
cGVyYXR1cmUgc2Vuc29yIDgpLgo+ID4gVGhlIHRlbXBlcmF0dXJlIHRocmVzaG9sZCBmZWF0dXJl
IChGZWF0dXJlIElkZW50aWZpZXIgMDRoKSBjb25maWd1cmVzIHRoZQo+ID4gYXN5bmNocm9ub3Vz
IGV2ZW50IHJlcXVlc3QgY29tbWFuZCB0byBjb21wbGV0ZSB3aGVuIHRoZSB0ZW1wZXJhdHVyZSBp
cwo+ID4gY3Jvc3NlZCBpdHMgY29ycmVzcG9pbmRpbmcgdGVtcGVyYXR1cmUgdGhyZXNob2xkLgo+
Cj4gcy9jb3JyZXNwb2luZGluZy9jb3JyZXNwb25kaW5nLwoKT0suCgo+ID4gKwo+ID4gK3N0YXRp
YyB2b2lkIG52bWVfdGhlcm1hbF9pbml0KHN0cnVjdCBudm1lX2N0cmwgKmN0cmwpCj4gPiArewo+
ID4gKyAgICAgSU5JVF9XT1JLKCZjdHJsLT50aGVybWFsX3dvcmssIG52bWVfdGhlcm1hbF93b3Jr
KTsKPiA+ICt9Cj4KPiBEb2VzIHRoaXMgd29yayBxdWV1ZSBuZWVkIHRvIGJlIGRlc3Ryb3llZCBh
dCBzb21lIHBvaW50PwoKVGhpcyBpcyB3b3JrX3N0cnVjdCwgbm90IHdvcmtxdWV1ZS4gIFNvIGl0
IGNhbid0IGJlIGRlc3Ryb3llZC4KQnV0IEkgbm90aWNlZCB0aGF0IHdlIHNob3VsZCBjYWxsIGZs
dXNoX3dvcmsgZm9yIHRoZXJtYWxfd29yayBhdAp1bnJlZ2lzdGVyaW5nIHRoZXJtYWwgem9uZSBk
ZXZpY2VzLgoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
TGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
