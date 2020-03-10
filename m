Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F16B1809C2
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Mar 2020 21:59:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t3TX2/iWwfxQqm8yAh4vP0kL3j5AfDNYGUznwtbBZhs=; b=bsXDHrFl5N8Hfj
	+1KXfs1l28DoQcYPW8lRnYSIWR63fXzCxEujroPj4mkeuj6OI4QoV2c/rbbA7koG4rcJIZ2vF/T72
	4fCwzsxclAmpswfloroKMWdV1UwVE+y3BAvkPrrwEvYwZmGolYWcyAvcsRJI/1WQP/Qe1qE5JlrJ5
	yUT/aCuQj7JmxT9Ljvqe9xNoGurBUXF25H89rSVBOBIBGyDTAyF9X9LZ7YA9AChOKhFfcRUjo/v4e
	OK3pOaXF+O/J5X5mh9QZhRt0jvrMMioPP5wRWRvJe/c+q3NEz/WPgVTcoKfJm7YS0IgtqFq0TWe1L
	tXksTvfFP/W7gqIxMKcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBlyc-0004cd-2w; Tue, 10 Mar 2020 20:59:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBlyX-0004c7-JO
 for linux-nvme@lists.infradead.org; Tue, 10 Mar 2020 20:59:42 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C536E215A4;
 Tue, 10 Mar 2020 20:59:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583873981;
 bh=3sPIdnBr9v7RZA4nE5B3Yg3InvtEVR8cOXudgA35fbU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=cVGBhmVTRQ3ln/30HZV9lX37+j5vxGkhfsG36xbMx/Gxyr2Lcev6OTDC/8GKSCRv8
 pv+OFFEoUKZ/wdX8Q3HKOQlFYsYpAnWiRNBEmN+/1Qwj6DAxkpW49BAl8JjfgNg9TJ
 RzcimG9dQxmBMRdxXfatt026qmRcFIfXkfxCVvDM=
Date: Tue, 10 Mar 2020 13:59:38 -0700
From: Keith Busch <kbusch@kernel.org>
To: Prabhath Sajeepa <psajeepa@purestorage.com>
Subject: Re: [PATCH] nvme-rdma: Avoid double freeing of async event data
Message-ID: <20200310205938.GE604509@dhcp-10-100-145-180.wdl.wdc.com>
References: <1583788073-39681-1-git-send-email-psajeepa@purestorage.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1583788073-39681-1-git-send-email-psajeepa@purestorage.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_135941_662808_2B87B55F 
X-CRM114-Status: UNSURE (   8.28  )
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
Cc: roland@purestorage.com, sagi@grimberg.me, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 03:07:53PM -0600, Prabhath Sajeepa wrote:
> The timeout of identify cmd, which is invoked as part of admin queue
> creation, can result in freeing of async event data both in
> nvme_rdma_timeout handler and error handling path of
> nvme_rdma_configure_admin queue thus causing NULL pointer reference.
> Call Trace:
>  ? nvme_rdma_setup_ctrl+0x223/0x800 [nvme_rdma]
>  nvme_rdma_create_ctrl+0x2ba/0x3f7 [nvme_rdma]
>  nvmf_dev_write+0xa54/0xcc6 [nvme_fabrics]
>  __vfs_write+0x1b/0x40
>  vfs_write+0xb2/0x1b0
>  ksys_write+0x61/0xd0
>  __x64_sys_write+0x1a/0x20
>  do_syscall_64+0x60/0x1e0
>  entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
> Signed-off-by: Prabhath Sajeepa <psajeepa@purestorage.com>
> Reviewed-by: Roland Dreier <roland@purestorage.com>

Thanks, applied to new branch for 5.6-rc6.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
