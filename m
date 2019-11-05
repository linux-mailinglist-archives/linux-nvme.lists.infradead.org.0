Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0FCF04A7
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 19:03:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AYqhLKDm8ubjyMGbttrkiFyYeQ+QQoguy/eLO8E33J0=; b=bxlH6m7FpRIcuH
	nxxEAOQ+UTioIHpCCooX9IeEYgTA3T3Pe9aR//cMDfg0/x4xP16TCq3B+flYJlHN07jAXMVtIF8wz
	JleFgYVwMZutv77OJxyuWy2YcG7NaFaBs1Vs8BDAEwKebj9zYDcQ9AL9EYSpKCMBoDDQmSxKbLgLd
	eJzDv9Ls9DK57KuXE5lZrfotp7thQq246N6et1sZkkrf9/v6pyPEAgCSlLIvEtTfg11z4jZ5sJNwa
	e0bWt7f9j6e3ZtoJbcS54S1mudGIKSgiZIJqrW3zfjWV+NuTuLtcak7SV44t87PKLWX7usUte9rnM
	lO+cK28DfNznKtlbr6dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS3AX-0001Eu-GR; Tue, 05 Nov 2019 18:03:05 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS3AP-0001EL-4k
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 18:03:00 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 88D0D68AFE; Tue,  5 Nov 2019 19:02:54 +0100 (CET)
Date: Tue, 5 Nov 2019 19:02:54 +0100
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 15/15] nvmet-rdma: Add metadata/T10-PI support
Message-ID: <20191105180254.GJ18972@lst.de>
References: <20191105162026.183901-1-maxg@mellanox.com>
 <20191105162026.183901-17-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191105162026.183901-17-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_100259_723324_AD7ECBA3 
X-CRM114-Status: UNSURE (   7.63  )
X-CRM114-Notice: Please train this message.
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
Cc: sagi@grimberg.me, vladimirk@mellanox.com, idanb@mellanox.com,
 israelr@mellanox.com, linux-nvme@lists.infradead.org, shlomin@mellanox.com,
 oren@mellanox.com, kbusch@kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +static bool nvmet_rdma_pi_enable;
> +module_param_named(pi_enable, nvmet_rdma_pi_enable, bool, 0444);
> +MODULE_PARM_DESC(pi_enable, "Enable metadata (T10-PI) support");

This needs to be a configfs attribute, not a module parameter.

> +	/* Data Out / RDMA WRITE */
> +	r->write_cqe.done = nvmet_rdma_write_data_done;
> +

We should only do that for actual PI enabled controllers.  Also please
use IS_ENABLED or ifdef to only compile this code if we actually support
PI in the kernel build.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
