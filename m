Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116B69A421
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 02:03:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HthM5+Vl0nUe1WlE9o+pI3YRKwRpXdrcxCN+GOyTSk=; b=SocLa4HiJGYAfy
	VBcPUg8fY/SwJ2dJZzXudGhL2RFoGfp+13BHn7OIR4bvjQqXjU2Z8+fMFmlGjmMEQld8ANt+TJxUR
	sk0UCQ5mWfJu/MnFfRzTYS58Vf1/3t1BJdBoEDlR/uLMp3p1TLw7krszLgiq3EuJ3sw4E0B6xEuLM
	Tu16zEjzRARLOmaxxJdAfGdM5gBcj0pztQWBZY7gDsK9aoXQFcnLnLNPBIU37C7868AnBArvyWNCb
	6bgZio2Z3vVOSxkj5vM7+GFkXDPYvxj0anhfj6s3buBLRwDFonbxLmd51zXt+KOEehEupldg/XahA
	mQGaNreraVMarC8Tgm7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0x37-0005Al-9f; Fri, 23 Aug 2019 00:03:25 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0x2z-0005AS-9C
 for linux-nvme@lists.infradead.org; Fri, 23 Aug 2019 00:03:18 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B6A8368B02; Fri, 23 Aug 2019 02:03:13 +0200 (CEST)
Date: Fri, 23 Aug 2019 02:03:13 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v6 7/7] nvme: fix ns removal hang when failing to
 revalidate due to a transient error
Message-ID: <20190823000313.GB2386@lst.de>
References: <20190813064304.7344-1-sagi@grimberg.me>
 <20190813064304.7344-8-sagi@grimberg.me> <20190822004951.GQ10391@lst.de>
 <6e9734ac-7ad5-a7c2-e6b4-da64e1c3465c@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6e9734ac-7ad5-a7c2-e6b4-da64e1c3465c@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_170317_474707_5FCAC5CA 
X-CRM114-Status: UNSURE (   8.96  )
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

On Thu, Aug 22, 2019 at 10:38:42AM -0700, Sagi Grimberg wrote:
> We actually don't need to separate revalidate_disk, we can just
> propagate back the nvme status code, just have:

It could work, but I don't think leaking the positive nvme status to the
block layer is a good idea.  It will come back to haunt us, just like
the blk_status_t version.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
