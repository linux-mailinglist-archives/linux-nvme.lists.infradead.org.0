Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E90126750
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 17:53:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6GuQASiEQrlC/RR/D1Xw6TG1zLHDWf4ckbiSwwguKVc=; b=G/lxNzQ518tJWz
	JIy1phOU6SUzxy5UI2Ei9LWOLqJAFcA/X1Dk0CLFMixo1MPq8BciGerGPCSlN/QV5Eabu6bzPK6Cc
	xba0O6tXHk24waaGo/ovNKeZCDlR+mC1/jXiXp6ZWjxjpQvVMnR9W0yQjNh2qu9nac7r8e2jk2i+v
	1HrVJ9zYD0PgF9+A8oX4xYemRrVZ5URumOaIDB29YntAdDDP95XJLGm1o+A0Fy/e6pJqQkrtO56ux
	n2hLPbvrbO101eAA4OgyriZyyeS3r0ed4sVTDDvQ7oU7UuM7D+lLZJ+REfkWgcdHTcyPitpOULuN/
	czHWSpAlgnNB8dVR1SwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTTYQ-00065A-6h; Wed, 22 May 2019 15:53:22 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTTYL-00064n-RE
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 15:53:19 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 3518368B05; Wed, 22 May 2019 17:52:54 +0200 (CEST)
Date: Wed, 22 May 2019 17:52:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: Kai Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190522155253.GA29827@lst.de>
References: <20190516193822.GA23853@localhost.localdomain>
 <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
 <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
 <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
 <20190517090521.GA15509@lst.de>
 <CAJZ5v0iL+ERE4Yy5yO8U2no194sRkvqNZHh5HsZXKvvHbxtk+g@mail.gmail.com>
 <20190517093516.GA17006@lst.de>
 <CAJZ5v0gLqL7GUjwz5F8=9Fc-W2n3FRzbbB2L8udaXgN4Vsd8-Q@mail.gmail.com>
 <D4CDCA72-A3B8-4717-9ED2-A14254C78963@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <D4CDCA72-A3B8-4717-9ED2-A14254C78963@canonical.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_085318_026076_4BFC3418 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gV2VkLCBNYXkgMjIsIDIwMTkgYXQgMDI6NDc6NTdQTSArMDgwMCwgS2FpIEhlbmcgRmVuZyB3
cm90ZToKPiBJJ3ZlIGdvdCBjb25maXJtYXRpb24gZnJvbSBWZW5kb3IsIGRpc2FibGluZyBITUIg
aXNu4oCZdCBuZWNlc3Nhcnkgd2hlbiB0aGUgCj4gaG9zdCBzdGF5cyBhdCBEMCwgd2hpY2ggaXMg
d2hhdCB3ZSB1c2UgaW4gUzJJLgo+IEnigJl2ZSBkb25lIHNvbWUgdGVzdGluZyBhbmQgSSBjYW4g
Y29uZmlybSBTMkkgc3VzcGVuZC9yZXN1bWUgY2FuIHdvcmsgCj4gd2l0aG91dCBkaXNhYmxpbmcg
SE1CLgoKR3JlYXQuICBXaG8gaXMgZ29pbmcgdG8gY29vayB1cCBhIG5ldyBwYXRjaCB0YWtpbmcg
YWxsIHRoZSByZWNlbnQKZmluZGluZ3MgaW50byBhY2NvdW50PwoKX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5nIGxpc3QKTGlu
dXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21h
aWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
