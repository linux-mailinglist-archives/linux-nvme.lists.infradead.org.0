Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FAD18F046
	for <lists+linux-nvme@lfdr.de>; Mon, 23 Mar 2020 08:32:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FcayZHe6w7LgDrR1WfwyOc5PfP41hXP5Rv2X34fv13M=; b=Aq3ZKVajelHkU7
	jC4AM1+R9aw/HjAe6b09cIwjuxm220ttovGBKqI2woVwJWm2Ort5bifgdhVsCrdN8vpwEW0QzUAph
	xIEDtbDKVWFYhc07xZHvacYhnBGUa5vt2nKs964Kjp/Kgqga+1g3nW9nfcWvj1Saobr+OUudn3qH4
	coJDWj+NImaqVMoJIAdajgWL0HVjZLlRTqbcxxNzVAVJkyZcv6ReTtLr3tqeHOjiY12rb/Ri4Rekm
	1hnSh9P5ReMdWnfxu9GyRLiKloZVAUOSar/uDr9v29gDDERK1T3hPS1o4nj75MLas3RVPiDHCq+GF
	Ych+VGTazn2VvpIHtTmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGHZ8-0002sX-GW; Mon, 23 Mar 2020 07:32:06 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGHZ4-0002sB-Lu
 for linux-nvme@lists.infradead.org; Mon, 23 Mar 2020 07:32:03 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5230268BEB; Mon, 23 Mar 2020 08:32:00 +0100 (CET)
Date: Mon, 23 Mar 2020 08:32:00 +0100
From: Christoph Hellwig <hch@lst.de>
To: Israel Rukshin <israelr@mellanox.com>
Subject: Re: [PATCH 3/6] nvme: Fix ctrl use-after-free during sysfs deletion
Message-ID: <20200323073200.GB30302@lst.de>
References: <1584899989-14623-1-git-send-email-israelr@mellanox.com>
 <1584899989-14623-4-git-send-email-israelr@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1584899989-14623-4-git-send-email-israelr@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_003202_867274_B34BF22E 
X-CRM114-Status: UNSURE (   8.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>,
 Sagi Grimberg <sagi@grimberg.me>, Linux-nvme <linux-nvme@lists.infradead.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -171,7 +171,6 @@ static void nvme_do_delete_ctrl(struct nvme_ctrl *ctrl)
>  	nvme_remove_namespaces(ctrl);
>  	ctrl->ops->delete_ctrl(ctrl);
>  	nvme_uninit_ctrl(ctrl);
> -	nvme_put_ctrl(ctrl);

Can you please split the change to call nvme_put_ctrl from
nvme_uninit_ctrl into a separate cleanup patch after this one?

The rest looks good to me.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
