Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDB7D164797
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 15:59:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+DC2Z1PkgPAH6dINes670X9YarwJmjejJcPGlfXdcA=; b=FIdjB3fe9pwChk
	CLmBX+gsjhyXF47KeLUm5/x3DX+hw6n6fBfYBqCdpm5BlHO+fkvpMt/n1iQribWlH8BpdekarMqNy
	T4wEbqWYYJtlOk04tzD2YwxORu+LQSiq+n78SbzkHdXbdUnK/1x66Jg4dhBKo4E2kPQPMytbq23Tg
	X0FEUL3cLMWAHUXSVxi5XdVBpuDPAuD8HdkpUj6qJbep22UwVkWQACa/qclMHJfYcPY/ge2ngELAE
	wPTsZ9JwwOL5sPQTYrEjkBFhLSccsVVkXLj36gQbbGkmVYwmFh8N++n0rYG3MEYyD2RSKOJakrkdQ
	dFHQbUSeBISUceZFdZGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QpA-0001tJ-Ne; Wed, 19 Feb 2020 14:59:40 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Qos-0001mi-TY
 for linux-nvme@lists.infradead.org; Wed, 19 Feb 2020 14:59:24 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0434E68C4E; Wed, 19 Feb 2020 15:59:21 +0100 (CET)
Date: Wed, 19 Feb 2020 15:59:20 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH 1/4] nvmet: use nvmet_feat_data_len consistently
Message-ID: <20200219145920.GB17748@lst.de>
References: <20200218214338.25088-1-chaitanya.kulkarni@wdc.com>
 <20200218214338.25088-2-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218214338.25088-2-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_065923_113779_1E87FF09 
X-CRM114-Status: UNSURE (   8.98  )
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
Cc: kbusch@kernel.org, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 01:43:35PM -0800, Chaitanya Kulkarni wrote:
> This is a preparation patch which makes admin-cmd.c to use newly added
> nvmet_feat_data_len() helper consistently in nvmet_execute_set_features
> and nvmet_execute_get_features when checking the data length.
> 
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
