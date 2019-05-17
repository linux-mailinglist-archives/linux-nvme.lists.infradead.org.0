Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9645121574
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 10:39:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=mAPSxq8fio2YZkIAMEPZvlqUbXi5UWBzAsPij1qRrjg=; b=TVdsZyov6eLMsmaPSDRrL9fCa
	3uWL5z3Y+VwSvtBFuzptMk3EwAZx2+CbDfy8q/sCFl/9tjBideU56O1W+RqCjOksTKulybfko0q43
	VpRUULi4OL5ljJpv0MLdhoSqNjTxrbvx3Z2wUipRc4IE8SFCMFzWlxp9H2nYFEJmaZ8stSTC587zj
	3Qb1OP779et1tE4rG9i6drFC+e+QNIP5WzpzHipjTwzGdwiXl5+BcQvwn8JCbssdnwZ7fGMtmDn0B
	+B+gvD5aas2Rl478WRWJ52a9oA/cJcYkwiNtp3DRfbWTawCTfqR8TJ/oEfDPsvKzu1GTCjYZkRzfx
	evVsWECdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRYOv-0005Xr-De; Fri, 17 May 2019 08:39:37 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRYOp-0005XF-SY
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 08:39:33 +0000
Received: by mail-ot1-f68.google.com with SMTP id c3so6033973otr.3
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 01:39:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=k3SMUjKH+55mD4cbLFISodsaAuBtdcQos+/b++LIQsE=;
 b=WtyPYLILboMjGt/Iq7Iu8D885S47MemHSgMNby0a2C1XRLKsBoWL7zC5qT+BGe6S3i
 nbsqPxwy08b+fTW8Rc5palQuMy8NHmUsQDEfjEX/zh5aNPMVUBpZ39WIBblwWErinA66
 NYUQ88X3AL2tfTByjkvYBlYbIUi9RooPNEErKeeO0iHSwaVKsWIYrqgHhQoBaNGLzFGU
 ZjJYTJF1Q6e4+gnJ5FT+oz6Q3lCdFJvnKNluLRtrzMlHAf/jT88skNwhqIRdoVQb9+8h
 UVYoeye0ABe1WP2Xs2LEU6MFMfyAHG6pxpVS7myp8wFSYfEGFIjPJUOS0RoaFAPy/fG4
 oxIQ==
X-Gm-Message-State: APjAAAXmjahXRUBL6p0f32toGP2JxjCY2TScysTUdbEikFEJsnrfgorF
 8mG0q+QLiOeKqehRcfm2G+0RIAY+5v0JGwMyegQ=
X-Google-Smtp-Source: APXvYqxZC4jqjMrfMmJBTgmD8yXAPvdRqDrDoJVBohouDuIPJ18oBvPbJRyGdCydri6QAuebh8IJ8HSLFBKk2U/7NAk=
X-Received: by 2002:a9d:6b98:: with SMTP id b24mr3578656otq.189.1558082370568; 
 Fri, 17 May 2019 01:39:30 -0700 (PDT)
MIME-Version: 1.0
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
 <20190516142657.GD23333@localhost.localdomain>
 <70235CA3-0FBB-4A06-996F-647A0D95C6D0@canonical.com>
 <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
 <20190516193822.GA23853@localhost.localdomain>
 <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
 <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
