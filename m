Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB2F98863
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BTlDCmDouGaCxYdDuk+YPOt5oCueuAjPztOYv3zi+EI=; b=UKXNp+ZIbBh6lL
	VEZUWsHY0VdMDlBrOpBgpTwipgWQNmldKb6n5U6nLFclZ48HGyZNyhhJk+g3IqQ5cWSM8YR1yb4df
	6a9Y4Zyk0Qc/P50hN1hKp2avjvHP7wFYqRdJVoFBKvtPjZUs3BBWi1ZP4fYsLnQDa/7iMViyR5iG0
	/O62+PyuWOK5Yrw4GHMiw4RYI7lXJ8Y3PlmFoIvnXr3Q0P9azeVWs/uJGW2dYt9CNtx/5Kr8oeDzN
	YjEwKEKB24W+IggdkM2ubMd+gKDVz3FuquGbTmHeQln4DK3VnDgKxu9fns025PUPOXLksDekS81GF
	yJBARN4Fu2iZ7pF9aj/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0akx-0004Rf-58; Thu, 22 Aug 2019 00:15:11 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0akp-0003ie-C3
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:15:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9FE9D68C7B; Thu, 22 Aug 2019 02:14:59 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:14:59 +0200
From: Christoph Hellwig <hch@lst.de>
To: Minwoo Im <minwoo.im.dev@gmail.com>
Subject: Re: [PATCH v2 2/3] nvme: move sqsize setting to the core
Message-ID: <20190822001459.GK9511@lst.de>
References: <20190723000654.6448-1-sagi@grimberg.me>
 <20190723000654.6448-3-sagi@grimberg.me>
 <20190723135842.GE7148@minwoo-desktop>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190723135842.GE7148@minwoo-desktop>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_171503_563999_51538A89 
X-CRM114-Status: UNSURE (   9.36  )
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 23, 2019 at 10:58:42PM +0900, Minwoo Im wrote:
> It seems like could be split into another commit, couldn't it?  It's
> because that PCIe host driver never set the sqsize in my experience.  If
> so, can we have it in another commit?
> 
> If I miss something here, please let me know :)

Agreed.  I'd rather see the sqsize setup consolidation in another
patch.  Otherwise this looks good to me.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
