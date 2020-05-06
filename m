Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CF41C72F7
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 16:35:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6c10lkhEmADO63+ix2HuT2xdAPGTDMhqsdbgnPHu8yQ=; b=tVt1cOVehOCoDj
	l2x6SL6UtkOMYPoCxTzhKWNofIMtlLL4gzzgCJ70JxbagPPxaQlocqCrgFELLwNCQqxoBUaq3nIzc
	HOUluOPGMMTTSdFD7keLrgk77wuEsMgajBmdktm+Q549w+WVSK9h5zmzkTW4jEpau3hBce4Xus4P/
	jjWQdTjWE1JbWR6A1hWPR86qAaQrBfx/KvDSn89/Rru6dtB89ju1RNMfd5gPoFMqDBDuwfVxKdHNA
	NdTzH5rLPeRzSitmN+mJWu24WzPJXCUnJ1loqqu6ZvRJUV9Z9q5vKGHzggJRoOyuk4kipnoYX5ovJ
	iKQQOYWNv946ld9W08fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWL8y-0006PH-3L; Wed, 06 May 2020 14:35:28 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWL8t-0006OS-FS
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 14:35:25 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 6B27968C7B; Wed,  6 May 2020 16:35:19 +0200 (CEST)
Date: Wed, 6 May 2020 16:35:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200506143519.GA570@lst.de>
References: <20200228184519.GA2281@avx2>
 <20200229055351.GA542920@dhcp-10-100-145-180.wdl.wdc.com>
 <defb25c5-5ae5-5ff9-66db-efb129bd7743@huawei.com>
 <20200506124701.GA54933@C02WT3WMHTD6> <20200506132429.GA21451@avx2>
 <2ecb88b5-b585-52ed-bb84-5b486868743a@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2ecb88b5-b585-52ed-bb84-5b486868743a@huawei.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_073523_662048_19D0966C 
X-CRM114-Status: UNSURE (   6.14  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org, hch@lst.de, axboe@fb.com,
 Keith Busch <kbusch@kernel.org>, Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMDYsIDIwMjAgYXQgMDI6NDQ6NTBQTSArMDEwMCwgSm9obiBHYXJyeSB3cm90
ZToKPiBJJ2QgcmF0aGVyIGhlYXIgdGhlIG1haW50YWluZXLigJlzIG9waW5pb24gYmVmb3JlIGJv
dGhlcmluZyB0ZXN0aW5nIHRoaXMuLi4KCkFzIHRoZSBvdGhlciBtYWludGFpbmVyIC0gcGxlYXNl
IGdpdmUgaXQgYSBzcGluLiAgVGhlIGV4cGxhbmF0aW9uIGZyb20KQWxleGV5IGluIHRoZSByZXBs
eSB0byB5b3VyIG1haWwgbWFrZXMgY29tcGxldGUgc2Vuc2UgdG8gbWUuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1lIG1haWxpbmcgbGlz
dApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5v
cmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