In-Reply-To: <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 17 May 2019 10:39:19 +0200
Message-ID: <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
To: Keith Busch <kbusch@kernel.org>
Content-Type: multipart/mixed; boundary="0000000000003aa52f058911528d"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_013931_932909_5861B9B5 
X-CRM114-Status: GOOD (  25.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

--0000000000003aa52f058911528d
Content-Type: text/plain; charset="UTF-8"

On Thu, May 16, 2019 at 10:56 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Thu, May 16, 2019 at 10:45 PM Keith Busch <kbusch@kernel.org> wrote:
> >
> > On Thu, May 16, 2019 at 10:25:47PM +0200, Rafael J. Wysocki wrote:
> > > On Thu, May 16, 2019 at 9:43 PM Keith Busch <kbusch@kernel.org> wrote:
> > > > If we're going to replace our SIMPLE_DEV_PM_OPS as Rafael suggests,
> > > > might as well add a .suspend_noirq callback. We can just save the
> > > > state again to work around this too.
> > >
> > > Relax, pretty please.  Saving the state again shouldn't be necessary.
> > >
> > > Let's first understand what's going on.
> >
> > Hah, okay fair enough.
> >
> > FWIW, I've tried current mainline on two different platforms and I see
> > only the expected number of calls to pci_pm_suspend_noirq, so everything
> > works for me.
>
> And I don't see why it might not work anywhere else other than a
> kernel source hacked into pieces or a platform with fundamental
> problems. :-)

I forgot about one thing which is relevant here, sorry about that.

If there is a spurious EC wakeup during s2idle, pci_pm_suspend_noirq()
*will* be run again after pci_pm_resume_noirq() without going through
the entire system resume and next suspend.  In that case the second
iteration of pci_pm_suspend_noirq() will put the device into D3, if
that's the target power state of the device as determined by
pci_prepare_to_sleep(), because pci_pm_resume_noirq() calls
pci_restore_state() which clears state_saved.

That's not what appears to happen on the test platform as per the
posted log, but nevertheless it can happen.

Arguably, the driver should not need to worry about that, so that
needs to be addressed in the PCI core IMO.

The attached patch should help (not inline to avoid gmail-induced
white space damage).

I will post it properly with a changelog shortly.

--0000000000003aa52f058911528d
Content-Type: text/x-patch; charset="US-ASCII"; name="pci-pm-skip-noirq.patch"
Content-Disposition: attachment; filename="pci-pm-skip-noirq.patch"
Content-Transfer-Encoding: base64
Content-ID: <f_jvrtwzfo0>
X-Attachment-Id: f_jvrtwzfo0

