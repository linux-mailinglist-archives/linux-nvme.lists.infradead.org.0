Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8376B180991
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 21:53:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pj8xP7rdEVOdXY3LSKqV6BMfbbW4kTKYxt8z06N+n2M=; b=lU01sNnbicbUt/
	gRr7HU67Onao/BXhGgXPJY8HAdxccB5SEFUoBAqjDaanuWFukesmYVAW10gTH/rXNtgTt7KnQ9scw
	tgXqMe8QXQCeb74w9PyXyz+t32ngWHcNbJ05rRYEdscCyjvPnoVxQh0GBgjd7W27vr/i3oO52fShD
	VS4uhvDyedDg4/0CkLClTH7G71+lzVx5RiuciNZ30YcZ5o7Rev0MRhV+jxQXW/gBrLu0s7yagq2Of
	hCopx07glL1eM4SclAY7omI/bn8CrQak3oGASWI59l2ldcIuWY6Uy+EjWceLSKI6a/YgmmnuUf6ha
	otKYaxwwomJhajU7GE8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBls2-0001p6-2M; Tue, 10 Mar 2020 20:52:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBlrx-0001oZ-R1
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 20:52:55 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBF16215A4;
 Tue, 10 Mar 2020 20:52:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583873572;
 bh=yai84RkOrWCBvQy+zjhigd14iq991isTYtyMhYUlZgk=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=fZUtX49tnW/xV99wsmydjeyXpLzUCELOq/5dBgKPpCbbsueLh3muM6/FOZhgsPOf8
 yrHdHnGcAUZBpAGG+qetcSyYjOpZa7n8S7UyNceA0wkXvgsOsT1jPAtXK9mkXiIhfy
 kyHMEb2WLEExdTPWRoyxndnuguduqq2xC09pHmPo=
Date: Tue, 10 Mar 2020 13:52:49 -0700
From: Keith Busch <kbusch@kernel.org>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH V3 1/3] nvmet: Add get_mdts op for controllers
Message-ID: <20200310205249.GA604509@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200308105505.14305-1-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200308105505.14305-1-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_135253_910016_2F3E4A13 
X-CRM114-Status: UNSURE (   9.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sagi@grimberg.me, vladimirk@mellanox.com, bharat@chelsio.com,
 nirranjan@chelsio.com, linux-nvme@lists.infradead.org, shlomin@mellanox.com,
 jgg@mellanox.com, krishna2@chelsio.com, hch@lst.de, bvanassche@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Mar 08, 2020 at 12:55:03PM +0200, Max Gurtovoy wrote:
> Some transports, such as RDMA, would like to set the Maximum Data
> Transfer Size (MDTS) according to device/port/ctrl characteristics.
> This will enable the transport to set the optimal MDTS according to
> controller needs and device capabilities. Add a new nvmet transport
> op that is called during ctrl identification. This will not effect
> transports that don't implement this option. The return value of the new
> op is according to the NVMe spec definition for MDTS.
> 
> Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

Series queued up for 5.7.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
