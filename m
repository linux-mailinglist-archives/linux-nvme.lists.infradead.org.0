Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A11027F1B
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:07:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mukmhzm/s3jbcwFuF+w9yUTHAsrUj/8UTbB7oIyHsb0=; b=NsI73tqeg2U9jx
	vGuoHx1LPX0T8OwPRVCx/f6B7xFMqUulnw58/aZygbiNqEZRqY8zQhuEn729t4GBN7f+ugnaxR/8q
	BkdguSJhM4n3VE/2IffNSx5Y3g3HD6lAy+Zh4vM/WJd1SAuH3TToAuJftxYSjxRROD7GugmUl+SOG
	DqVqvP6LNlKaeVKvBSBDElht+8TrgoCBOpbOpp4uWMMmHcXkvYcDBes+9vbSfSAaJgQSZ2rnjqCRT
	LeirpPeS8ZwLDf51JfX3EXeoGPLnmr5zAuDEfkcpmja3m2Sj1Vps3pgDD6m3Wo5IVj4CsyrUyUbW2
	Dmrp5F5VQE54rYNqqQqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hToNj-0000a7-FN; Thu, 23 May 2019 14:07:43 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hToNd-0000ZY-Om
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:07:39 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 80A5968AFE; Thu, 23 May 2019 16:07:12 +0200 (CEST)
Date: Thu, 23 May 2019 16:07:12 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 2/2] nvme: reset request timeouts during fw activation
Message-ID: <20190523140712.GA19598@lst.de>
References: <20190522174812.5597-1-keith.busch@intel.com>
 <20190522174812.5597-3-keith.busch@intel.com>
 <20190523101953.GA18805@ming.t460p>
 <20190523133428.GC14049@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190523133428.GC14049@localhost.localdomain>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_070737_951353_F99AC198 
X-CRM114-Status: UNSURE (   7.66  )
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "linux-block@vger.kernel.org" <linux-block@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>, "Busch, Keith" <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 07:34:29AM -0600, Keith Busch wrote:
> Doh! Didn't hit that in testing, but point taken.
>  
> > Also reset still may come during activating FW, is that a problem?
> 
> IO timeout and user initiated resets should be avoided. A state machine
> addition may be useful here.

Yep.  It almost sounds like we'd want a PAUSED state where resets just
keep returning RESET_TIMER without any other action.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
