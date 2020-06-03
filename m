Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 199611ED085
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jun 2020 15:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTUED0ltV/ePiTdMmSMieq13VbRqWtzEBXkM1fZhgAQ=; b=ZuBl+KXajHYHvf
	X05buaoSoy9ahIhu0lg5FD4DH01UA/TnclcK74kwUd16i/u5bngLf3Pb14k+XulC8uO5FDrdzgdCV
	/wZzo2Ns8BlViQf0REW3eGAG13XZvA8iojyW/AS1wdf4VbCj+/kMlRGtzQ/yJlMWzdNeK1weuziWt
	OXJri5hm3UrvXfx3lW9ADM3wt/9ciPCQdGavA7h95n50PWXDtw4bnrvyz9vNByRMUJ1b09lVuXYQO
	+WBWfiNDT6RaKHGyFHNsvioomE6ixt9OnwaTkVC+fJRRxiB2lEmKsneq5FS92H8O87QUqHnySdZdU
	n5H60xwjLrD5Sf8GzwRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgT8F-0008RL-ID; Wed, 03 Jun 2020 13:08:35 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgT8B-0008Qh-9g
 for linux-nvme@lists.infradead.org; Wed, 03 Jun 2020 13:08:32 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0B1DB68BEB; Wed,  3 Jun 2020 15:08:27 +0200 (CEST)
Date: Wed, 3 Jun 2020 15:08:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 0/5] NVMe cleanups for 5.8
Message-ID: <20200603130826.GB13511@lst.de>
References: <20200602131546.51903-1-maxg@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200602131546.51903-1-maxg@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200603_060831_479651_E544A683 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: sagi@grimberg.me, chaitanya.kulkarni@wdc.com, israelr@mellanox.com,
 james.smart@broadcom.com, linux-nvme@lists.infradead.org, oren@mellanox.com,
 kbusch@kernel.org, nitzanc@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 02, 2020 at 04:15:41PM +0300, Max Gurtovoy wrote:
> This series introduce some cleanups and code/logic duplication for host
> and target side. It introduces a new header file nvme-types.h that will
> be used by both host and target drivers. For now it will include mainly
> mapping structures from types to names, but in the future it can include
> more common logic between host/target drivers (as done for specific TCP
> and RDMA transports). The series continues with adding a flags member to
> nvmet_fabrics_ops structure and removes the need for adding dedicated
> member for each feature in this struct.

From a quick look this looks ok, but w're done with the 5.8 merge
window except for bug fixes.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
