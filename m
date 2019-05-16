Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03F4F20F0F
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 21:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U/KzoQgK5QJ5t0cGlW3HzTsgTNUYDStPPsN4VsA6qo8=; b=DctpWv77DQl32/
	BUkhDzu2DOBUpHJA3tlF3iueOomr3dVO84KzAP4N8FXGh/3rnb+fUBwevxT+K7BCtg/uPtKN+YxSs
	G2gtWmkYe4zkouDUMyC2kN5sdV/HlsNGn7adzuqcFIu0Fscn11kvpyelckyYeJRa6W6sUkdnIR+94
	ZOb8FjTXo5h7hakszGt39S+v492mveGi9n7gZOiBgK72SAmnkn6UCnOGkAvo0GJxmpyhaXMC9y6J0
	Aj81t451zs6ubfXJQpSV1uE9k0i4a7b+Sdvd0z/tMpxQZJnSgkBDmMFpJzlm0Ci3eCqc/0s2qXgy1
	eEyQLAjgECIhqWQCZT+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRLmR-0003st-Jl; Thu, 16 May 2019 19:11:03 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRLmM-0003sX-Vv
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 19:11:00 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 12:10:58 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 16 May 2019 12:10:57 -0700
Date: Thu, 16 May 2019 13:05:42 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 4/4] nvme: release namespace SRCU protection before
 performing controller ioctls
Message-ID: <20190516190542.GD23669@localhost.localdomain>
References: <20190516185036.17394-1-hch@lst.de>
 <20190516185036.17394-4-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190516185036.17394-4-hch@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_121059_103648_B6A14A49 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kenneth.heitke@intel.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 08:50:36PM +0200, Christoph Hellwig wrote:
> +		if (cmd == NVME_IOCTL_ADMIN_CMD)
> +			ret = nvme_user_cmd(ctrl, NULL, argp);
> +		else
> +			ret = sed_ioctl(ctrl->opal_dev, cmd, argp);
> +
> +		nvme_get_ctrl(ctrl);

nvme_put_ctrl(ctrl);

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
