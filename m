Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AE20BE78A
	for <lists+linux-nvme@lfdr.de>; Wed, 25 Sep 2019 23:36:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hqMyjv8VYTCfK/8WRQmnK4qglmUedZA/3mG8DKpmtVw=; b=otKSiMj1brZ12c
	vKHvcXYQ3SjOKFLQ2bN6Vz0+PyLLTRgvz5A5jOw7O/kF83XIJAB4VarjcOMwNpK1rCTcLSLk8LGcG
	66NsRun9iWOvpcQ6RsscHAhqN48kabxgM/9lqgGK0QqvaGsu+JO8eCoTo5rlNSioigUYxSDhs8XiD
	jXfkjop6bu7WVzvEx759vyhkZ4/HNCL2Gi0Db31jnmJ5R2yZotppgwBwLX7j5yB4Waisdhz217A51
	XZJfMCYedfxWQrSUb1CqQ9GNOZWxUDnjc4dalSY2E3eyZ4cqEEO9IMW3o+oRAVwCqajliTvsdqvcS
	K0RaAi0EzhKTl7c7CR0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDExj-0001h0-JO; Wed, 25 Sep 2019 21:36:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDExW-0001eI-La
 for linux-nvme@lists.infradead.org; Wed, 25 Sep 2019 21:36:28 +0000
Received: from C02WT3WMHTD6 (rap-us.hgst.com [199.255.44.250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3B5A20872;
 Wed, 25 Sep 2019 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569447386;
 bh=QC0u3XMA0nF5eJQzGFD0cLsBChxWfnkO0vLwNCeBCDQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=BImGnchEgZB7fhM4qgrSbw0on2D1KQTMZ1FqTChCMjp5hTJwrRurS/dEh9j/lwwR9
 djRR8ma6RvsV/v+j43cuVZ4wBhc+Ul8z4WtLmA1oZPLR58+A7O+YCHCdEfGL1n9xog
 K/bhQgKH5q1QfmWE2fpVn1pdiXs20sng+csNGFdU=
Date: Wed, 25 Sep 2019 14:36:24 -0700
From: Keith Busch <kbusch@kernel.org>
To: James Smart <jsmart2021@gmail.com>
Subject: Re: [PATCH] nvme: Add ctrl attributes for queue_count and sqsize
Message-ID: <20190925213624.GA11469@C02WT3WMHTD6>
References: <20190924212208.3637-1-jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190924212208.3637-1-jsmart2021@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_143626_754110_8C79A449 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Sep 24, 2019 at 02:22:08PM -0700, James Smart wrote:
> Current controller interrogation requires a lot of guesswork
> on how many io queues were created and what the io sq size is.
> The numbers are dependent upon core/fabric defaults, connect
> arguments, and target responses.
> 
> Add sysfs attributes for queue_count and sqsize.
> 
> Signed-off-by: James Smart <jsmart2021@gmail.com>
> ---
>  drivers/nvme/host/core.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index e0e2dcbfd05e..b1c24af284ca 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3040,6 +3040,8 @@ static DEVICE_ATTR(field, S_IRUGO, field##_show, NULL);
>  
>  nvme_show_int_function(cntlid);
>  nvme_show_int_function(numa_node);
> +nvme_show_int_function(queue_count);
> +nvme_show_int_function(sqsize);

The sqsize is only valid for fabrics, so I think you need to update the
'is_visible' to suppress this attribute for pcie.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
