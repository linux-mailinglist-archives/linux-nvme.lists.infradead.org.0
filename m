Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A46EF174
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 00:55:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SgVXsRM8nyq8ICljSRkYNbIhlxVgL9zei0pShmBmFlY=; b=X1rno/JHPAUSMk
	hS44siLN75m10dJF6PKIFEc2mgQg5v0d50+UabwrblyB2uH20lmBpcXiq8amfQ/dSos3FW1XzC60Z
	idfUonDcQqMQHRIx/c3/7Nr1pQZa3NiSP3jNiwCJg2jAgZzTeFbgVtWFF9NRpaRHRles5WDe6byr7
	kFajhkl+odo0YLcBy1QLrvwCbSvlDpUJVVGaDf6/iFjzZ9Vtv+GM41wQ2/pUXiDCg6vFp5I7FZU6I
	Gtp11EBJP4KRtK+eZylgJ01+Ko5QRWZ7WzR83lGv6QYEFZiF45XZ1qvkGcDqLr6fKU1HMe2jqEDZ7
	FPOkllRjW1rpeDL7AK3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRmC5-00058D-ST; Mon, 04 Nov 2019 23:55:33 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRmC1-00057T-DN
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 23:55:31 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0D7A568BE1; Tue,  5 Nov 2019 00:55:26 +0100 (CET)
Date: Tue, 5 Nov 2019 00:55:25 +0100
From: Christoph Hellwig <hch@lst.de>
To: Anton Eidelman <anton@lightbitslabs.com>
Subject: Re: [PATCH] nvme-multipath: fix crash in nvme_mpath_clear_ctrl_paths
Message-ID: <20191104235525.GA26589@lst.de>
References: <20191102002755.25165-1-anton@lightbitslabs.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191102002755.25165-1-anton@lightbitslabs.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_155529_704149_37542918 
X-CRM114-Status: UNSURE (   6.17  )
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
Cc: keith.busch@intel.com, hare@suse.de, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Looks good,

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
