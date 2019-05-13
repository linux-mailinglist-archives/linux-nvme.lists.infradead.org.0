Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05DB51B05E
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 08:36:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7R0zddCcFyjOX/e9sCoN0FuaNVRmw64uVgwt0JKFQnE=; b=ef88r52gLkL1CKf+XBP466c8n
	3aMeyW3m4w5AGeM/dbkcl6zyPBQmIEKGhJaOk1+zL8d02iZAbDacqU+3rkWGm1GHnSyTiJK1B/R1W
	lDIeaeBEvNPMH7t7gh7w5kfak5RMrQSG1KAlgskilpCL0tpTKCRic+D2v2I132dQrFLjeaRzwI76E
	beYOJiPDjQtUjBoVdwuoykubLvQMVJOcGOA3dpSjbsB4pYNbhSdX7ZgnqKQtq3G0fcPXksBGm4thH
	7xkY9pBIBnR93tHrIVaMQVEtLjyRCfXoID3nanIBk6VDSdMIBwaICJZ9cV/O4k2gXaxz9CG3VwjCQ
	RfXjIovbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4Zj-00071t-RK; Mon, 13 May 2019 06:36:39 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4Zf-00071Z-AN
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 06:36:36 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id D7106AD8B;
 Mon, 13 May 2019 06:36:33 +0000 (UTC)
Subject: Re: [PATCH 1/2] nvme: change locking for the per-subsystem controller
 list
To: Christoph Hellwig <hch@lst.de>
References: <20190513062510.756-1-hch@lst.de> <20190513062510.756-2-hch@lst.de>
From: Hannes Reinecke <hare@suse.de>
Message-ID: <af4e245b-d1a8-d55a-0090-07981145c690@suse.de>
Date: Mon, 13 May 2019 08:36:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513062510.756-2-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_233635_501845_BDB92F03 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gNS8xMy8xOSA4OjI1IEFNLCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToKPiBMaWZlIGJlY29t
ZXMgYSBsb3Qgc2ltcGxlciBpZiB3ZSBqdXN0IHVzZSB0aGUgZ2xvYmFsCj4gbnZtZV9zdWJzeXN0
ZW1zX2xvY2sgdG8gcHJvdGVjdCB0aGlzIGxpc3QuICBHaXZlbiB0aGF0IGl0IGlzIG9ubHkKPiBh
Y2Nlc3NlZCBkdXJpbmcgY29udHJvbGxlciBwcm9iaW5nIGFuZCByZW1vdmFsIHRoYXQgaXNuJ3Qg
YSBzY2FsYWJpbGl0eQo+IHByb2JsZW0gZWl0aGVyLgo+IAo+IFNpZ25lZC1vZmYtYnk6IENocmlz
dG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPgo+IC0tLQo+ICAgZHJpdmVycy9udm1lL2hvc3QvY29y
ZS5jIHwgMzIgKysrKysrKysrKysrKystLS0tLS0tLS0tLS0tLS0tLS0KPiAgIDEgZmlsZSBjaGFu
Z2VkLCAxNCBpbnNlcnRpb25zKCspLCAxOCBkZWxldGlvbnMoLSkKPiAKClJldmlld2VkLWJ5OiBI
YW5uZXMgUmVpbmVja2UgPGhhcmVAc3VzZS5jb20+CgpDaGVlcnMsCgpIYW5uZXMKCi0tIApEci4g
SGFubmVzIFJlaW5lY2tlCQkgICBUZWFtbGVhZCBTdG9yYWdlICYgTmV0d29ya2luZwpoYXJlQHN1
c2UuZGUJCQkgICAgICAgICAgICAgICArNDkgOTExIDc0MDUzIDY4OApTVVNFIExJTlVYIEdtYkgs
IE1heGZlbGRzdHIuIDUsIDkwNDA5IE7DvHJuYmVyZwpHRjogRmVsaXggSW1lbmTDtnJmZmVyLCBN
YXJ5IEhpZ2dpbnMsIFNyaSBSYXNpYWgKSFJCIDIxMjg0IChBRyBOw7xybmJlcmcpCgpfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpMaW51eC1udm1lIG1haWxp
bmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJh
ZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
