Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52817D2BF9
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 16:01:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ujkc4J0JM8S8i74GJ6ShJI1uR8HZUcPuD2DA5nBGZCc=; b=T4Mlo7UKHJf6Yy
	mCHjg6Gi3ZQIjswXsrMsqceEo349V8+Wz0/6198st8QkwRk+pKnHvksmuGW9hIV8IVBUKL09H7fSh
	BDG9UBsoUa860jC5Oz6l6+7dtieP015esIG8Wxm9uhYKZMsZXQgq0vesVJVJvYZZzGBQ5ZP7fvERC
	8IGhoLw8kDp+P+M6Da2ePaQqNDD9uMnEG+sRRz2fWEZ+KJvVdz6Ktb63BwN0uO3xiG8VvGDteM2Gz
	PHxWNVhPPhffzjvLGyXCgh8RinYtQiBfkQxUAcfetsm5apWJ4+e+zFqeu7iHhzTX8jtqDbp5uPQv0
	HMtQk50lWSna0t8ZyizQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIZ0W-0004vn-0w; Thu, 10 Oct 2019 14:01:32 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIZ0P-0004vH-Vx
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 14:01:27 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E1F5468C65; Thu, 10 Oct 2019 16:01:21 +0200 (CEST)
Date: Thu, 10 Oct 2019 16:01:21 +0200
From: Christoph Hellwig <hch@lst.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH 1/1] PCI/ASPM: Remove pcie_aspm_enabled() unnecessary
 locking
Message-ID: <20191010140121.GA31701@lst.de>
References: <20191010124746.2882-1-helgaas@kernel.org>
 <20191010124746.2882-2-helgaas@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010124746.2882-2-helgaas@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_070126_179186_9EF527DE 
X-CRM114-Status: UNSURE (   6.61  )
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
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 07:47:46AM -0500, Bjorn Helgaas wrote:
> +	return bridge->link_state ? !!bridge->link_state->aspm_enabled : false;

Can we unobsfucated this while we're at it?

	if (!bridge->link_state)
		return false;
	return bridge->link_state->aspm_enabled;

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
