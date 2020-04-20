Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8C551B1965
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Apr 2020 00:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bEssgq0/3X1QPQjavu06DeSOqUJVPcjtjTtgHdMsuyw=; b=a4CB3Y9R4j3tar
	ZylxdEMKuQs7txeUp9eaeFgebMSBYVKTwA9EcEoMjsc2/lEF08wknNKs6THwbsB1co86I8y7hIRJA
	zFjD4l0uUE30NxGigicYLXlLti8amo+8fWeF1bFeaQ6XqABK71fQWAElhm5k8Y/zxtANmWqbaBavl
	q45PFz6LvJpEcs4sz1cNmYLuussOR7S6i4GjuBrDqaPTjb19/SkEDX6xZbsAvAtxukDV9wmtOP6pv
	v4SrAZ7UrLHbE6wVl+/EdH528/QwWL8010+fDhCjCCoQtjB/xQijjYsEeRoCy26hl8WVfuRFfV2vt
	cRlA9W/GPKnG+tzYQCdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQesW-0001bQ-Jx; Mon, 20 Apr 2020 22:27:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQesS-0001aA-L7
 for linux-nvme@lists.infradead.org; Mon, 20 Apr 2020 22:26:57 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3ABAA2078C;
 Mon, 20 Apr 2020 22:26:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587421614;
 bh=EWVzh88DNd4xeWlsexuidhZpIDlePK+hTSyEl1GX/8o=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=s8rq4igMfXXijc389ELBl5dQwloilfDDQMohpJXxaRWtdIKgyDc07+5kh8co+PUup
 r+6Z54NwOW5xZFGmhIX/9UUU37s4Z7yGbgpCmN8isJapDDS3+dQdMBqGLYl1Dfqq65
 pk9gQ+cFF7aXKSpcYIsxq7I56fqA6ULGH895zwsI=
Date: Tue, 21 Apr 2020 07:26:46 +0900
From: Keith Busch <kbusch@kernel.org>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v12 1/9] nvme-core: Clear any SGL flags in passthru
 commands
Message-ID: <20200420222646.GA11115@redsun51.ssa.fujisawa.hgst.com>
References: <20200420164700.21620-1-logang@deltatee.com>
 <20200420164700.21620-2-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200420164700.21620-2-logang@deltatee.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_152656_724605_E76416E2 
X-CRM114-Status: GOOD (  14.92  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 Jens Axboe <axboe@fb.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Apr 20, 2020 at 10:46:52AM -0600, Logan Gunthorpe wrote:
> The host driver should decide whether to use SGLs or PRPs and they
> currently assume the flags are cleared after the call to
> nvme_setup_cmd(). However, passed-through commands may erroneously
> set these bits; so clear them for all cases.
> 
> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
> Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/nvme/host/core.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 91c1bd659947..f5283b300e87 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -756,6 +756,8 @@ blk_status_t nvme_setup_cmd(struct nvme_ns *ns, struct request *req,
>  	case REQ_OP_DRV_IN:
>  	case REQ_OP_DRV_OUT:
>  		memcpy(cmd, nvme_req(req)->cmd, sizeof(*cmd));
> +		/* passthru commands should let the driver set the SGL flags */
> +		cmd->common.flags &= ~NVME_CMD_SGL_ALL;
>  		break;

Is this really necessary? The passthrough handler currently rejects user
commands that set command flags:

static int nvme_user_cmd(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
			struct nvme_passthru_cmd __user *ucmd)
{
	...
	if (cmd.flags)
		return -EINVAL;

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
