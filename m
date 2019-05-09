Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841E01879E
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 11:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J5Run/KaoddwFR14hkKdkF7uq2pgtpKrRbFTPy2T9hE=; b=lrRys/X/5v3dCr
	FgI3/QZdhRYr/xyNfYbCtFXwpYYZvcd67V8KIobpSDLiei/COPhQKckDLz3fddDvNqmjjLBhUBU43
	5Up7ATFq7qWI/vPK/r1wuQIHMKxFFsEj0sIUl6MSpHeXWxHkb79Y/h682AlXF+wf702tvDfCk7g0z
	4prwxxQGc9uIwm8HwH/7X7vWiRHPUAbS687XPWIF0K1Z6ocfdVBpSXNp7CoOm8oXCk0ZdBv/nSL52
	kvNcC2nOzWUrny/Rlg+BUxcCp1VQh7b0KYQCu4tcroNXAd8inQNyIvXP5lrwEHgze+sX4XQClRLxx
	7V87+A0Yp060YM/q1mPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfDb-0001Fm-3o; Thu, 09 May 2019 09:19:59 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfDT-0001Ek-1a
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 09:19:52 +0000
Received: by mail-oi1-f194.google.com with SMTP id l203so1385252oia.3
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 02:19:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=4keILsDdqaPQc14jyFTpZX6LIK4odMSSe93jLxQHABU=;
 b=tqUIHPRG0WwaOM/13w5t7zyzLe5Jn4EKwtUcnkTvX+Us0r5o17MziCsG9m7YkwvVn8
 DUPsTjAl5oYZUt5urdHhLD5nnpfWlGl/ChWjsgUO5cQ2Lc+abXbu3AxvwNYizEISbcWB
 s+5gSASqtj0yLcQSkdcUpN5Dxt1oxyioXjGTkkt5WAhzhb6MGkDJIScZLxeiHObTdW+d
 v52F6dNI62x68K8DY17v0ymgqwaEiaUgvmPr7EICwGzHKKKHmBlhZVGPvldd+6n9sX1k
 P0tUKPbzY/KH4Yy7J1PsiaEKZVINxdKx8BafkB+Mh5vYe6WLb/czk6yZtWWJyAsNrxhD
 NHqA==
X-Gm-Message-State: APjAAAXKcmaV+X2+U2L1HPPo2XmG2HQegVgVM2IUTXrk7fI63vv/ap9l
 UFIC1h/dasdEnsf57COf1GCVCkL/kIaClvATY1g=
X-Google-Smtp-Source: APXvYqzINNimXp/wssQDr1dHiM1zCcFSUTOXnE+YF/EMLzLVAtAUB+htJwxgffMl8EOF4ySMIiljSIyv+JYs/ghVU6M=
X-Received: by 2002:aca:f444:: with SMTP id s65mr777412oih.115.1557393588629; 
 Thu, 09 May 2019 02:19:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
 <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <20190509065223.GA15984@lst.de>
