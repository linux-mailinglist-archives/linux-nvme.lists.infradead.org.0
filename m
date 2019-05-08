Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D75D817B8F
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 16:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vSitVK3TBA6nXIakLxpI2JbpatMmhYJm5ECmSRdDvH0=; b=Zw/J3it5nzcCDD
	n+eTEEzlSJ1m1thW4cY3QEd+rlnPR32ldAra0roK81HHNApjWwZ3YGp0rqgFFMPKlOcZZqHblxQWG
	N9xMwSgCJQ+ixXw2T/4zZgWABbzU5A9LK8GYaRaWtp5Wbs5w9cdmzpIrcHhTjYrV9Ritvm+h4IwaR
	kyF/jXa8rFeKkKR49uPd8fCX1jKzzQaSOAIyaQrlW1fIs8HkP/oCwEqZDYq209rYZ0wWr5/CEQB7k
	OJBxogMRddL/IUSbTfHQqMMklJ8bQzy+fdH8SFVMDaiyK2/yBx7HPNxjY5ZX6tqiHSL+NFnhSKYQL
	PIRhgikck+D1i6MGu16w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hONdo-00068R-IK; Wed, 08 May 2019 14:33:52 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hONdk-00067x-9X
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 14:33:49 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 May 2019 07:33:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,446,1549958400"; d="scan'208";a="169653490"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 08 May 2019 07:33:46 -0700
Date: Wed, 8 May 2019 08:28:14 -0600
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH, RFC 2/2] nvme: validate cntlid during controller
 initialisation
Message-ID: <20190508142814.GB7113@localhost.localdomain>
References: <20190508075508.28552-1-hch@lst.de>
 <20190508075508.28552-2-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190508075508.28552-2-hch@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_073348_383331_6F69B211 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: hare@suse.de, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 08, 2019 at 09:55:08AM +0200, Christoph Hellwig wrote:
> +	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
> +		if (ctrl->state == NVME_CTRL_DELETING ||
> +		    ctrl->state == NVME_CTRL_DEAD)
> +			continue;
> +
> +		if (tmp->cntlid == ctrl->cntlid) {
> +			dev_err(ctrl->device,
> +				"Duplicate cntlid %u, rejecting\n",
> +				ctrl->cntlid);

Patch looks great, but let's make this print more informative by showing
tmp's device name too:

			dev_err(ctrl->device,
				"Duplicate cntlid %u with %s, rejecting\n",
				ctrl->cntlid, dev_name(tmp->device));

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
