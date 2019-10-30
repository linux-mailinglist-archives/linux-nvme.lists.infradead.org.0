Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C5D6E9D89
	for <lists+linux-nvme@lfdr.de>; Wed, 30 Oct 2019 15:29:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7iu3zgUxz0WLdas2D+W1JBKLVfj2Pyk/+i6TIMtbmxQ=; b=Ey+7eE/BU/xGjj
	2nnYhgEz4jDlP09A/+EqyA7idw4qkFShrdulOvLQt1u0ji1yH0wvEii1DVgLAFVy/BFeqPkVqxDSs
	l04BLS41gJoeSmZmhV5zeKwVisUv+0d9WnGiYDPiERFBNRroYDzhlVB1dPgX4mJCBckJHjd+kjBwL
	Hc/qDzSwT0CQwH64Zg15yh2hptQk9QuNCemPx7MS8vUyOXupvgXafUK+wdMxv364I38HcYv7ehl9z
	6mwf4SkbiNx/QNSRbShKmnl1dlpLnSOHB3gst6ZJ+LNvxlA4uzRA2GuNISmywZg9UOlSYvlX4Hs77
	IV6mwR01trWlg6sTDRBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPoyM-0004tm-4I; Wed, 30 Oct 2019 14:29:18 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPoyF-0004tR-Oz
 for linux-nvme@lists.infradead.org; Wed, 30 Oct 2019 14:29:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 231FC68B05; Wed, 30 Oct 2019 15:29:09 +0100 (CET)
Date: Wed, 30 Oct 2019 15:29:08 +0100
From: Christoph Hellwig <hch@lst.de>
To: Prabhath Sajeepa <psajeepa@purestorage.com>
Subject: Re: [PATCH] nvme: Fix parsing of ANA log page
Message-ID: <20191030142908.GA14551@lst.de>
References: <1572303408-37913-1-git-send-email-psajeepa@purestorage.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1572303408-37913-1-git-send-email-psajeepa@purestorage.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_072911_965829_927F99F4 
X-CRM114-Status: UNSURE (   5.78  )
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
Cc: kbusch@kernel.org, axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The only thing this changes is that we now also execute the check
for the first entry parsed.  But the log size should never be so small
for this to matter.  Can you explain what problem your are trying to
solve?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
