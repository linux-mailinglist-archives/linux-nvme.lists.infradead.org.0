Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E3F61C765F
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 18:31:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PJY5dkMcY0tS9qFSk+1mrgdcq3Y+1EB1L7h7138THpw=; b=eRLZfBJzhPLsk7
	VABUZQ2vcuA/B+k9hfmiApXx6KmBECVzSD8AshIzj8y0I/lvMXP5osH6yurr87L0RBcgtIvmtP6sC
	auaQugberjkCh7cSVRwF3TKXel53QstGZZV0uoIFdEcLQqR9yfC3+fchdGiLxD6lGF+ntafPJftro
	V0w74zXZudLWPMDEkv8BZKge/EkajAQmakA3XCQGpuXVjJNved8fqWqInStcRcRoBjHWE+WKJDk3u
	aPBuk/7sJyT54ivFngEET26T/qtvmwfVeyB7VakhMxZbv/+kp6isBAZqOltZG1VHEKb+EuDHJ1tx+
	/TUOrfNBk7MR8x9xu8Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWMx0-00014O-NB; Wed, 06 May 2020 16:31:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWMwv-00013k-Md
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 16:31:10 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 08136208E4;
 Wed,  6 May 2020 16:31:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588782669;
 bh=wJTWHOy44O1KNSL9ROLH4sg+Rg7RKvt5PclfkBNa7w8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Xp71qYGQRNhBPZC3q7ddNoNrHecVSu/X8YDc4nXukGyGC7q7BaZ7DtXqDfrCiH+xG
 FczBwFS2c+2X+avUWOL/L/2ZZaMWSKF7uEm+zTmqd3y2Rvax7gjKm8hKSddKzasv0F
 ihBBrRxWhIXseIqnLU9S6P+pcX/XC3b/sFKMwvnw=
Date: Wed, 6 May 2020 17:31:04 +0100
From: Will Deacon <will@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200506163104.GD12919@willie-the-truck>
References: <20200228184519.GA2281@avx2>
 <20200229055351.GA542920@dhcp-10-100-145-180.wdl.wdc.com>
 <defb25c5-5ae5-5ff9-66db-efb129bd7743@huawei.com>
 <20200506124701.GA54933@C02WT3WMHTD6> <20200506132429.GA21451@avx2>
 <2ecb88b5-b585-52ed-bb84-5b486868743a@huawei.com>
 <20200506143519.GA570@lst.de>
 <4155a814-798c-0c7e-5433-daf719c0345c@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4155a814-798c-0c7e-5433-daf719c0345c@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_093109_756632_EEC299DD 
X-CRM114-Status: GOOD (  10.74  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org,
 Alexey Dobriyan <adobriyan@gmail.com>, axboe@fb.com,
 Keith Busch <kbusch@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMDYsIDIwMjAgYXQgMDU6MjY6MzVQTSArMDEwMCwgSm9obiBHYXJyeSB3cm90
ZToKPiArIGFybTY0IGd1eXMgKFBsZWFzZSBub3RlIFdBUk4gYmVsb3csIGdlbmVyYXRlZCB3aGVu
IHRlc3RpbmcgTlZNZSkKPiAKPiBPbiAwNi8wNS8yMDIwIDE1OjM1LCBDaHJpc3RvcGggSGVsbHdp
ZyB3cm90ZTo+IE9uIFdlZCwgTWF5IDA2LCAyMDIwIGF0Cj4gMDI6NDQ6NTBQTSArMDEwMCwgSm9o
biBHYXJyeSB3cm90ZToKPiA+ID4gSSdkIHJhdGhlciBoZWFyIHRoZSBtYWludGFpbmVy4oCZcyBv
cGluaW9uIGJlZm9yZSBib3RoZXJpbmcgdGVzdGluZyB0aGlzLi4uCj4gPiAKPiA+IEFzIHRoZSBv
dGhlciBtYWludGFpbmVyIC0gcGxlYXNlIGdpdmUgaXQgYSBzcGluLgo+IAo+IG9rLCBzbyBJIGhh
dmUgdGVzdGVkIHdpdGggdGhlIG1vZGlmaWNhdGlvbiBmcm9tIEtlaXRoICh0byBhdm9pZCB0aGUK
PiBSRUFEX09OQ0UoKSksIGFuZCBpdCdzIG9rIGZvciB1c2VfdGhyZWFkZWRfaW50ZXJydXB0cz0x
Lgo+IAo+IEhvd2V2ZXIsIGZvciB1c2VfdGhyZWFkZWRfaW50ZXJydXB0cz0wLCBJIHNlZSBhIG5l
dyBpc3N1ZToKPiAKPiBbICAxMjIuNTI0MjkwXSBXQVJOSU5HOiBDUFU6IDg2IFBJRDogMTE1NyBh
dAo+IGRyaXZlcnMvaW9tbXUvaW8tcGd0YWJsZS1hcm0uYzozMDQKClRoYXQgbWVhbnMgeW91J3Jl
IHRyeWluZyB0byBtYXAgc29tZXRoaW5nIHRoYXQgaXMgYWxyZWFkeSBtYXBwZWQuCgpXaWxsCgpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1udm1l
IG1haWxpbmcgbGlzdApsaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1lCg==