In-Reply-To: <20190509065223.GA15984@lst.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 9 May 2019 11:19:37 +0200
Message-ID: <CAJZ5v0h51nMCte4yL76nMWaYrrXDPrOK=CeUpc50=r2Pp_icPw@mail.gmail.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_021951_091008_9A76F6A7 
X-CRM114-Status: GOOD (  24.12  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgOSwgMjAxOSBhdCA4OjUyIEFNIENocmlzdG9waCBIZWxsd2lnIDxoY2hAbHN0
LmRlPiB3cm90ZToKPgo+IE9uIFRodSwgTWF5IDA5LCAyMDE5IGF0IDAyOjQ4OjU5UE0gKzA4MDAs
IEthaS1IZW5nIEZlbmcgd3JvdGU6Cj4gPiBOb3QgcmVhbGx5LCBmb3IgaGliZXJuYXRpb24gcG1f
c3VzcGVuZF92aWFfczJpZGxlKCkgZXZhbHVhdGVzIHRvIGZhbHNlIHNvCj4gPiB0aGUgb2xkIGNv
ZGUgcGF0aCB3aWxsIGJlIHRha2VuLgo+ID4KPiA+Pgo+ID4+IEFuZCBtb3JlIHRvIHRoZSBwb2lu
dHMgLSBpZiB0aGVzZSAibW9kZXJuIE1TIHN0YW5kYnkiIHN5c3RlbXMgYXJlCj4gPj4gYmVjb21p
bmcgY29tbW9uLCB3aGljaCBpdCBsb29rcyB0aGV5IGFyZSwgd2UgbmVlZCBzdXBwb3J0IGluIHRo
ZSBQTSBjb3JlCj4gPj4gZm9yIHRob3NlIGluc3RlYWQgb2Ygd29ya2luZyBhcm91bmQgdGhlIGRl
Y2lzaW9ucyBpbiBsb3ctbGV2ZWwgZHJpdmVycy4KPiA+Cj4gPiBSYWZhZWwsIHdoYXQgZG8geW91
IHRoaW5rIGFib3V0IHRoaXM/Cj4gPiBJbmNsdWRpbmcgdGhpcyBwYXRjaCwgdGhlcmUgYXJlIGZp
dmUgZHJpdmVycyB0aGF0IHVzZQo+ID4gcG1fc3VzcGVuZF92aWFfe2Zpcm13YXJlLHMyaWRsZX0o
KSB0byBkaWZmZXJlbnRpYXRlIGJldHdlZW4gUzJJIGFuZCBTMy4KPiA+IFNvIEkgdGhpbmsgbWF5
YmUgaXTigJlzIHRpbWUgdG8gaW50cm9kdWNlIGEgbmV3IHN1c3BlbmQgY2FsbGJhY2sgZm9yIFMy
ST8KPgo+IFdlIGFsc28gcmVhbGx5IG5lZWQgc29tZXRoaW5nIGxpa2UgdGhhdCB0byBhdm9pZCB0
aGUgUENJX0RFVl9GTEFHU19OT19EMwo+IGFidXNlIC0gdGhhdCBmbGFnIGlzIGEgcXVpcmsgc3Rh
dGljYWxseSBzZXQgb24gYSBkZXZpY2UgYXQgcHJvYmUgdGltZQo+IHRvIHByZXZlbnQgYW55IGVu
dGVyaW5nIG9mIEQzIHN0YXRlLgoKSSBhZ3JlZSB0aGF0IFBDSV9ERVZfRkxBR1NfTk9fRDMgaGFz
IHRvIGJlIGF2b2lkZWQuCgpIb3dldmVyLCBJTU8gaW50cm9kdWNpbmcgYSBuZXcgc2V0IG9mIHN1
c3BlbmQgKGFuZCByZXN1bWUpIGNhbGxiYWNrcwpmb3IgUzJJIHdvdWxkIG5vdCBiZSBwcmFjdGlj
YWwsIGJlY2F1c2UKCihhKSB0aGUgb25seSBkaWZmZXJlbmNlIGJldHdlZW4gUzJJIGFuZCBTMlIg
ZnJvbSBhIGRyaXZlciBwZXJzcGVjdGl2ZQppcyB0aGF0IGl0IG1heSBiZSBleHBlY3RlZCB0byBk
byBzb21ldGhpbmcgInNwZWNpYWwiIGFib3V0IHNldHRpbmcgdGhlCmRldmljZSBwb3dlciBzdGF0
ZSBpbiB0aGUgUzJJIGNhc2UgKHRoZSByZXN0IG9mIHdoYXQgbmVlZHMgdG8gYmUgZG9uZQpkdXJp
bmcgc3lzdGVtLXdpZGUgc3VzcGVuZC9yZXN1bWUgcmVtYWlucyB0aGUgc2FtZSBpbiBib3RoIGNh
c2VzKSwKCihiKSB0aGUgbmV3IGNhbGxiYWNrcyB3b3VsZCBvbmx5IGJlIHJlYWxseSB1c2VmdWwg
Zm9yIGEgaGFuZGZ1bCBvZiBkcml2ZXJzLgoKPiA+PiBwZXIgZGVmaW5pdGlvbiwgYWx0aG91Z2gg
dGhleSBtaWdodCBub3QgYmUgdG9vIHVzZWZ1bC4gIEkgc3VzcGVjdCBjaGVja2luZwo+ID4+IEFQ
U1RBIG1pZ2h0IGJlIHNhZmVyLCBidXQgaWYgd2UgZG9uJ3Qgd2FudCB0byByZWx5IG9uIEFQU1Qg
d2Ugc2hvdWxkCj4gPj4gY2hlY2sgZm9yIGEgcG93ZXIgc3RhdGUgc3VwcG9ydGluZyB0aGUgY29u
ZGl0aW9uIHRoYXQgdGhlIE1TIGRvY3VtZW50Cj4gPj4gcXVvdGVkIGluIHRoZSBvcmlnaW5hbCBk
b2N1bWVudCBzdXBwb3J0cy4KPiA+Cj4gPiBJZiBNb2Rlcm4gU3RhbmRieSBvciBDb25uZWN0ZWQg
U3RhbmRieSBpcyBub3Qgc3VwcG9ydGVkIGJ5IHNlcnZlcnMsIEkKPiA+IGRvbuKAmXQgdGhpbmsg
dGhlIGRlc2lnbiBkb2N1bWVudHMgbWVhbiBtdWNoIGhlcmUuCj4gPiBXZSBwcm9iYWJseSBzaG91
bGQgY2hlY2sgaWYgdGhlIHBsYXRmb3JtIGZpcm13YXJlIHJlYWxseSBzdXBwb3J0cyBTMkkKPiA+
IGluc3RlYWQuCj4KPiBUaGF0IHRvby4gIEFzIHNhaWQgdGhpcyByZWFsbHkgaXMgYSBwbGF0Zm9y
bSBkZWNpc2lvbiwgYW5kIG5lZWRzIHRvCj4gYmUgbWFuYWdlZCBieSB0aGUgcGxhdGZvcm0gY29k
ZSB0aHJvdWdoIHRoZSBQTSBjb3JlLgoKSSdtIG5vdCB3aGF0IHlvdSBtZWFuIGJ5ICJwbGF0Zm9y
bSBkZWNpc2lvbiIgaGVyZS4KCj4gIEluZGl2aWR1YWwgZHJpdmVycyBsaWtlIG52bWUgY2FuIGp1
c3QgaW1wbGVtZW50IHRoZSBiZWhhdmlvciwgYnV0IGFyZSB0aGUgYWJzb2x1dGUgd3JvbmcKPiBw
bGFjZSB0byBtYWtlIGRlY2lzaW9ucyBvbiB3aGF0IGtpbmRzIG9mIHN1c3BlbmQgdG8gZW50ZXIu
CgpSaWdodCwgdGhlIGNob2ljZSBvZiB0aGUgdGFyZ2V0IHN5c3RlbSBzdGF0ZSBoYXMgYWxyZWFk
eSBiZWVuIG1hZGUKd2hlbiB0aGVpciBjYWxsYmFja3MgZ2V0IGludm9rZWQgKGFuZCBpdCBoYXMg
YmVlbiBtYWRlIGJ5IHVzZXIgc3BhY2UsCm5vdCBieSB0aGUgcGxhdGZvcm0pLgoKX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KTGludXgtbnZtZSBtYWlsaW5n
IGxpc3QKTGludXgtbnZtZUBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbnZtZQo=