LS0tCiBkcml2ZXJzL3BjaS9wY2ktZHJpdmVyLmMgfCAgIDE3ICsrKysrKysrKysrKysrKystCiBp
bmNsdWRlL2xpbnV4L3BjaS5oICAgICAgfCAgICAxICsKIDIgZmlsZXMgY2hhbmdlZCwgMTcgaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQoKSW5kZXg6IGxpbnV4LXBtL2RyaXZlcnMvcGNpL3Bj
aS1kcml2ZXIuYwo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09Ci0tLSBsaW51eC1wbS5vcmlnL2RyaXZlcnMvcGNpL3BjaS1k
cml2ZXIuYworKysgbGludXgtcG0vZHJpdmVycy9wY2kvcGNpLWRyaXZlci5jCkBAIC03MzQsNiAr
NzM0LDggQEAgc3RhdGljIGludCBwY2lfcG1fc3VzcGVuZChzdHJ1Y3QgZGV2aWNlCiAJc3RydWN0
IHBjaV9kZXYgKnBjaV9kZXYgPSB0b19wY2lfZGV2KGRldik7CiAJY29uc3Qgc3RydWN0IGRldl9w
bV9vcHMgKnBtID0gZGV2LT5kcml2ZXIgPyBkZXYtPmRyaXZlci0+cG0gOiBOVUxMOwogCisJcGNp
X2Rldi0+c2tpcF9idXNfcG0gPSBmYWxzZTsKKwogCWlmIChwY2lfaGFzX2xlZ2FjeV9wbV9zdXBw
b3J0KHBjaV9kZXYpKQogCQlyZXR1cm4gcGNpX2xlZ2FjeV9zdXNwZW5kKGRldiwgUE1TR19TVVNQ
RU5EKTsKIApAQCAtODI3LDcgKzgyOSwyMCBAQCBzdGF0aWMgaW50IHBjaV9wbV9zdXNwZW5kX25v
aXJxKHN0cnVjdCBkCiAJCX0KIAl9CiAKLQlpZiAoIXBjaV9kZXYtPnN0YXRlX3NhdmVkKSB7CisJ
aWYgKHBjaV9kZXYtPnNraXBfYnVzX3BtKSB7CisJCS8qCisJCSAqIFRoZSBmdW5jdGlvbiBpcyBy
dW5uaW5nIGZvciB0aGUgc2Vjb25kIHRpbWUgaW4gYSByb3cgd2l0aG91dAorCQkgKiBnb2luZyB0
aHJvdWdoIGZ1bGwgcmVzdW1lLCB3aGljaCBpcyBwb3NzaWJsZSBvbmx5IGR1cmluZworCQkgKiBz
dXNwZW5kLXRvLWlkbGUgaW4gYSBzcHVyaW91cyB3YWtldXAgY2FzZS4gIE1vcmVvdmVyLCB0aGUK
KwkJICogZGV2aWNlIHdhcyBvcmlnaW5hbGx5IGxlZnQgaW4gRDAsIHNvIGl0cyBwb3dlciBzdGF0
ZSBzaG91bGQKKwkJICogbm90IGJlIGNoYW5nZWQgaGVyZSBhbmQgdGhlIGRldmljZSByZWdpc3Rl
ciB2YWx1ZXMgc2F2ZWQKKwkJICogb3JpZ2luYWxseSBzaG91bGQgYmUgcmVzdG9yZWQgb24gcmVz
dW1lIGFnYWluLgorCQkgKi8KKwkJcGNpX2Rldi0+c3RhdGVfc2F2ZWQgPSB0cnVlOworCX0gZWxz
ZSBpZiAocGNpX2Rldi0+c3RhdGVfc2F2ZWQpIHsKKwkJaWYgKHBjaV9kZXYtPmN1cnJlbnRfc3Rh
dGUgPT0gUENJX0QwKQorCQkJcGNpX2Rldi0+c2tpcF9idXNfcG0gPSB0cnVlOworCX0gZWxzZSB7
CiAJCXBjaV9zYXZlX3N0YXRlKHBjaV9kZXYpOwogCQlpZiAocGNpX3Bvd2VyX21hbmFnZWFibGUo
cGNpX2RldikpCiAJCQlwY2lfcHJlcGFyZV90b19zbGVlcChwY2lfZGV2KTsKSW5kZXg6IGxpbnV4
LXBtL2luY2x1ZGUvbGludXgvcGNpLmgKPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PQotLS0gbGludXgtcG0ub3JpZy9pbmNs
dWRlL2xpbnV4L3BjaS5oCisrKyBsaW51eC1wbS9pbmNsdWRlL2xpbnV4L3BjaS5oCkBAIC0zNDQs
NiArMzQ0LDcgQEAgc3RydWN0IHBjaV9kZXYgewogCQkJCQkJICAgRDNjb2xkLCBub3Qgc2V0IGZv
ciBkZXZpY2VzCiAJCQkJCQkgICBwb3dlcmVkIG9uL29mZiBieSB0aGUKIAkJCQkJCSAgIGNvcnJl
c3BvbmRpbmcgYnJpZGdlICovCisJdW5zaWduZWQgaW50CXNraXBfYnVzX3BtOjE7CS8qIEludGVy
bmFsOiBTa2lwIGJ1cy1sZXZlbCBQTSAqLwogCXVuc2lnbmVkIGludAlpZ25vcmVfaG90cGx1Zzox
OwkvKiBJZ25vcmUgaG90cGx1ZyBldmVudHMgKi8KIAl1bnNpZ25lZCBpbnQJaG90cGx1Z191c2Vy
X2luZGljYXRvcnM6MTsgLyogU2xvdEN0bCBpbmRpY2F0b3JzCiAJCQkJCQkgICAgICBjb250cm9s
bGVkIGV4Y2x1c2l2ZWx5IGJ5Cg==
--0000000000003aa52f058911528d
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--0000000000003aa52f058911528d--

