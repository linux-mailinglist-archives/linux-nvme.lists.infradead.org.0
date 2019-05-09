Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A2EE1852B
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 08:13:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fLtwWWRS9IinZQVzZVHssi+kXseXBRISoUFp5DxJdIg=; b=etfCoHwd77UNtN
	oS+YGPu/N4HG3JwXhfzvFg3O0CtSe5UrM+y3hG+cGkCEtS1hHzXLxovGhAHkykQWgGPw87tadYfcu
	XjUZUfm/fbY8lKI7enjgCmlLM5C4NCD+7fUV+mtP5v+dXYy7R93zQWoy+Vucgx4CL4Egg5z5cDg50
	TAKdA83nWIiYg8Nr3jR6XJa922upTbemOO37Kthe7RlOV+hJ2Rp30IDELJuICOhiTBguUYPeQdlkR
	IdaiNBYeY2Pvl0UQ9l0OxfNE/A4/UZFNvCwf3CeWb+hZngSt0rOhfvpMBHFE0Xa28arB/P70W3BnC
	jFuhUZvSvgAtLmNW50kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOcIp-0007vH-7g; Thu, 09 May 2019 06:13:11 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOcId-0007uU-OC
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 06:13:01 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id C038667358; Thu,  9 May 2019 08:12:37 +0200 (CEST)
Date: Thu, 9 May 2019 08:12:37 +0200
From: Christoph Hellwig <hch@lst.de>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of
 D3 on Suspend-to-Idle
Message-ID: <20190509061237.GA15229@lst.de>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
 <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_231259_942714_0ADC2C8E 
X-CRM114-Status: GOOD (  18.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: axboe@fb.com, sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 kai.heng.feng@canonical.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 08:28:30PM +0000, Mario.Limonciello@dell.com wrote:
> You might think this would be adding runtime_suspend/runtime_resume
> callbacks, but those also get called actually at runtime which is not
> the goal here.  At runtime, these types of disks should rely on APST which
> should calculate the appropriate latencies around the different power states.
> 
> This code path is only applicable in the suspend to idle state, which /does/
> call suspend/resume functions associated with dev_pm_ops.  There isn't
> a dedicated function in there for use only in suspend to idle, which is
> why pm_suspend_via_s2idle() needs to get called.

The problem is that it also gets called for others paths:

#ifdef CONFIG_PM_SLEEP
#define SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn) \
        .suspend = suspend_fn, \
	.resume = resume_fn, \
	.freeze = suspend_fn, \
	.thaw = resume_fn, \
	.poweroff = suspend_fn, \
	.restore = resume_fn,
#else
else
#define SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn)
#endif

#define SIMPLE_DEV_PM_OPS(name, suspend_fn, resume_fn) \
const struct dev_pm_ops name = { \
	SET_SYSTEM_SLEEP_PM_OPS(suspend_fn, resume_fn) \
}

And at least for poweroff this new code seems completely wrong, even
for freeze it looks rather borderline.

And more to the points - if these "modern MS standby" systems are
becoming common, which it looks they are, we need support in the PM core
for those instead of working around the decisions in low-level drivers.

> SIMPLE_DEV_PM_OPS normally sets the same function for suspend and
> freeze (hibernate), so to avoid any changes to the hibernate case it seems
> to me that there needs to be a new nvme_freeze() that calls into the existing
> nvme_dev_disable for the freeze pm op and nvme_thaw() that calls into the
> existing nvme_reset_ctrl for the thaw pm op.

At least, yes.

> 
> > enterprise class NVMe devices
> > that don't do APST and don't really do different power states at
> > all in many cases.
> 
> Enterprise class NVMe devices that don't do APST - do they typically
> have a non-zero value for ndev->ctrl.npss?
> 
> If not, they wouldn't enter this new codepath even if the server entered into S2I.

No, devices that do set NPSS will have at least some power states
per definition, although they might not be too useful.  I suspect checking
APSTA might be safer, but if we don't want to rely on APST we should
check for a power state supporting the condition that the MS document
quoted in the original document supports.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
