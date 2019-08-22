Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 991799884B
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbCF+CtbaSTxuYf4SuhQyPVELz7ViYxA6LC5ALyL4Us=; b=Jnp7edetX7TQGV
	vpnl6eY0tIZ9+2NKSEFB/8VmRBJgYbZCmkTvgN7UxH25QVgeeWtchTjGJ36gq+nS/eYwG0nGL6KDG
	lWbWlTB6b2htTaifNeV3YD4Ttos6sF+GLYyi8M0KgjOp82xg/8+GK9Dfnpp6FpAMt6igcoBOPBBlh
	Tzy4kaXPEkwZ/kthLHS3IWKPaZnED7KiKUH6HsTMUZGE5FA8mVu70jf7fwFl4H1HBZgTmhC7Pjygd
	teUDk3yo4i67kzvLrVzEwx0eXGVPqABTRMLdnqkAIBmm2EPhUwxyHUOaA//SuYlAdj3VQgyg61MLK
	IQ61QJcPt7CFzIRNNpvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0ad4-0000T1-7u; Thu, 22 Aug 2019 00:07:02 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0acy-0000Si-PJ
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:06:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id AEBD168C7B; Thu, 22 Aug 2019 02:06:52 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:06:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Marta Rybczynska <mrybczyn@kalray.eu>
Subject: Re: [PATCH v2] nvme: allow 64-bit results in passthru commands
Message-ID: <20190822000652.GF9511@lst.de>
References: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <89520652.56920183.1565948841909.JavaMail.zimbra@kalray.eu>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_170656_973570_85FC7BF2 
X-CRM114-Status: GOOD (  16.76  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: sagi@grimberg.me, Samuel Jones <sjones@kalray.eu>,
 Guillaume Missonnier <gmissonnier@kalray.eu>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 11:47:21AM +0200, Marta Rybczynska wrote:
> It is not possible to get 64-bit results from the passthru commands,
> what prevents from getting for the Capabilities (CAP) property value.
> 
> As a result, it is not possible to implement IOL's NVMe Conformance
> test 4.3 Case 1 for Fabrics targets [1] (page 123).
> 
> This issue has been already discussed [2], but without a solution.
> 
> This patch solves the problem by adding new ioctls with a new
> passthru structure, including 64-bit results. The older ioctls stay
> unchanged.

Ok, with my idea not being suitable I think I'm fine with this approach, a
little nitpick below:

> +static bool is_admin_cmd(unsigned int cmd)
> +{
> +	if ((cmd == NVME_IOCTL_ADMIN_CMD) || (cmd == NVME_IOCTL_ADMIN64_CMD))
> +		return true;
> +	return false;
> +}

No need for the inner braces.  But I'm actually not sure the current
code structure is very suitable for extending it.

> +
>  static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>  		unsigned int cmd, unsigned long arg)
>  {
> @@ -1418,13 +1473,13 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>  	 * seperately and drop the ns SRCU reference early.  This avoids a
>  	 * deadlock when deleting namespaces using the passthrough interface.
>  	 */
> -	if (cmd == NVME_IOCTL_ADMIN_CMD || is_sed_ioctl(cmd)) {
> +	if (is_admin_cmd(cmd) || is_sed_ioctl(cmd)) {

So maybe for this check we should have a is_ctrl_iocl() helper instead
that includes the is_sed_ioctl check.

>  		struct nvme_ctrl *ctrl = ns->ctrl;
>  
>  		nvme_get_ctrl(ns->ctrl);
>  		nvme_put_ns_from_disk(head, srcu_idx);
>  
> -		if (cmd == NVME_IOCTL_ADMIN_CMD)
> +		if (is_admin_cmd(cmd))
>  			ret = nvme_user_cmd(ctrl, NULL, argp);
>  		else
>  			ret = sed_ioctl(ctrl->opal_dev, cmd, argp);

And then we can move this whole branch into a helper function,
which then switches on the ioctl cmd, with sed_ioctl as the fallback.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
