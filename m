Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D3E19EB2
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 16:07:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0JPqwOOh8kBPSoYvrCeymJjh19jR3OFz9bO5l1mSkhM=; b=JapD66qyazTxPR
	AkRwBB1AxIat+/CtvPiIBFlwtTfDmUW4Bs95SSNfZFJkt4KkK0U3kJvrv/P2S2Uvbh5fSVeV/n8lh
	wHCCJkK8oxytK17eldNiRh5REdlqR9fEXjAz+EGLTwVhwEz3xtfOK5d3a+PJK4ZISN5M9Jx5Eb81i
	NHn6SwV/7BE/dvZ5rWoAAg2vaXHDwi5FljT23jzBJvtDh9bgpHLW5f3jlOl5ojRuWHnBHpBythUG0
	0sdEPEX6wmwdQxTnSUTstzFGMzQwej5OATV/qL8CZvuVjAAQlJeNmjGPF5U9CXtSJqRWQDhQWMnX+
	ziq/VbcJuaARw8P15olg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP6Bd-0002ta-O2; Fri, 10 May 2019 14:07:45 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP6BY-0002sV-Lw
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 14:07:41 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 07:07:38 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 10 May 2019 07:07:37 -0700
Date: Fri, 10 May 2019 08:02:09 -0600
From: Keith Busch <kbusch@kernel.org>
To: Kai-Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Message-ID: <20190510140209.GG9675@localhost.localdomain>
References: <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
 <20190509215409.GD9675@localhost.localdomain>
 <495d76c66aec41a8bfbbf527820f8eb9@AUSX13MPC101.AMER.DELL.COM>
 <BC5EB1D0-8718-48B3-ACAB-F7E5571D821D@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BC5EB1D0-8718-48B3-ACAB-F7E5571D821D@canonical.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_070740_773653_FBF58BE7 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: "Busch, Keith" <keith.busch@intel.com>, "Wysocki,
 Rafael J" <rafael.j.wysocki@intel.com>, "sagi@grimberg.me" <sagi@grimberg.me>,
 "linux-pm@vger.kernel.org" <linux-pm@vger.kernel.org>,
 "rafael@kernel.org" <rafael@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "axboe@fb.com" <axboe@fb.com>, "hch@lst.de" <hch@lst.de>,
 "Mario.Limonciello@dell.com" <Mario.Limonciello@dell.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMDksIDIwMTkgYXQgMTE6MDU6NDJQTSAtMDcwMCwgS2FpLUhlbmcgRmVuZyB3
cm90ZToKPiBZZXMsIHRoYXTigJkgd2hhdCBJIHdhcyB0b2xkIGJ5IHRoZSBOVk1lIHZlbmRvciwg
c28gYWxsIEkga25vdyBpcyB0byBpbXBvc2UgYSAgCj4gbWVtb3J5IGJhcnJpZXIuCj4gSWYgbWIo
KSBzaG91bGRu4oCZdCBiZSB1c2VkIGhlcmUsIHdoYXTigJlzIHRoZSBjb3JyZWN0IHZhcmlhbnQg
dG8gdXNlIGluIHRoaXMgIAo+IGNvbnRleHQ/CgpJJ20gYWZyYWlkIHRoZSByZXF1aXJlbWVudCBp
cyBzdGlsbCBub3QgY2xlYXIgdG8gbWUuIEFGQUlLLCBhbGwgb3VyCmJhcnJpZXJzIHJvdXRpbmVz
IGVuc3VyZSBkYXRhIGlzIHZpc2libGUgZWl0aGVyIGJldHdlZW4gQ1BVcywgb3IgYmV0d2VlbgpD
UFUgYW5kIGRldmljZXMuIFRoZSBDUFUgbmV2ZXIgYWNjZXNzZXMgSE1CIG1lbW9yeSwgc28gdGhl
cmUgbXVzdCBiZSBzb21lCm90aGVyIHJlYXNvbmluZyBpZiB0aGlzIGJhcnJpZXIgaXMgYSByZWFs
IHJlcXVpcmVtZW50IGZvciB0aGlzIGRldmljZS4KCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0CkxpbnV4LW52bWVA
bGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xp
c3RpbmZvL2xpbnV4LW52bWUK
