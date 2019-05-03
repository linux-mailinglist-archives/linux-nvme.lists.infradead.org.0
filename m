Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F37E12D8B
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 14:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LwuYLrnKSbiyuYuCG2oCOlus37TlHWsPx37mt37r8Zo=; b=aXhtBzy4wl6T0b
	253WtrcKxvULFU0XgAO7s82r+J4maRQDbL3UgwCoSSf6MIVKv/hbOVUyiDA87/MNr/m0HGP/lWn/f
	YxuOA5cvTMyxrPFjheZdjEiLzrN1/LOzc4d7wVVNp2xy83yFLNxJEiIhIAo/PaYHcvqaF8Yz7Qx+U
	qVPh9MEeipubEVzquD7RjDq2iYCcmTnfaGRcdP46WXN75CKC2AzjCk0G5oCDXjm5HAQp/O7sZeX40
	vgaThg0QSg3QbwX78HR0w2K2ZTZbmVtSJskMe1Xu1dqCKJ2INSZFClKjw8QEF/2yvzaPCdZwTKLM/
	nU1vm3JYKGSQ9Xb50BcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXKm-0005Ld-EI; Fri, 03 May 2019 12:30:36 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXKi-0005LK-5H
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 12:30:33 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4346A68AFE; Fri,  3 May 2019 14:30:13 +0200 (CEST)
Date: Fri, 3 May 2019 14:30:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCHv2 2/2] nvme: validate cntlid during controller
 initialisation
Message-ID: <20190503123012.GA21807@lst.de>
References: <20190503122642.59317-1-hare@suse.de>
 <20190503122642.59317-3-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190503122642.59317-3-hare@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_053032_352129_37AAEC24 
X-CRM114-Status: UNSURE (   8.79  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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

On Fri, May 03, 2019 at 02:26:42PM +0200, Hannes Reinecke wrote:
> +static bool nvme_duplicate_cntlid(struct nvme_subsystem *subsys,
> +				  struct nvme_ctrl *ctrl)
> +{
> +	struct nvme_ctrl *tmp;
> +	bool ret = false;
> +
> +	mutex_lock(&subsys->lock);
> +	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
> +		if (tmp == ctrl)
> +			continue;
> +		if (tmp->cntlid == ctrl->cntlid) {
> +			ret = true;
> +			break;
> +		}
> +	}
> +	mutex_unlock(&subsys->lock);
> +	return ret;
> +}

We'll need to do the duplicate check under the same subsys->lock
critical section as adding the controller to the list, otherwise it
will be racy.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
