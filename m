Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DD7D1FB0E
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 21:39:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tx5i0pgwbMT1tPM+2/8YOdggCMXOJY/D2DjovjpK81M=; b=DleEKKNgcWUJHO
	kuyf/kmrYLWtxoJG/KKf9NKXihTq6TE52t4o722ye0jHbSMbDNtJWaVBr1EgnELwYbICVvRBHFkJD
	fBuMo7yv3kqF7jjGoUHEkudwEmOgS7vbZBTOeIVwU+AoOxgAimDsAt+P8UO5xr+uRYYEu/Vnqarh5
	5I0KCGm8iuH7oMLsvyGCU0D0pktxzMvVo1X1stgzrpbCeKdDv8jfUVpNLpuwRwaSetX9ezmxHU/iZ
	4tl1NbiKoUfiQwz/ISbEQONJohY8pITMPtFHmf3QxSDyCA3Pl3x+PAZorq0ixwUeHn+WTrtIwFL+2
	lr8vdtcY8BTcBMbfLl+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQzkZ-0006M2-NX; Wed, 15 May 2019 19:39:39 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQzkU-0006Iy-Uq
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 19:39:36 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 12:39:33 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga006.fm.intel.com with ESMTP; 15 May 2019 12:39:32 -0700
Date: Wed, 15 May 2019 13:34:16 -0600
From: Keith Busch <kbusch@kernel.org>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190515193415.GA22079@localhost.localdomain>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <f3d7281f020844828161b2387732cc42@AUSX13MPC105.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f3d7281f020844828161b2387732cc42@AUSX13MPC105.AMER.DELL.COM>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_123935_008881_A86E6D98 
X-CRM114-Status: UNSURE (   8.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 07:33:45PM +0000, Mario.Limonciello@dell.com wrote:
> > +static int nvme_deep_state(struct nvme_dev *dev) {
> > +	struct pci_dev *pdev = to_pci_dev(dev->dev);
> > +	struct nvme_ctrl *ctrl = &dev->ctrl;
> > +	int ret = -EBUSY;;
> 
> Looks like a small typographical error with the double ;;

Good eye. I won't respin for that just yet. :)

Just fyi, I accidently didn't explicitly CC you on patches 1-5, and most
of those are necessary for patch 6/6 to compile. They whole series is
on the mailing list though.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
