Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B504F20F4C
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 21:43:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rs1rkpZTq9Wnqw9hRtzi/+5wehT397oPoZxZZuPWfh0=; b=n+JNjexj0bV0Ge
	9FFKQQBcZ7qujsaOqsOjZEvEdQHJFT2KatA+83wWRbpuDhZ5IFahlkvv1vRWwEq8+nmMVQKVqJg4t
	2aDyvBKUdeXQxGmQaXJKHHevrrMn5PjataggDus+uoM92E6A6fwNzdnl/PswUegORrPz6WdQ3XayL
	a0wMoR7b0jj/BHknPWFwFTGKcKJjeMdNNZjqKPNKtBsmQssHR8qejbkfxogM7WF6P5YqB4VJchB3W
	JSPLhDJk0Dq+wLnG4JzptZBgEiEun2yMn3W0ZYPkct1j+iKHKv14Ewpn46YyJZ3W3RJ3Mmc/aMHll
	Rr+zUx1WquZBxH33AXGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRMI3-0003ux-Cg; Thu, 16 May 2019 19:43:43 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRMHz-0003uW-JS
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 19:43:40 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 12:43:37 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga006.fm.intel.com with ESMTP; 16 May 2019 12:43:37 -0700
Date: Thu, 16 May 2019 13:38:22 -0600
From: Keith Busch <kbusch@kernel.org>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190516193822.GA23853@localhost.localdomain>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
 <20190516142657.GD23333@localhost.localdomain>
 <70235CA3-0FBB-4A06-996F-647A0D95C6D0@canonical.com>
 <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_124339_651281_0FF888C8 
X-CRM114-Status: GOOD (  13.77  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: sagi@grimberg.me, rafael@kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kai.heng.feng@canonical.com, hch@lst.de
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

T24gVGh1LCBNYXkgMTYsIDIwMTkgYXQgMDY6MzM6NTZQTSArMDAwMCwgTWFyaW8uTGltb25jaWVs
bG9AZGVsbC5jb20gd3JvdGU6Cj4gPiA+PiBUaGVuLCB5b3UgY2FuIHBvcHVsYXRlIG52bWVfZGV2
X3BtX29wcyBhcyBmb2xsb3dzOgo+ID4gPj4KPiA+ID4+IHN0YXRpYyBjb25zdCBzdHJ1Y3QgZGV2
X3BtX29wcyA9IHsKPiA+ID4+ICAgICAuc3VzcGVuZCA9IG52bWVfc3VzcGVuZCwKPiA+ID4+ICAg
ICAucmVzdW1lID0gbnZtZV9yZXN1bWUsCj4gPiA+PiAgICAgLmZyZWV6ZSA9IG52bWVfc2ltcGxl
X3N1c3BlbmQsCj4gPiA+PiAgICAgLnRoYXcgPSBudm1lX3NpbXBsZV9yZXN1bWUsCj4gPiA+PiAg
ICAgLnBvd2Vyb2ZmID0gbnZtZV9zaW1wbGVfc3VzcGVuZCwKPiA+ID4+ICAgICAucmVzdG9yZSA9
IG52bWVfc2ltcGxlX3Jlc3VtZSwKPiA+ID4+IH07Cj4gPiA+Pgo+ID4gPj4gYW5kIGl0IHNob3Vs
ZCBhbGwgd29yay4KPiA+ID4KPiA+ID4gVGhhbmtzIGZvciB0aGUgcG9pbnRlcnMsIEknbGwgZ2l2
ZSB0aGF0IGlkZWEgYSBzaG90Lgo+ID4gCj4gPiBUaGFua3MgZm9yIHlvdXIgd29yaywgSeKAmXZl
IHRlc3RlZCB5b3VyIHBhdGNoIHNlcmllcyBvbiB0b3Agb2YgbnZtZS01LjIgYnJhbmNoLiBJdAo+
ID4gd29ya3Mgd2VsbCBvbmNlIEkgYXBwbHkgZmxhZyBQQ0lfREVWX0ZMQUdTX05PX0QzLgo+ID4g
QWZ0ZXIgc29tZSBkaWdnaW5nIEkgdGhpbmsgaXTigJlzIGFub3RoZXIgYnVnIHRob3VnaDoKCi4u
Li4KCj4gPiBwY2lfcG1fc3VzcGVuZF9ub2lycSgpIGdldHMgY2FsbGVkIHR3aWNlOgo+ID4gWyAg
IDcwLjM1ODc3OV0gbnZtZSAwMDAwOjAzOjAwLjA6IFBDSSBQTTogU3VzcGVuZCBwb3dlciBzdGF0
ZTogRDAKPiA+IFsgICA3MC40OTY5MDhdIG52bWUgMDAwMDowMzowMC4wOiBQQ0kgUE06IFN1c3Bl
bmQgcG93ZXIgc3RhdGU6IEQzaG90Cj4gPiBTbyBpdOKAmXMgc3RpbGwgYmVpbmcgcHV0IHRvIEQz
Lgo+ID4gCj4gPiBJ4oCZbGwgY2hlY2sgd2h5IHRoaXMgYnVnIGhhcHBlbnMuCj4gPiAKPiA+IEth
aS1IZW5nCj4gCj4gQ2FuIHlvdSBwbGVhc2UgdHJ5IHRoaXMgcGF0Y2g6Cj4gaHR0cHM6Ly9jaHJv
bWl1bS1yZXZpZXcuZ29vZ2xlc291cmNlLmNvbS9jL2Nocm9taXVtb3MvdGhpcmRfcGFydHkva2Vy
bmVsLysvMTYxMjQzNwo+IAo+IEl0IGhhc24ndCBiZWVuIHN1Ym1pdHRlZCB1cHN0cmVhbSB5ZXQs
IGJ1dCBzaG91bGQgc29vbiBhbmQgSSB0aGluayBpdCB3aWxsIGZpeCB0aGlzIGJlaGF2aW9yLgo+
IAo+IFRoYW5rcywKCklmIHdlJ3JlIGdvaW5nIHRvIHJlcGxhY2Ugb3VyIFNJTVBMRV9ERVZfUE1f
T1BTIGFzIFJhZmFlbCBzdWdnZXN0cywKbWlnaHQgYXMgd2VsbCBhZGQgYSAuc3VzcGVuZF9ub2ly
cSBjYWxsYmFjay4gV2UgY2FuIGp1c3Qgc2F2ZSB0aGUKc3RhdGUgYWdhaW4gdG8gd29yayBhcm91
bmQgdGhpcyB0b28uCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpMaW51eC1udm1lIG1haWxpbmcgbGlzdApMaW51eC1udm1lQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1udm1l
Cg==
