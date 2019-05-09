Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54A2618960
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 14:00:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=X/SftrAmLceXvMlxOYi3dHhGzYMUI6TkorHf0Npzmbk=; b=DgVReKVLIlnj5ifNfdXwAHhSL
	zOCYa5DczEpWt6wew/G8GCwgzg5AFFaTAfDXVbAkny/WHKYJ4KKTWj/VKmO2PxVyeRQqSJUYDfZwX
	ehmEZd2pZ96ltpVbBtfTeQhGIgH+WHN0xmt057/zmOvtWrB3YjoQQNjsiRQ3U/od46rP9voJQHdV/
	JjGGMWz0OdFi+Rl3BVZtqilu0IXkGK9eP1IwYHj4r6gIGa+42iPiWGDnt0zG7sMpZTtkjI39ixWma
	KArOyBAXGInHI/oLET495cJdTWrfq78mM8+PJcSTohgChrUJ4BppTUYJ9spxUQQFjCFqBCKqhJw+/
	1/rsNR6qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOhib-0000ql-S0; Thu, 09 May 2019 12:00:09 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOhiV-0008NC-V6
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 12:00:05 +0000
Received: from mail-pl1-f197.google.com ([209.85.214.197])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hOhiS-0006kf-VX
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 12:00:01 +0000
Received: by mail-pl1-f197.google.com with SMTP id y9so1426881plt.11
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 05:00:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=E3TYfjvumInlqPDbN4Vbyl7YloQy+afwdCg60dhd7F0=;
 b=pnkMtMYhKX/SyOU9wEvNeS5eFEnjQehVLqZSTsJwP+bvxxGLW8MLZ/uzZZEe3UbU68
 2GEo1UzIkFrRId7EbBQnjfg2Yt1TcYnzo9Y/4sBM3XUij62V6+H5A94x8jh9KYZmDlR7
 1LpIZqhDTZ5w9PabLKUVlFZN9++PbNQKY2qcWimTxaU8NEClRYmp2Cz0MSRmEB/4MbRe
 pLO4wCEH/wbRCvdekynUHGEkaxwTVcLhnLRAMQVIQxJ8+8Fo/APqpmADhhcgN494EOE/
 WcRj6I5Qya/rTr6N8aqIVqE4JUFp19fJbub6wyDd9HPc4M5sVI5pb0FmrFtpPvyzO32w
 gXwQ==
X-Gm-Message-State: APjAAAVE0HQ4Yu4buY4cPWCDMR2JqBBcRPAJ3Rc6gtuOlzgtjC3ZNHkW
 muoDG8fZfctrWF6SEXu6T28KfDQag/dVYyoyCfedIsd3xLyFReqwjd5Mnm9frtCKAIW25wH17WR
 OFyxHXHwCN5/WX8VAjpaXKj/JgWqllotd/j0hZcaxcJIW
X-Received: by 2002:a62:5103:: with SMTP id f3mr4624684pfb.146.1557403199488; 
 Thu, 09 May 2019 04:59:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzB5E7z/u9EHWChcxhdicQVecXs0mOSIs+L3HYhGGVLiG0ziOSNWMEfQATir0Eew7MlZhwziQ==
X-Received: by 2002:a62:5103:: with SMTP id f3mr4624646pfb.146.1557403199255; 
 Thu, 09 May 2019 04:59:59 -0700 (PDT)
