Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 154596A2AE
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 09:11:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=11/1tYaaxIdKjp2fOf1nca6KGI56eo/MXQT2vUB0Vk8=; b=nUGuzx37u7XfNk
	4VOX8G9VmKK2X01dZ+o30UPetOGdcTWtWqVSjizyr4P3KYIROYJzpj3iQ34RKwg4V8uO0slQbRFCc
	NZGINsFAsr8+UB5Zw48EPqIThymwC0VLD8m6PmeNjInm372VX94gpTFj4gMdpGMi2MH19fzqQCecR
	y04s3Kf/0UCg6y2Ya00DhruoR9MW68rqMUDsLC2fGox616qNi1qFr/aE+IUg491BkeRQsjWOfTSun
	VYgpa8BUFJRwL0MtBIVzJZP7waDhvQL719C++K1rlba7cU/7pw0W8G0NJhmKBCIDlibLfzmuwg7fU
	fmRbiSevY8svcLVEQlUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnHbs-00033s-Sq; Tue, 16 Jul 2019 07:10:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnHbf-00033M-Bs
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 07:10:36 +0000
Received: from localhost (unknown [193.47.165.251])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E9E0C20880;
 Tue, 16 Jul 2019 07:10:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563261033;
 bh=pL4HI7tq45JjHGebbC89eueuXA5IWsPnnCyLKxWS3Ag=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X88DsIla1HEWYEtdE+IcCsLmmrqu/MohvCg/ZRxbTiqxE1zej8g7hfk0Beb+f6yXb
 r4B1y6wWWYDTPayR9G4XX555oVIOzl0nX6Cg1xORDgmrh59YEThx/taWRMALokE3Ux
 SZPChhDgyqIy8h3fx1DG53pE8PhyXSXIoitiqUx8=
Date: Tue, 16 Jul 2019 10:10:30 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Selvin Xavier <selvin.xavier@broadcom.com>
Subject: Re: [PATCH for-rc] RDMA/bnxt_re: Honor vlan_id in GID entry comparison
Message-ID: <20190716071030.GH10130@mtr-leonro.mtl.com>
References: <20190715091913.15726-1-selvin.xavier@broadcom.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190715091913.15726-1-selvin.xavier@broadcom.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_001035_421756_21EB805B 
X-CRM114-Status: UNSURE (   7.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Parav Pandit <parav@mellanox.com>, linux-rdma@vger.kernel.org,
 stable@vger.kernel.org, jgg@ziepe.ca, dledford@redhat.com,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jul 15, 2019 at 05:19:13AM -0400, Selvin Xavier wrote:
> GID entry consist of GID, vlan, netdev and smac.
> Extend GID duplicate check companions to consider vlan_id as well
> to support IPv6 VLAN based link local addresses. Introduce
> a new structure (bnxt_qplib_gid_info) to hold gid and vlan_id information.
>
> The issue is discussed in the following thread
> https://www.spinics.net/lists/linux-rdma/msg81594.html
>
> Fixes: 823b23da7113 ("IB/core: Allow vlan link local address based RoCE GIDs")
> Cc: <stable@vger.kernel.org> # v5.2+
> Reported-by: Yi Zhang <yi.zhang@redhat.com>

> Co-developed-by: Parav Pandit <parav@mellanox.com>
> Signed-off-by: Parav Pandit <parav@mellanox.com>

I never understood why bad habits are so stinky.

Can you please explain us what does it mean Co-developed-by and
Signed-off-by of the same person in the same patch?

> Signed-off-by: Selvin Xavier <selvin.xavier@broadcom.com>
> ---

Thanks

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
