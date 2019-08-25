Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 639709C148
	for <lists+linux-nvme@lfdr.de>; Sun, 25 Aug 2019 03:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r2IFX83Q/iFvhvHnSHwI6Jzh0BkNl+475IgCLsXpFqI=; b=cKoYaWkp8mM2DA
	X4VH6dHYrAHgRFI6Yw4SfYS/jS6bK45g/XoYvxoxq5XR4D1tNLLe+wDgjbc3b3yJLJLE5dvQvDLP+
	lG8eoEKbq8uKE2xo8Ah4fvhr9TY+XK1vHGfwMKOtmmP5EWqiIGhX6ewCJSs8G2yz6MjVUNKRImZvu
	p2AYpluWhXRBJnXsIWooNjuTQbvk2VlAmjTRdxmMnEASjynzuK8MS2EGwaJOYTtExzDfYD3/bo9tJ
	XJhje6ryk2nI+6pwssomcFS9ojlpL/9XYRQ5qPkiY/QUCE9b4y6MpYvgu2qUM6J/0pm6AaVfKmcsr
	uHQ6bo9+iwL+dsOYlipw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1hUB-00088R-Jq; Sun, 25 Aug 2019 01:38:27 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1hU1-000883-1w
 for linux-nvme@lists.infradead.org; Sun, 25 Aug 2019 01:38:18 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8047968AEF; Sun, 25 Aug 2019 03:38:13 +0200 (CEST)
Date: Sun, 25 Aug 2019 03:38:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v8 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
Message-ID: <20190825013813.GC23887@lst.de>
References: <20190823055442.19148-1-sagi@grimberg.me>
 <20190823055442.19148-8-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190823055442.19148-8-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190824_183817_249477_C5D99F8C 
X-CRM114-Status: GOOD (  25.51  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 22, 2019 at 10:54:42PM -0700, Sagi Grimberg wrote:
> If a controller reset is racing with a namespace revalidation, the
> revalidation (admin) I/O will surely fail, but we should not remove the
> namespace as we will execute the I/O when the controller is back up.
> Same for spurious allocation errors (return -ENOMEM).
> 
> Fix this by checking the specific error code that revalidate_disk
> returns, and if it is a transient error (for example NVME_SC_HOST_PATH_ERROR
> for temporary transport error or ENOMEM as allocation failure), do not remove
> the namespace as it will either recover when the controller is back up and
> schedule a subsequent scan, or the controller is going away and the namespaces
> will be removed anyways.
> 
> This fixes a hang namespace scanning racing with a controller reset and
> also sporious I/O errors in path failover coditions where the
> controller reset is racing with the namespace scan work with multipath
> enabled.
> 
> Reported-by: Hannes Reinecke  <hare@suse.de>
> Reviewed-by: Hannes Reinecke <hare@suse.com>
> Reviewed-by: James Smart <james.smart@broadcom.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/nvme/host/core.c | 15 +++++++++++++--
>  1 file changed, 13 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index a90d05598fc8..305fcd1d8a96 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3456,8 +3456,19 @@ static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>  
>  	ns = nvme_find_get_ns(ctrl, nsid);
>  	if (ns) {
> -		if (ns->disk && revalidate_disk(ns->disk))
> -			nvme_ns_remove(ns);
> +		if (ns->disk) {
> +			int ret = nvme_revalidate_disk(ns->disk);

This still means nvme_revalidate_disk leaks nvme error codes into the
block layer.  I think we need a lower level helper so that always
returns valid error codes.  While we're at it - I think any namespaces
that is on ->namespaces and thus can be found here should have
ns->disk non-NULL.

> +
> +			/*
> +			 * remove the ns only if the return status is
> +			 * not a temporal execution error.
> +			 */

Nit: Please start sentences with an uppercase character.

> +			if (ret && ret != -ENOMEM &&
> +			    ret != NVME_SC_HOST_PATH_ERROR)
> +				nvme_ns_remove(ns);

Shuldn't this also include anything that has the DNR bit not set?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