Received: from 2001-b011-380f-14b9-f0ba-4a15-3e79-97f9.dynamic-ip6.hinet.net
 (2001-b011-380f-14b9-f0ba-4a15-3e79-97f9.dynamic-ip6.hinet.net.
 [2001:b011:380f:14b9:f0ba:4a15:3e79:97f9])
 by smtp.gmail.com with ESMTPSA id 19sm2126839pfz.84.2019.05.09.04.59.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 09 May 2019 04:59:58 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.8\))
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190509103142.GA19550@lst.de>
Date: Thu, 9 May 2019 19:59:55 +0800
Message-Id: <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
References: <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
To: Christoph Hellwig <hch@lst.de>
X-Mailer: Apple Mail (2.3445.104.8)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_050004_145876_47BD6A94 
X-CRM114-Status: GOOD (  21.37  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 "Rafael J. Wysocki" <rafael@kernel.org>
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="utf-8"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

YXQgMTg6MzEsIENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0LmRlPiB3cm90ZToKCj4gT24gVGh1
LCBNYXkgMDksIDIwMTkgYXQgMDY6Mjg6MzJQTSArMDgwMCwgS2FpLUhlbmcgRmVuZyB3cm90ZToK
Pj4gQmFzZWQgb24gbXkgdGVzdGluZyBpZiBxdWV1ZXMgKElSUSkgYXJlIG5vdCBkaXNhYmxlZCwg
TlZNZSBjb250cm9sbGVyCj4+IHdvbuKAmXQgYmUgcXVpZXNjZWQuCj4+IFN5bXB0b21zIGNhbiBi
ZSBoaWdoIHBvd2VyIGRyYWluIG9yIHN5c3RlbSBmcmVlemUuCj4+Cj4+IEkgY2FuIGNoZWNrIHdp
dGggdmVuZG9ycyB3aGV0aGVyIHRoaXMgYWxzbyBuZWNlc3NhcnkgdW5kZXIgV2luZG93cy4KPgo+
IFN5c3RlbSBmcmVlemUgc291bmRzIG9kZC4gIEFuZCB3ZSBoYWQgYSBwYXRjaCBmcm9tIGEgcGVy
c29uIG9uIHRoZQo+IENjIGxpc3QgaGVyZSB0aGF0IHdhcyBoYW5kZWQgdG8gbWUgdGhyb3VnaCBh
IGZldyBpbmRpcmVjdGlvbnMgdGhhdAo+IGp1c3Qgc2tpcHBzIHRoZSBzdXNwZW5kIGVudGlyZWx5
IGZvciBzb21lIGNhc2VzLCB3aGljaCBzZWVtZCB0bwo+IHdvcmsgZmluZSB3aXRoIHRoZSBjb250
cm9sbGVycyBpbiBxdWVzdGlvbi4KClRoYXQgd29ya3MgZmluZSBmb3Igc29tZSBkZXZpY2VzLCBi
dXQgZm9yIFRvc2hpYmEgTlZNZXMgdGhpcyBzYWlkIHNjZW5hcmlvICAKZnJlZXplcyB0aGUgc3lz
dGVtLCBoZW5jZSB0aGUgbmV3IHBhdGNoIGhlcmUuCgpBbmQgZm9yIGFsbCBOVk1lcyBJIHRlc3Rl
ZCB0aGlzIG5ldyBzdXNwZW5kIHJvdXRpbmUgc2F2ZXMgZXZlbiBtb3JlIHBvd2VyICAKdGhhbiBz
aW1wbHkgc2tpcHBpbmcgc3VzcGVuZC4KCj4KPj4+IE90aGVyd2lzZSBJIHRoaW5rIHdlIHNob3Vs
ZCB1c2UgYSAibm8tb3AiIHN1c3BlbmQsIGp1c3QgbGVhdmluZyB0aGUKPj4+IHBvd2VyIG1hbmFn
ZW1lbnQgdG8gdGhlIGRldmljZSwgb3IgYSBzaW1wbGUgc2V0dGluZyB0aGUgZGV2aWNlIHRvIHRo
ZQo+Pj4gZGVlcGVzdCBwb3dlciBzdGF0ZSBmb3IgZXZlcnl0aGluZyBlbHNlLCB3aGVyZSBldmVy
eXRoaW5nIGVsc2UgaXMKPj4+IHN1c3BlbmQsIG9yIHN1c3BlbmQgdG8gaWRsZS4KPj4KPj4gSSBh
bSBub3Qgc3VyZSBJIGdldCB5b3VyIGlkZWEuIERvZXMgdGhpcyDigJxuby1vcOKAnSBzdXNwZW5k
IGhhcHBlbiBpbiBOVk1lCj4+IGRyaXZlciBvciBQTSBjb3JlPwo+Cj4gbm8tb3AgbWVhbnMgd2Ug
ZG9uJ3Qgd2FudCB0byBkbyBhbnl0aGluZyBpbiBudm1lLiAgSWYgdGhhdCBoYXBwZW5zCj4gYnkg
bm90IGNhbGxpbmcgbnZtZSBvciBzdHViYmluZyBvdXQgdGhlIG1ldGhvZCBmb3IgdGhhdCBwYXJ0
aWN1bGFyCj4gY2FzZSBkb2VzIG5vdCBtYXR0ZXIuCgpPaywgYnV0IHdlIHN0aWxsIG5lZWQgdG8g
ZmlndXJlIG91dCBob3cgdG8gcHJldmVudCB0aGUgZGV2aWNlIGRldmljZSBmcm9tICAKdHJhZGl0
aW9uIHRvIEQzLgoKPgo+Pj4gQW5kIG9mIGNvdXJzZSB0aGFuIHdlIGhhdmUgd2luZG93cyBtb2Rl
cm4gc3RhbmRieSBhY3R1YWxseSBtYW5kYXRpbmcKPj4+IHJ1bnRpbWUgRDMgaW4gc29tZSBjYXNl
LCBhbmQgdmFndWUgaGFuZHdhdmluZyBtZW50aW9ucyBvZiB0aGlzIGJlaW5nCj4+PiBmb3JjZWQg
b24gdGhlIHBsYXRmb3Jtcywgd2hpY2ggSSdtIG5vdCBlbnRpcmVseSBzdXJlIGhvdyB0aGV5IGZp
dAo+Pj4gaW50byB0aGUgYWJvdmUgcGljdHVyZS4KPj4KPj4gSSB3YXMgdG9sZCB0aGF0IFdpbmRv
d3MgZG9lc27igJl0IHVzZSBydW50aW1lIEQzLCBBUFNUIGlzIHVzZWQgZXhjbHVzaXZlbHkuCj4K
PiBBcyBmYXIgYXMgSSBrbm93IHRoZSBkZWZhdWx0IHBvd2VyIG1hbmFnZW1lbnQgbW9kZXMgaW4g
dGhlIE1pY3Jvc29mdAo+IE5WTWUgZHJpdmVyIGlzIGV4cGxpY2l0IHBvd2VyIG1hbmFnZW1lbnQg
dHJhbnNpdGlvbnMsIGFuZCBpbiB0aGUgSW50ZWwKPiBSU1QgZHJpdmVyIHRoYXQgaXMgY29tbW9u
bHkgdXNlZCBpdCBpcyBBUFNULiAgQnV0IGJvdGggY291bGQgc3RpbGwKPiBiZSBjb21pbmVkIHdp
dGggcnVudGltZSBEMyBpbiB0aGVvcnksIEknbSBqdXN0IG5vdCBzdXJlIGlmIHRoZXkgYXJlLgo+
Cj4gTWljcm9zb2Z0IGhhcyBiZWVuIHB1c2hpbmcgZm9yIGFnZ3Jlc3NpdmUgcnVudGltZSBEMyBm
b3IgYSB3aGlsZSwgYnV0Cj4gSSBkb24ndCBrbm93IGlmIHRoYXQgaW5jbHVkZXMgTlZNZSBkZXZp
Y2VzLgoKT2ssIEnigJlsbCBjaGVjayB3aXRoIHZlbmRvcnMgYWJvdXQgdGhpcy4KCkthaS1IZW5n
Cgo+Cj4+IEthaS1IZW5nCj4gLS0tZW5kIHF1b3RlZCB0ZXh04oCUCgoKCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW52bWUgbWFpbGluZyBsaXN0
CkxpbnV4LW52bWVAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW52bWUK
