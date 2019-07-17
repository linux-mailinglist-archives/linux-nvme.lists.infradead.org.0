Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF8496BE6A
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 16:39:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkjx6T8QZFUgRkLi88+5sS8m3puvJ+JmDWB5XqMLwpk=; b=YGLYGfU2+M14CP
	NmGj/z3eTif/AflvaEo4ejA4E5BktAccGynFv/Fxydb/huatiXMmrP7WvHnNp46MKcQhSXfJ0SzqU
	eP2j25gVx3VJhHM+CjIqWyDZKtpbmou6LCDb0VttyxKBsJznOUzi5uLEMcVjNPWxwR7km9Fuo1wDT
	rRxEPRxPIpweenm1nVefr2d5djLaFbooeCFAi0zBdE5Onu9BvBwzpfcTG3D3LD8kyj/e1x1klb7E1
	yj1GExBafRQl02Qguy+7XpwRHvWV0j00U660lfGh+M5SS0x2nVdl02SneunXMS9bHGrG0nnGFw9G0
	LBNB1eK0hDtWzG8W4/7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnl5L-0007Xu-UK; Wed, 17 Jul 2019 14:39:11 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnl5G-0007XR-22
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 14:39:07 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 1234068AFE; Wed, 17 Jul 2019 16:39:00 +0200 (CEST)
Date: Wed, 17 Jul 2019 16:38:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH] nvme-multipath: sanitize nvme_update_ana_state()
Message-ID: <20190717143859.GA13872@lst.de>
References: <20190716071830.22672-1-hare@suse.de>
 <20190716093825.GC32562@lst.de>
 <aa83c6b8-5d72-2e11-2681-5bb2e67ba890@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aa83c6b8-5d72-2e11-2681-5bb2e67ba890@suse.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_073906_254374_5381B269 
X-CRM114-Status: UNSURE (   9.23  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 16, 2019 at 12:02:15PM +0200, Hannes Reinecke wrote:
> The underlying problem is the 'WARN_ON()', which actually can (and is)
> triggered when ANA change AENs are received during controller (re-) connect.
> At the same time it's quite pointless to update the ANA state for
> namespaces which are on their way out; we _still_ seeing odd behaviour
> during simultaneous rescan/reset, and this is just another safeguard.
> 
> But for now I'd be happy to drop the check for NS_REMOVING and just
> delete the WARN_ON().

Well, we should certainly skip the nvme_mpath_set_live as well for
a removing namespace.  But yes, I'd prefer to move the check there
and then remove the WARN_ON over the big hammer.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
