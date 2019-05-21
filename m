Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5322E24857
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 08:46:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=43t2EJVcRkyLHkGZHhxUbAGBy/0VvSqT6uW36UX72/4=; b=iQZBeJVdFvvpH7
	nzCBhqrZusOpc42SE24WZvH07gEKT741XLyk6ism0St+FG1DzKJeRsDvrh2mAFjMOcY6lGeOy7p30
	ZqZJ6sJhl8bEAQtKKHCoY3E6UU/j/FelCGJwwTYDTtxSVVtAOSkRxVkSvv8aIkdfX3iJl64QqrKB7
	tnoXfXCCCXimlXaGgAeADziIgw6vX22IOl7saqOCy53d4/pJGVeki6K4z2rhw4+X2P1ScjomITm43
	XgbH9T2eLrIvz0YCRV+PjqFL+e1bDLsOz4kkgw7CejIlgm+cEU7xgQSS52z5s5RkwhB5PuF8xkGmD
	6vwTRmGwCK9hAosa3/tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSyXn-00022d-Ng; Tue, 21 May 2019 06:46:39 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSyXf-0001r2-Dk
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 06:46:33 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id D138A68B05; Tue, 21 May 2019 08:46:07 +0200 (CEST)
Date: Tue, 21 May 2019 08:46:07 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 1/4] nvme: separate out nvme_ctrl_state_name()
Message-ID: <20190521064607.GB30402@lst.de>
References: <20190520063624.50338-1-hare@suse.de>
 <20190520063624.50338-2-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190520063624.50338-2-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_234631_850518_DCFA82C5 
X-CRM114-Status: UNSURE (   7.31  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +const char *nvme_ctrl_state_name(struct nvme_ctrl *ctrl)
> +{
> +	if ((unsigned)ctrl->state < ARRAY_SIZE(nvme_ctrl_state_names) &&

Can we please drop this odd cast, even if it was there in the old code?

Otherwise looks fine:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
