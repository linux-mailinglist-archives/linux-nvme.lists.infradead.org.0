Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2B1FD2E68
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 18:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=jOVn8aciPLSlEk0vTUi7bE6tKOQ8vwgElpkTnJCa934=; b=RBbz/9MZ0MHzq4
	24k72vvSSMgd+zhgyY1MtVCftDmGAhNcTyEM6DX5QjLAVvHoBPmV7zP6EBM2umux2fgFRFlU8uFL8
	iqGFsUhnXv3Z1vhjIdd7QYvPWCHnTiV4WHPaDxzUs1AQMGE+ZNuywDLmToCMcEUySXdqQvzDzaWjQ
	47YyVBAOk6uPCeLYC9mAEkyoeNkZLTmKdpZRY8IGMaoShICJLhEgiWUclwPsWrJeC76GeIUSouzwI
	ofjoKRNErR7U4mb8ZcuNP56xSJy8nVC1L5jJSZFFhdPJc79Lj+CoX23CuWq1ziy2x4Qwjyo5zcEoh
	xnw3o00bowfBxaUdoPHA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIb59-0005wl-4M; Thu, 10 Oct 2019 16:14:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIb53-0005vt-4B
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 16:14:22 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 44118208C3;
 Thu, 10 Oct 2019 16:14:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570724060;
 bh=FAVk8gKLODf5YWnYfPHlctJQwGl0YhqkTGhjRC/RqsU=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=uQtOtVeF2sLlaukbORqJxciQvRrLcp3kWiz/Sz6arfB4ukY5c1rhpODOSHY9kbUbO
 sXvmB8z8UuCDA4ly22WRfROejwODMbrh/c+fuw3WM6I1LDfEksb/iwm4PRFceuyT1K
 RcP8aYPKlkFKiFjoVyWKd17mpeYjBBUP8HdrJlUM=
Date: Thu, 10 Oct 2019 11:14:17 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 1/1] PCI/ASPM: Remove pcie_aspm_enabled() unnecessary
 locking
Message-ID: <20191010161417.GA14520@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010140121.GA31701@lst.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_091421_189650_F2653734 
X-CRM114-Status: GOOD (  11.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 FAKE_REPLY_C           No description available.
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>, linux-pci@vger.kernel.org,
 linux-pm@vger.kernel.org, "Rafael J . Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Rajat Jain <rajatja@google.com>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 04:01:21PM +0200, Christoph Hellwig wrote:
> On Thu, Oct 10, 2019 at 07:47:46AM -0500, Bjorn Helgaas wrote:
> > +	return bridge->link_state ? !!bridge->link_state->aspm_enabled : false;
> 
> Can we unobsfucated this while we're at it?
> 
> 	if (!bridge->link_state)
> 		return false;
> 	return bridge->link_state->aspm_enabled;

Yep, after some of the follow-up patches from Heiner, it looks like
this:

  bool pcie_aspm_enabled(struct pci_dev *pdev)
  {
	  struct pcie_link_state *link = pcie_aspm_get_link(pdev);

	  if (!link)
		  return false;

	  return link->aspm_enabled;
  }


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
